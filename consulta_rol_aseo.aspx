<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Consulta._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="pago-main" data-aos="fade-up">        
        <div class="container">
            <div class="row justify-content-center ">
                <div class="col-md-12">
                    <div class="col-md-12">
                        <h4>Recuperación de documentos pagados por internet</h4>
                        <p>Si usted pagó su documento de manera online, puede recuperarlo las veces que quiera y sin costo.</p>
                    </div>
                    <br>
                    
                    <div>
                        <table class="table table-striped" cellspacing="0" cellpadding="4"  id="ctl00_MainContent_GridView2" style="color:#333333;border-collapse:collapse;">
                            <tr style="color:rgb(43, 43, 145);font-weight:bold;">
                                <th scope="col">Rol</th>
                                <th scope="col">Folio</th>
                                <th scope="col">Fecha Pago</th>
                                <th scope="col">Total Pagado</th>
                                <th scope="col">&nbsp;</th>
                            </tr>
                            <tr style="color:#333333;background-color:#F7F6F3;">
                                <td>0016600109</td>
                                <td>8677411873837</td>
                                <td>12-09-2020 14:08:37</td>
                                <td>$ 72.016</td>
                                <td><a href="https://www.yopagoenvalpo.cl/aseo/Aseo/comprobante_pago?folio=8677411873837" target="_blank">Ver Comprobante</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>

</asp:Content>
