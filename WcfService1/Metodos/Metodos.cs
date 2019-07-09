using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WcfService1.Metodos
{
    public class Metodos
    {
        public List<DataContract.dc_ObtCtes> ObtCtes(SqlConnection con, int id, string cliente)
        {
            List<DataContract.dc_ObtCtes> ctes = new List<DataContract.dc_ObtCtes>();
            DataContract.dc_ObtCtes fillCtes;

            SqlCommand cmd = new SqlCommand("Sp_Ctes @Id, @Cliente", con);
            cmd.CommandTimeout = 9999;
            cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;
            cmd.Parameters.Add("@Cliente", SqlDbType.VarChar).Value = cliente;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                fillCtes = new DataContract.dc_ObtCtes();

                fillCtes.Cliente = row["Cliente"].ToString();
                fillCtes.Nombre = row["Nombre"].ToString();
                fillCtes.Delegacion = row["Delegacion"].ToString();

                ctes.Add(fillCtes);
            }

            return ctes;
        }

        public bool Registro(SqlConnection con, string Opcion, string Titulo, string TituloOriginal, string Autor, string Genero, string Editorial, int AnioPublicacion)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Sp_Lib @Opcion, @Titulo, @TituloOriginal, @Autor, @Genero, @Editorial, @AnioPublicacion", con);
                cmd.CommandTimeout = 9999;
                cmd.Parameters.Add("@Opcion", SqlDbType.VarChar).Value = Opcion;
                cmd.Parameters.Add("@Titulo", SqlDbType.VarChar).Value = Titulo;
                cmd.Parameters.Add("@TituloOriginal", SqlDbType.VarChar).Value = TituloOriginal;
                cmd.Parameters.Add("@Autor", SqlDbType.VarChar).Value = Autor;
                cmd.Parameters.Add("@Genero", SqlDbType.VarChar).Value = Genero;
                cmd.Parameters.Add("@Editorial", SqlDbType.VarChar).Value = Editorial;
                cmd.Parameters.Add("@AnioPublicacion", SqlDbType.Int).Value = AnioPublicacion;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                
                return true;
            }
            catch
            {
                return false;
            }
        }

        public List<DataContract.dc_VerInfo> VerInfo(SqlConnection con, string opcion, string titulo)
        {
            List<DataContract.dc_VerInfo> info = new List<DataContract.dc_VerInfo>();
            DataContract.dc_VerInfo fillInfo;

            SqlCommand cmd = new SqlCommand("Sp_Lib @Opcion, @Titulo, '', '', '', '', 0", con);
            cmd.CommandTimeout = 9999;
            cmd.Parameters.Add("@Opcion", SqlDbType.VarChar).Value = opcion;
            cmd.Parameters.Add("@Titulo", SqlDbType.VarChar).Value = titulo;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                fillInfo = new DataContract.dc_VerInfo();

                fillInfo.Titulo = row["titulo"].ToString();
                fillInfo.TituloOriginal = row["tituloOriginal"].ToString();
                fillInfo.Autor = row["autor"].ToString();
                fillInfo.Genero = row["genero"].ToString();
                fillInfo.Editorial = row["editorial"].ToString();
                fillInfo.AnioPublicacion = Convert.ToInt32(row["anioPublicacion"].ToString());

                info.Add(fillInfo);
            }

            return info;
        }
    }
}