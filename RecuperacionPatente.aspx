<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecuperacionPatente.aspx.vb" Inherits="Consulta._Default" %>

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
                        <h5>Patente Municipal TransBank</h5>
                    </div>
                     <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" EmptyDataText="Sin Documentos Digitales!" PageSize="5" Width="100%" CellPadding="4" CssClass="table" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="ano" HeaderText="Año" SortExpression="ano" />
                            <asp:BoundField DataField="idext" HeaderText="Folio" SortExpression="idext" />
                            <asp:BoundField DataField="tbk_fec_hora_autorizacion" HeaderText="Fecha pago" SortExpression="tbk_fec_hora_autorizacion" />
                            <asp:BoundField DataField="rol" HeaderText="Rol" SortExpression="rol" />
                            <asp:BoundField DataField="semestre" HeaderText="Semestre" SortExpression="semestre" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("url", "{0}") %>' Target="_blank" Text="Ver Documento"></asp:HyperLink>
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
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ValparaisoConnectionString %>" SelectCommand="SELECT rol, ano, semestre, url, tbk_fec_hora_autorizacion, idext FROM vista_patcom_tbk WHERE (rut = @rut)">
                        <SelectParameters>
                            <asp:SessionParameter Name="rut" SessionField="rut" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br>
                    <div class="col-md-12">
                        <h5>Patente Municipal TGR</h5>
                    </div>
                    <asp:GridView ID="grd_patcom" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EmptyDataText="Sin Documentos Digitales!" PageSize="5" Width="100%" CellPadding="4" CssClass="table" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="ano" HeaderText="Año" SortExpression="ano" />
                            <asp:BoundField DataField="folio" HeaderText="Folio" SortExpression="folio" />
                            <asp:BoundField DataField="fecha_pago" HeaderText="Fecha pago" SortExpression="fecha_pago" />
                            <asp:BoundField DataField="rol" HeaderText="Rol" SortExpression="rol" />
                            <asp:BoundField DataField="semestre" HeaderText="Semestre" SortExpression="semestre" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("url", "{0}") %>' Target="_blank">Ver Documento</asp:HyperLink>
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ValparaisoConnectionString %>" SelectCommand="SELECT folio, fecha_pago, rol, ano, semestre, url FROM vista_pat_com_jc WHERE (rut = @rut) AND (fecha_pago &gt; CONVERT (DATETIME, '2018-12-31 00:00:00', 102)) ORDER BY fecha_pago DESC">
                        <SelectParameters>
                            <asp:SessionParameter Name="rut" SessionField="rut" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </main>


</asp:Content>
