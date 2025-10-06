<%@ Page Title="Consulta Rol Aseo" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaAseoRol.aspx.vb" Inherits="Consulta.ConsultaAseoRol" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="pago-main" data-aos="fade-up">        
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <h4>Recuperación de documentos pagados por internet</h4>
                    <p>Si usted pagó su documento de manera online, puede recuperarlo las veces que quiera y sin costo.</p>
                    <br />

                    <!-- Mensaje -->
                    <asp:Label ID="lblRol" runat="server" 
                               Text="" 
                               Font-Bold="True"
                               ForeColor="Red"
                               CssClass="mb-3 d-block">
                    </asp:Label>

                    <br /><br />

                    <!-- Tabla -->
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover"
                        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None"
                        EmptyDataText="¡Sin pagos anteriores por internet!">

                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="rol" HeaderText="Rol" SortExpression="rol" />
                            <asp:BoundField DataField="folio" HeaderText="Folio" SortExpression="folio" />
                            <asp:BoundField DataField="fecha_pago" HeaderText="Fecha Pago" SortExpression="fecha_pago" />
                            <asp:BoundField DataField="Expr1" DataFormatString="{0:c0}" HeaderText="Total Pagado" SortExpression="Expr1" />
                            <asp:HyperLinkField DataNavigateUrlFields="folio"
                                DataNavigateUrlFormatString="https://www.yopagoenvalpo.cl/aseo/Aseo/comprobante_pago_tgr?folio={0}"
                                Target="_blank" Text="Ver Comprobante" />
                        </Columns>

                        <HeaderStyle BackColor="#8CC63E" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    </asp:GridView>

                    <!-- Fuente de datos -->
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:aseo %>"
                        SelectCommand="SELECT DISTINCT folio, fecha_pago, CAST(totalpago AS INT) AS Expr1, rol 
                                       FROM vista_aseo_tes 
                                       WHERE (rol = @rol) 
                                       ORDER BY fecha_pago DESC">
                        <SelectParameters>
                            <asp:SessionParameter Name="rol" SessionField="rolPropiedad" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </div>
            </div>
        </div>
    </main>
</asp:Content>

