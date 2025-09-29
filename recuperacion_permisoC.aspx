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
                    <div class="col-md-12">
                        <h5>Permiso de Circulación TransBank</h5>
                    </div>
                     <asp:GridView ID="grd_pcv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Sin Documentos Digitales!" PageSize="5" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="table">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="ano" HeaderText="Año" SortExpression="ano" />
                            <asp:BoundField DataField="folio" HeaderText="Folio" SortExpression="folio" />
                            <asp:BoundField DataField="patente" HeaderText="Patente" SortExpression="patente" />
                            <asp:BoundField DataField="tbk_fec_hora_autorizacion" HeaderText="Fecha pago" SortExpression="tbk_fec_hora_autorizacion" />
                            <asp:BoundField DataField="Tipo_pago" HeaderText="Tipo Pago" ReadOnly="True" SortExpression="Tipo_pago" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("url", "{0}") %>' Target="_blank" Text='<%# Eval("url", "{0}") %>'></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ValparaisoConnectionString %>" SelectCommand="SELECT ano, folio, patente, tbk_fec_hora_autorizacion, CASE tipo_pago WHEN 1 THEN 'Pago total' WHEN 2 THEN 'Pago en Cuota' END AS Tipo_pago, rut, url FROM Vista_pcv_transbank WHERE (tbk_fec_hora_autorizacion &gt; CONVERT (DATETIME, '2018-01-01 00:00:00', 102)) AND (rut = @rut) ORDER BY tbk_fec_hora_autorizacion DESC">
                        <SelectParameters>
                            <asp:SessionParameter Name="rut" SessionField="rut" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br>
                    <div class="col-md-12">
                        <h5>Permiso de Circulación TGR</h5>
                    </div>
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" EmptyDataText="Sin Documentos Digitales!" PageSize="5" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="table">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="ano" HeaderText="Año" SortExpression="ano" />
                            <asp:BoundField DataField="folio" HeaderText="Folio" SortExpression="folio" />
                            <asp:BoundField DataField="patente" HeaderText="Patente" SortExpression="patente" />
                            <asp:BoundField DataField="fecha_pago" HeaderText="Fecha pago" SortExpression="fecha_pago" />
                            <asp:BoundField DataField="Tipo_pago" HeaderText="Tipo Pago" ReadOnly="True" SortExpression="Tipo_pago" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("url", "{0}") %>' Target="_blank" Text='Ver Documento'></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ValparaisoConnectionString %>" SelectCommand="SELECT ano, folio, patente, fecha_pago, CASE tipo_pago WHEN 1 THEN 'Pago total' WHEN 2 THEN 'Pago en Cuota' END AS Tipo_pago, url FROM vista_pcv_jc WHERE (rut = @rut) AND (tipo_pago = 1 OR tipo_pago = 2) AND (fecha_pago &gt; CONVERT (DATETIME, '2018-01-01 00:00:00', 102)) ORDER BY fecha_pago DESC">
                        <SelectParameters>
                            <asp:SessionParameter Name="rut" SessionField="rut" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </div>
            </div>
        </div>
  
    </main>

</asp:Content>
