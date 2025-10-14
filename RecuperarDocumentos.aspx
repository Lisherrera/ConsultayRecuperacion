<%@ Page Title="RecuperarDocumentos" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecuperarDocumentos.aspx.vb" Inherits="Consulta.RecuperarDocumentos" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="pago-main" data-aos="fade-up">        
        <div class="container">
            <div class="row justify-content-center ">
                <div class="col-md-12">
                    <h4>Recuperación de documentos pagados por internet</h4>
                    <p>Si usted pagó su documento de manera online, puede recuperarlo las veces que quiera y sin costo.</p>
                </div>

               <!-- Recuperar por Rut -->
                <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-start h-100">
                        <h5 class="mb-3">Recuperar documento por Rut</h5>
                        
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">Ingrese su RUT para recuperar los documentos que ha pagado en línea:</p>

                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-check-square"></i> Patente Comercial</li>
                            <li><i class="fa fa-check-square"></i> Permiso de Circulación </li>
                            <li><i class="fa fa-check-square"></i> Aseo Extraordinario </li>
                            <li><i class="fa fa-check-square"></i> Convenios de Pago </li>
                            <li><i class="fa fa-check-square"></i> Otros Pagos </li>
                        </ul>


                        <label for="txtRut" class="form-label fs-6">Ingrese RUT:</label>
                        <asp:TextBox ID="txtRut" runat="server" CssClass="form-control form-control-sm mb-3"
                                     MaxLength="12" placeholder="11111111-1"></asp:TextBox>
                        <asp:Label ID="lblMensajeRut" runat="server" ForeColor="Red"></asp:Label>
                        <asp:Button ID="btnRecuperarRut" runat="server" Text="Recuperar Documento"
                                    CssClass="btn btn-primary" OnClick="btnRecuperarRut_Click" />
                    </div>
                </div>


                <!-- Recuperar por patente -->
                <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-start h-100">
                        <h5 class="mb-3">Recuperar documento por Placa Patente</h5>
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                            Al ingresar la placa patente de su vehículo, usted podrá recuperar:
                        </p>

                        <div class="mb-5">
                            <ul class="list-unstyled">
                                <li><i class="fa fa-check-square"></i> Multas JPL</li>
                            </ul>
                        </div>

                        <div class="mt-3 text-start">
                            <br />
                            <br />
                            <br />
                            <label for="txtPatente" class="form-label fs-6">
                                Ingrese patente:
                            </label>
                            <asp:TextBox ID="txtPatente" runat="server" CssClass="form-control form-control-sm mb-3"
                                         MaxLength="6" placeholder="AA1234 o AABB12"></asp:TextBox>
                        </div>
                        <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" CssClass="mb-3"></asp:Label>
                        <asp:Button ID="btnRecuperarPatente" runat="server" Text="Recuperar Documento"
                                    CssClass="btn btn-primary" OnClick="btnRecuperarPatente_Click" />
                    </div>
                </div>

                <!-- Recuperar por ROL -->
                <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-start h-100">
                        <h5 class="mb-3">Recuperar documento por Rol</h5>
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                            Al ingresar el rol de su propiedad, usted podrá recuperar:
                        </p>

                        <ul class="list-unstyled">
                            <li><i class="fa fa-check-square"></i> Aseo Domiciliario</li>
                        </ul>
                            <br />
                            <br />
                            <br />
                            <br />


                        <div class="mt-3 text-start">
                            <label for="txtRol1" class="form-label fs-6">Ingrese Rol:</label>
                            <div class="d-flex align-items-center">
                                <asp:TextBox ID="txtRol1" runat="server" CssClass="form-control form-control-sm me-2"
                                             MaxLength="5" placeholder="1234"></asp:TextBox>
                                <span class="me-2">-</span>
                                <asp:TextBox ID="txtRol2" runat="server" CssClass="form-control form-control-sm"
                                             MaxLength="5" placeholder="5678"></asp:TextBox>
                            </div>
                        </div>
                        <asp:Label ID="lblMensajeRol" runat="server" ForeColor="Red"></asp:Label>
                        <asp:Button ID="btnRecuperarRol" runat="server" Text="Recuperar Documento"
                                    CssClass="btn btn-primary mt-3" OnClick="btnRecuperarRol_Click" />
                    </div>
                </div>


            </div>
        </div>

        
    </main>


</asp:Content>
