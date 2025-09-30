<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaMultas.aspx.vb" Inherits="Consulta._Default" %>

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
                    
                     <asp:Panel ID="pnl_pagos" runat="server">
            <div class="row">
                <div class="col-md-12">
                    <asp:GridView ID="grd_pcv" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="table" DataSourceID="SqlDataSource1" EmptyDataText="Sin Documentos Digitales!" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="folio" HeaderText="Folio" SortExpression="folio" />
                            <asp:BoundField DataField="patente" HeaderText="Patente" SortExpression="patente" />
                            <asp:BoundField DataField="rut" HeaderText="Rut" SortExpression="rut" />
                            <asp:BoundField DataField="nombre" HeaderText="Nombres" SortExpression="nombre" />
                            <asp:BoundField DataField="fecha_pago" DataFormatString="{0:d}" HeaderText="Fecha" SortExpression="fecha_pago" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("url") %>' Target="_blank">Ver Documento</asp:HyperLink>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ValparaisoConnectionString %>" SelectCommand="SELECT folio, rut, url, nombre, rol AS patente, fecha_pago FROM vista_pago_jpl WHERE (rol = @patente) AND (fecha_pago &gt; CONVERT (DATETIME, '2015-12-31 23:59:59', 102))">
                        <SelectParameters>
                            <asp:SessionParameter Name="patente" SessionField="patente" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </div>
            </div>
            <div class="row">
            </div>

        </asp:Panel>
                </div>
            </div>
        </div>

    </main>

</asp:Content>
