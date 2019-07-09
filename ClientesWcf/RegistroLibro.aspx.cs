using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientesWcf
{
    public partial class RegistroLibro : System.Web.UI.Page
    {
        WS.Service1Client ws = new WS.Service1Client();        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistroLibro.aspx");
        }

        protected void Limpiar()
        {
            txtTitulo.Text = "";
            txtTituloOriginal.Text = "";
            txtGenero.Text = "";
            txtEditorial.Text = "";
            txtAutor.Text = "";
            txtAnoPublicacion.Text = "";
            txtTitulo.Focus();
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string Titulo, TituloOriginal, Autor, Genero, Editorial;
            int AnioPublicacion;

            Titulo = txtTitulo.Text.ToUpper();
            TituloOriginal = txtTituloOriginal.Text.ToUpper();
            Autor = txtAutor.Text.ToUpper();
            Genero = txtGenero.Text.ToUpper();
            Editorial = txtEditorial.Text.ToUpper();
            AnioPublicacion = txtAnoPublicacion.Text == "" ? 0 : Convert.ToInt32(txtAnoPublicacion.Text);
            
            if(Titulo == "" || TituloOriginal == "" || Autor == "" || Genero == "" || Editorial == "" || AnioPublicacion == 0)
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Hay campos vacíos.";
            }
            else
            {
                ws.Registro("Insertar", Titulo, TituloOriginal, Autor, Genero, Editorial, AnioPublicacion);
                lblMensaje.Visible = false;
                Response.Write("<script>alert('Registro exitoso.');</script>");
                Limpiar();
            }            
        }
    }
}