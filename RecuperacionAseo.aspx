<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecuperacionAseo.aspx.vb" Inherits="Consulta._Default" %>

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
                        <h5>Aseo Extraordinario</h5>
                    </div>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" EmptyDataText="Sin Documentos Digitales!" PageSize="5" Width="100%" CellPadding="4" CssClass="table" ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource4" DataKeyNames="NumeroArriendo,RUT">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="folio" HeaderText="Folio" SortExpression="folio" />
                            <asp:BoundField DataField="RUT" HeaderText="Rut" ReadOnly="True" SortExpression="RUT" />
                            <asp:BoundField DataField="NOMBRES" HeaderText="Nombres" SortExpression="NOMBRES" />
                            <asp:BoundField DataField="fecha_pago" DataFormatString="{0:d}" HeaderText="Fec.Pago" SortExpression="fecha_pago" />
                            <asp:BoundField DataField="totalpago" DataFormatString="{0:c0}" HeaderText="Total" SortExpression="totalpago" />
                            <asp:HyperLinkField DataNavigateUrlFields="folio" DataNavigateUrlFormatString="http://pagos.munivalpo.cl/aseo_ext/comprobante-pago.aspx?folio={0}" Text="Ver Documento" Target="_blank" />
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ValparaisoConnectionString %>" SelectCommand="SELECT DISTINCT folio, totalpago, fecha_pago, NumeroArriendo, RUT, NOMBRES FROM vista_pago_aseo_ext WHERE (RUT = @rut) ORDER BY folio DESC">
                        <SelectParameters>
                            <asp:SessionParameter Name="rut" SessionField="rut" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br>
                </div>
            </div>
        </div>
    </main>

</asp:Content>