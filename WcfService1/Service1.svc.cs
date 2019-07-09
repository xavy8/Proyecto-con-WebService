using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WcfService1
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
    // NOTE: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Service1.svc o Service1.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class Service1 : IService1
    {
        private System.Data.SqlClient.SqlConnection sqlConect;
        public Metodos.Metodos metodos = null;

        private Metodos.Metodos Conect()
        {
            try
            {
                bool estatus = false;
                Conexion.Conexion cnn = new Conexion.Conexion();

                if (this.sqlConect == null || this.sqlConect.State == System.Data.ConnectionState.Closed)
                    this.sqlConect = cnn.ObtenerConexion();

                estatus = cnn.EstatusConexion();

                if (estatus)
                    metodos = new Metodos.Metodos();

                return metodos;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public List<DataContract.dc_ObtCtes> ObtCtes(int id, string cliente)
        {
            try
            {
                /*bool estatus = false;
                Conexion.Conexion cnn = new Conexion.Conexion();

                if (this.sqlConect == null || this.sqlConect.State == System.Data.ConnectionState.Closed)
                    this.sqlConect = cnn.ObtenerConexion();

                estatus = cnn.EstatusConexion();

                if (estatus)
                    metodos = new Metodos.Metodos();*/
                Conect();
                return metodos.ObtCtes(sqlConect, id, cliente);
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public bool Registro(string Opcion, string Titulo, string TituloOriginal, string Autor, string Genero, string Editorial, int AnioPublicacion)
        {
            try
            {
                /*bool estatus = false;
                Conexion.Conexion cnn = new Conexion.Conexion();

                if (this.sqlConect == null || this.sqlConect.State == System.Data.ConnectionState.Closed)
                    this.sqlConect = cnn.ObtenerConexion();

                estatus = cnn.EstatusConexion();

                if (estatus)
                    metodos = new Metodos.Metodos();*/
                Conect();
                return metodos.Registro(sqlConect, Opcion, Titulo, TituloOriginal, Autor, Genero, Editorial, AnioPublicacion);
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public List<DataContract.dc_VerInfo> VerInfo(string opcion, string titulo)
        {
            try
            {
                /*bool estatus = false;
                Conexion.Conexion cnn = new Conexion.Conexion();

                if (this.sqlConect == null || this.sqlConect.State == System.Data.ConnectionState.Closed)
                    this.sqlConect = cnn.ObtenerConexion();

                estatus = cnn.EstatusConexion();

                if (estatus)
                    metodos = new Metodos.Metodos();*/

                Conect();
                
                return metodos.VerInfo(sqlConect, opcion, titulo);
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}
