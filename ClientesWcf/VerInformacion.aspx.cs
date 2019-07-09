using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientesWcf
{
    public partial class VerInformacion : System.Web.UI.Page
    {
        WS.Service1Client ws = new WS.Service1Client();
        WS.dc_VerInfo[] Info;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string Titulo;

            Titulo = txtBuscar.Text.ToUpper();

            if(!string.IsNullOrEmpty(Titulo))
            {                               
                Info = ws.VerInfo("Info", Titulo);

                gvInfo.DataSource = Info;
                gvInfo.DataBind();

                lblMensaje.Visible = false;                
                txtBuscar.Focus();
            }
            else
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "No existe el título";
                txtBuscar.Focus();

                gvInfo.DataSource = null;
                gvInfo.DataBind();
            }
        }
    }
}