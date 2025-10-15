<%@ Page Title="Recuperacion Otros" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecuperacionOtros.aspx.vb" Inherits="Consulta.RecuperacionOtros" %>

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
                    <div class="col-md-12">
                        <h5>Otros Pagos</h5>
                    </div>
                    <asp:GridView ID="gvOtrosPagos" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
                        EmptyDataText="Sin Documentos Digitales!" PageSize="5" Width="100%" CellPadding="4" CssClass="table" ForeColor="#333333" GridLines="None">
                        
                        <Columns>
                            <asp:BoundField DataField="AnoProceso" HeaderText="Año" />
                            <asp:BoundField DataField="Folio" HeaderText="Folio" />
                            <asp:BoundField DataField="RUT" HeaderText="Rut" />
                            <asp:BoundField DataField="NumeroArriendo" HeaderText="N° Arriendo" />
                            <asp:BoundField DataField="FechaPago" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha" />
                            <asp:BoundField DataField="TotalPago" DataFormatString="{0:c0}" HeaderText="Total" />

                            <asp:HyperLinkField 
                                DataTextField="Folio" 
                                Text="Ver Documento"
                                DataNavigateUrlFields="Folio"
                                DataNavigateUrlFormatString="https://www.yopagoenvalpo.cl/provisorias/comprobante-pago.aspx?folio={0}"
                                Target="_blank" />
                        </Columns>

                        <EditRowStyle BackColor="#999999" /> 
                        <FooterStyle BackColor="#666666" Font-Bold="True" ForeColor="White" /> 
                        <HeaderStyle BackColor="#666666" Font-Bold="false" ForeColor="white" /> 
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" /> 
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" /> 
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" /> 
                        <SortedAscendingCellStyle BackColor="#E9E7E2" /> 
                        <SortedAscendingHeaderStyle BackColor="#506C8C" /> 
                        <SortedDescendingCellStyle BackColor="#FFFDF8" /> 
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                    </asp:GridView>
                    <br>
                </div>
            </div>
        </div>
    </main>


</asp:Content>