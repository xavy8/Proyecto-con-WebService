<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroLibro.aspx.cs" Inherits="ClientesWcf.RegistroLibro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <title></title>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <style>
        input
        {
            text-transform: uppercase;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <center>
            <div class="form-group"><br />
                <div>                    
                    <div style="width:900px;height:60px;text-align:center;background-color:cornflowerblue;color:white;font-size:40px">Bienvenido</div>
                    <div style="width:900px;height:60px;text-align:center;background-color:gray;color:white;font-size:40px">Registro</div>
                </div><br />
                <div class="panel panel-primary" style="width:900px;>
                    <div class="panel-body"> 
                        <div id ="PanelRegistro" runat="server">                
                            <table style="text-align:right" class="table table-borderless">
                                <tr>
                                    <td><asp:Label ID="lblTitulo" runat="server" Text="Título"></asp:Label></td>
                                    <td><asp:TextBox ID="txtTitulo" runat="server" class="form-control form-control-sm" placeholder="Título" ></asp:TextBox></td>
                                    <td><asp:Label ID="lblTituloOriginal" runat="server" Text="Título Original"></asp:Label></td>
                                    <td><asp:TextBox ID="txtTituloOriginal" runat="server" class="form-control form-control-sm" placeholder="Título Original"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="lblAutor" runat="server" Text="Autor"></asp:Label></td>
                                    <td><asp:TextBox ID="txtAutor" runat="server" class="form-control form-control-sm" placeholder="Autor"></asp:TextBox></td>
                                    <td><asp:Label ID="lblGenero" runat="server" Text="Genero"></asp:Label></td>
                                    <td><asp:TextBox ID="txtGenero" runat="server" class="form-control form-control-sm" placeholder="Genero"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="lblEditorial" runat="server" Text="Editorial"></asp:Label></td>
                                    <td><asp:TextBox ID="txtEditorial" runat="server" class="form-control form-control-sm" placeholder="Editorial"></asp:TextBox></td>
                                    <td><asp:Label ID="lblAnoPublicacion" runat="server" Text="Año de publicación"></asp:Label></td>
                                    <td><asp:TextBox ID="txtAnoPublicacion" runat="server" class="form-control form-control-sm" placeholder="Año de publicación"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-secondary" OnClick="btnRegistrar_Click" /> </td>
                                    <td colspan="1"><asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-secondary" OnClick="btnCancelar_Click" /> </td>
                                </tr>
                            </table>                                                        
                            <asp:Label ID="lblMensaje" runat="server" Visible="false" ></asp:Label>                         
                        </div>
                    </div>
                </div>
                <div style="text-align:left;padding:50px">
                    <a href="Clientes.aspx" style="color:cornflowerblue;font-size:x-large">&laquo Regresar</a>
                </div>                
            </div>
        </center>
    </form>
</body>
</html>
