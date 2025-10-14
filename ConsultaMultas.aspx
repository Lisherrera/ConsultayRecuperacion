<%@ Language="VB" AutoEventWireup="false" CodeFile="ConsultaMultas.aspx.vb" Inherits="Consulta.ConsultaMultas" MasterPageFile="~/Site.Master" Title="Consulta Multas JPL" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="pago-main" data-aos="fade-up">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <h4>Recuperación de Multas JPL pagadas por internet</h4>
                    <p>Si usted pagó su documento de manera online, puede recuperarlo las veces que quiera y sin costo.</p>
                    <br />

                    <asp:Panel ID="pnl_pagos" runat="server">
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" CssClass="mb-3"></asp:Label>
                                <asp:GridView ID="grd_pcv" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                    CellPadding="4" CssClass="table table-striped" EmptyDataText="Sin Documentos Digitales!"
                                    ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
                                    
                                    <Columns>
                                        <asp:BoundField DataField="folio" HeaderText="Folio" />
                                        <asp:BoundField DataField="rol" HeaderText="Patente" />
                                        <asp:BoundField DataField="rut" HeaderText="RUT" />
                                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                                        <asp:BoundField DataField="fecha_pago" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha" />
                                        <asp:TemplateField HeaderText="Documento">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Bind("url") %>' Target="_blank">Ver Documento</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
