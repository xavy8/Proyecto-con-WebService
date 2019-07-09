<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="ClientesWcf.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title></title>
    <style>
        #txtBuscar
        {
            text-transform:uppercase;
        }
    </style>
</head>
<body>
    <h3 style="color:cornflowerblue; text-align:center">Datos Clientes</h3><hr />
    <form id="form1" runat="server" autocomplete="off" >
        <center>
            <div>
                <div>
                    <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar Clientes" OnClick="btnBuscar_Click"/>
                    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar Tabla" OnClick="btnLimpiar_Click"/>
                    <a href="RegistroLibro.aspx">Registrar</a>
                    <a href="VerInformacion.aspx">Información</a>
                    <a href="Login.aspx">Login</a>
                    <br /><hr />
                    <asp:Table ID="Table1" runat="server">
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell Text="ID" BorderWidth="2px" ></asp:TableHeaderCell>
                            <asp:TableHeaderCell Text="Título" BorderWidth="2px" Wrap="false" ></asp:TableHeaderCell>
                            <asp:TableHeaderCell Text="Delegación" BorderWidth="2px" Wrap="false" ></asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                    </asp:Table>                
                </div>            
            </div>        
        </center>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
