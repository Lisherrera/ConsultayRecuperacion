<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Consulta._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="pago-main" data-aos="fade-up">        
        <div class="container">
            <div class="row justify-content-center ">
                <div class="col-md-12">
                    <div class="col-md-12">
                        <h4>Recuperación de Multas JPL pagados por internet</h4>
                        <p>Si usted pagó su documento de manera online, puede recuperarlo las veces que quiera y sin costo.</p>
                    </div>
                    <br>
                    
                    <div>
                        <table class="table table-striped" cellspacing="0" cellpadding="4"  id="ctl00_MainContent_GridView2" style="color:#333333;border-collapse:collapse;">
                            <tr style="color:rgb(43, 43, 145);font-weight:bold;">
                                <th scope="col">Folio</th>
                                <th scope="col">Patente</th>
                                <th scope="col">Rut</th>
                                <th scope="col">Nombres</th>
                                <th scope="col">Fecha </th>
                                <th scope="col">&nbsp;</th>
                            </tr>
                            <tr style="color:#333333;background-color:#F7F6F3;">
                                <td>11146876</td>
                                <td>jsjs-69	</td>
                                <td>013.333.259-6</td>
                                <td>HUREL ESTAY MARIA LUISA	</td>
                                <td>26-08-2022</td>
                                <td>
                                    <a id="ctl00_MainContent_grd_pcv_ctl02_HyperLink1" href="http://www.munivalpo.cl/validadoc/default.aspx?id_agile=2993494&amp;code_agile=32703" target="_blank">Ver Documento</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </main>

</asp:Content>
