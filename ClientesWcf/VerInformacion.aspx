<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerInformacion.aspx.cs" Inherits="ClientesWcf.VerInformacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <title></title>
    <style>
        input
        {
            text-transform:uppercase;
        }

        .modalDialog 
{
    position: fixed;
    font-family: Arial, Helvetica, sans-serif;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0,0,0,0.8);
    z-index: 99999;
    opacity: 0;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    pointer-events: none;
}

.modalDialog:target 
{
    opacity: 1;
    pointer-events: auto;
}

.modalDialog > div 
{
    width: 550px;
    height: auto;
    position: relative;
    margin: 10% auto;
    padding: 5px 20px 13px 20px;
    border-radius: 10px;
    background: white;
    background: white;
    background: white;
    background: white;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
}

.Cerrar 
{
    background: #606061;
    color: #FFFFFF;
    line-height: 25px;
    position: absolute;
    right: -12px;
    text-align: center;
    top: -10px;
    width: 24px;
    text-decoration: none;
    font-weight: bold;
    -webkit-border-radius: 12px;
    -moz-border-radius: 12px;
    border-radius: 12px;
    -moz-box-shadow: 1px 1px 3px #000;
    -webkit-box-shadow: 1px 1px 3px #000;
    box-shadow: 1px 1px 3px #000;
}

.Cerrar:hover 
{
    background: #00d9ff;
}

/*.auto-style1 {
    width: 100%;
    margin-top: 0px;
}*/


    </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <center>
            <div>
                <div><br /> 
                    <div style="text-align:left;margin-left:50px">
                        <a href="Clientes.aspx" style="color:cornflowerblue;font-size:medium">&laquo Regresar</a>
                    </div>
                    <div>
                        <div style="width:900px;height:60px;text-align:center;background-color:gray;color:white;font-size:40px">Información</div>                    
                    </div><br />                    
                    <div style="display:inline-block">
                        <asp:TextBox ID="txtBuscar" runat="server" placeholder="Buscar" CssClass="form-control" Width="200px" ></asp:TextBox>
                    </div>
                    <div style="display:inline-block">
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" CssClass="btn btn-info" />
                        <asp:Button ID="Button1" runat="server" Text="Modal" CssClass="btn btn-info" />
                    </div><br /><br />
                    <asp:Label ID="lblMensaje" runat="server" Visible="false" ForeColor="cornflowerBlue" Font-Size="large"></asp:Label>
                    <asp:GridView ID="gvInfo" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" class="table table-sm" Width="900px" ForeColor="Black" GridLines="Horizontal" >
                        <Columns>
                            <asp:BoundField DataField="titulo" HeaderText="Título" />
                            <asp:BoundField DataField="tituloOriginal" HeaderText="Título Original" />
                            <asp:BoundField DataField="autor" HeaderText="Autor" />
                            <asp:BoundField DataField="genero" HeaderText="Genero" />
                            <asp:BoundField DataField="editorial" HeaderText="Editorial" />
                            <asp:BoundField DataField="anioPublicacion" HeaderText="Año de publicación" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </div>
            </div>
        </center>

        <div id="ModalB" class="modalDialog">
            <div style="text-align:center">                   
                <h3 style="text-align:center; color:cornflowerblue">Si retira el check no se podrá modificar de nuevo.<br />¿Desea continuar?</h3><br /><br />
                <asp:button cssclass="btn btn-info" id="btnsi" runat="server" text="si"  />
                <asp:Button cssclass="btn btn-info" id="btnno2" runat="server" text="no"  />                    
            </div>
        </div>


    </form>
    <script>
        $(document).ready(function () {

            $('#Button1').click(function () {
                location.href = "#ModalB";
                //alert('Si');
            });

        });
    </script>
</body>
</html>
