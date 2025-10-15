<%@ Page Title="Consulta Rol Aseo" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ConsultaAseoRol.aspx.vb" Inherits="Consulta.ConsultaAseoRol" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="pago-main" data-aos="fade-up">        
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <h4>Recuperación de pagos de Aseo por internet</h4>
                    <asp:Label ID="lblRol" runat="server" ForeColor="Red" CssClass="mb-3"></asp:Label>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                  CellPadding="4" ForeColor="#333333" GridLines="None"
                                  EmptyDataText="¡Sin pagos anteriores por internet!" PageSize="5" CssClass="table">


                        <Columns>
                            <asp:BoundField DataField="rol" HeaderText="Rol" />
                            <asp:BoundField DataField="idext" HeaderText="Folio" />
                            <asp:BoundField DataField="tbk_fec_hora_autorizacion" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha Pago" />
                            <asp:BoundField DataField="tbk_total_pago" DataFormatString="{0:c0}" HeaderText="Total Pagado" />
                            <asp:HyperLinkField DataNavigateUrlFields="rol" DataNavigateUrlFormatString="https://www.yopagoenvalpo.cl/aseo/Aseo/comprobante_pago_tgr?folio={0}" Target="_blank" Text="Ver Comprobante" />
                        </Columns>

                        <EditRowStyle BackColor="#999999" /> 
                        <FooterStyle BackColor="#666666" Font-Bold="True" ForeColor="White" /> 
                        <HeaderStyle BackColor="#666666" Font-Bold="false" ForeColor="white" /> 
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" /> 
                        <SelectedRowStyle BackColor="#D3D3D3" Font-Bold="True" ForeColor="#333333" /> 
                        <SortedAscendingCellStyle BackColor="#D3D3D3" /> 
                        <SortedAscendingHeaderStyle BackColor="#506C8C" /> 
                        <SortedDescendingCellStyle BackColor="#D3D3D3" /> 
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                    </asp:GridView>

                </div>
            </div>
        </div>
    </main>
</asp:Content>
