<%@ Page Title="" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Consulta._Default" %>

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
                    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" EmptyDataText="Sin pagos anteriores por internet!">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="rol" HeaderText="Rol" SortExpression="rol" />
                        <asp:BoundField DataField="folio" HeaderText="Folio" SortExpression="folio" />
                        <asp:BoundField DataField="fecha_pago" HeaderText="Fecha_Pago" SortExpression="fecha_pago" />
                        <asp:BoundField DataField="Expr1" DataFormatString="{0:c0}" HeaderText="Total Pagado" SortExpression="Expr1" />
                        <asp:HyperLinkField DataNavigateUrlFields="folio" DataNavigateUrlFormatString="https://www.yopagoenvalpo.cl/aseo/Aseo/comprobante_pago_tgr?folio={0}" Target="_blank" Text="Ver Comprobante" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#8CC63E" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aseo %>" SelectCommand="SELECT DISTINCT folio, fecha_pago, CAST(totalpago AS INT) AS Expr1, rol FROM vista_aseo_tes WHERE (rol = @rol) ORDER BY fecha_pago DESC">
                    <SelectParameters>
                        <asp:SessionParameter Name="rol" SessionField="rol" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </main>

</asp:Content>
