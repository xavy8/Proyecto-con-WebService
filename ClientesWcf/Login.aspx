<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ClientesWcf.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <div style="height:300px;width:200px" class="form-control">
                                   
                        <h2 style="color:#629f62;">MODAL</h2>
                        <br />
                    <div>
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario" Font-Bold="true" ForeColor="#4fb765"></asp:Label><br />
                        <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control form-control-sm" PlaceHolder="Usuario"></asp:TextBox>
                    </div><br />
                    <div>
                        <asp:Label ID="lblPass" runat="server" Text="Contraseña" Font-Bold="true" ForeColor="#4fb765"></asp:Label><br />
                        <asp:TextBox ID="txtPass" runat="server" CssClass="form-control form-control-sm" TextMode="Password" PlaceHolder="Contraseña"></asp:TextBox>
                    </div>                            
                        <br />
                        <%--<asp:Button ID="btnCancelar" runat="server" Text="Salir" CssClass="btn btn-success" />--%>
                        <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="btn btn-success" />                                        
                </div>
            </center>
        </div>
    </form>
</body>
</html>
