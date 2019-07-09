using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WcfService1.Conexion
{
    public class Conexion
    {
        private SqlConnection conexion;

        private void Conectar()
        {
            string cadenaConexion = "server=PROSERVER;database=IntelisisTmp;user=luperez;password=morusa02";

            conexion = new SqlConnection(cadenaConexion);
        }

        private void AbrirConexion()
        {
            conexion.Open();
        }

        public SqlConnection ObtenerConexion()
        {
            Conectar();
            AbrirConexion();
            return conexion;
        }

        public void Cerrar()
        {
            conexion.Close();
        }

        public bool EstatusConexion()
        {
            if (this.conexion == null || this.conexion.State == System.Data.ConnectionState.Closed)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}