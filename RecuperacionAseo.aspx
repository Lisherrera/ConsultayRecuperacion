<%@ Page Title="Recuperacion Aseo" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecuperacionAseo.aspx.vb" Inherits="Consulta.RecuperacionAseo" %>

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
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        EmptyDataText="Sin Documentos Digitales!" PageSize="5" Width="100%" CellPadding="4"
                        CssClass="table" ForeColor="#333333" GridLines="None"
                        OnPageIndexChanging="GridView1_PageIndexChanging">

                        <Columns>
                            <asp:BoundField DataField="Folio" HeaderText="Folio" />
                            <asp:BoundField DataField="RUT" HeaderText="Rut" />
                            <asp:BoundField DataField="NOMBRES" HeaderText="Nombres" />
                            <asp:BoundField DataField="FechaPago" HeaderText="Fecha Pago" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="TotalPago" HeaderText="Total" DataFormatString="{0:c0}" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server"
                                        NavigateUrl='<%# "http://pagos.munivalpo.cl/aseo_ext/comprobante-pago.aspx?folio=" & Eval("Folio") %>'
                                        Target="_blank">Ver Documento</asp:HyperLink>
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


                    <br>
                </div>
            </div>
        </div>
    </main>

</asp:Content>