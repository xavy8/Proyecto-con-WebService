using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientesWcf
{
    public partial class Clientes : System.Web.UI.Page
    {
        WS.Service1Client ws = new WS.Service1Client();
        WS.dc_ObtCtes[] C;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void llenarTabla()
        {
            string buscar;
            buscar = txtBuscar.Text;
            C = ws.ObtCtes(0, buscar);

            TableRow row;
            TableCell column;

            if (C != null)
            {
                for (int x = 0; x < C.Length; x++)
                {
                    row = new TableRow();
                    column = new TableCell();
                    column.Text = C[x].Cliente;
                    column.BorderWidth = 2;
                    row.Cells.Add(column);

                    column = new TableCell();
                    column.Text = C[x].Nombre;
                    column.BorderWidth = 2;
                    row.Cells.Add(column);

                    column = new TableCell();
                    column.Text = C[x].Delegacion;
                    row.Cells.Add(column);
                    column.BorderWidth = 2;

                    //Table1.Style.Add("background-color", "#006666");
                    Table1.Rows.Add(row);
                }
            }
            else
            {
                Response.Write("<script>alert('No hay información a mostrar');</script>");
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            llenarTabla();
            txtBuscar.Text = "";
            txtBuscar.Focus();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Table1.Rows.Clear();
            txtBuscar.Text = "";
        }
    }
}