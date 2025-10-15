<%@ Page Title="Recuperacion Circulacion" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="RecuperacionCirculacion.aspx.vb" Inherits="Consulta.RecuperacionCirculacion" %>


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
                     <asp:GridView ID="grd_pcv" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        EmptyDataText="Sin Documentos Digitales!" PageSize="5" Width="100%" CellPadding="4"
                        CssClass="table" ForeColor="#333333" GridLines="None"
                        OnPageIndexChanging="grd_pcv_PageIndexChanging">


                        <Columns>
                            <asp:BoundField DataField="Ano" HeaderText="Año" />
                            <asp:BoundField DataField="Folio" HeaderText="Folio" />
                            <asp:BoundField DataField="Patente" HeaderText="Patente" />
                            <asp:BoundField DataField="FechaPago" HeaderText="Fecha pago" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="TipoPago" HeaderText="Tipo Pago" />
                            <asp:HyperLinkField DataNavigateUrlFields="Url" DataNavigateUrlFormatString="{0}" Text="Ver Documento" Target="_blank" />
                        </Columns>

                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#666666" Font-Bold="false" ForeColor="white" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:GridView>

                    <br>
                    <div class="col-md-12">
                        <h5>Permiso de Circulación TGR</h5>
                    </div>
                    <asp:GridView ID="grd_tgr" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        EmptyDataText="Sin Documentos Digitales!" PageSize="5" Width="100%" CellPadding="4"
                        CssClass="table" ForeColor="#333333" GridLines="None"
                        OnPageIndexChanging="grd_tgr_PageIndexChanging">


                        <Columns>
                            <asp:BoundField DataField="Ano" HeaderText="Año" />
                            <asp:BoundField DataField="Folio" HeaderText="Folio" />
                            <asp:BoundField DataField="Patente" HeaderText="Patente" />
                            <asp:BoundField DataField="FechaPago" HeaderText="Fecha pago" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="TipoPago" HeaderText="Tipo Pago" />
                            <asp:HyperLinkField DataNavigateUrlFields="Url" DataNavigateUrlFormatString="{0}" Text="Ver Documento" Target="_blank" />
                        </Columns>

                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#666666" Font-Bold="false" ForeColor="white" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:GridView>

                    </div>
            </div>
        </div>
  
    </main>

</asp:Content>
