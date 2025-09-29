<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Consulta._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="pago-main" data-aos="fade-up">        
        <div class="container">
            <div class="row justify-content-center ">
                <div class="col-md-12">
                    <h4>Recuperación de documentos pagados por internet</h4>
                    <p>Si usted pagó su documento de manera online, puede recuperarlo las veces que quiera y sin costo.</p>
                </div>

                <!-- Recuperar por rut -->
                <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-start h-100">
                        <h5 class="mb-3">Recuperar documento por Rut</h5>
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                            Digitando su rut usted podrá recuperar los siguientes documentos:
                        </p>

                        <ul class="list-unstyled">
                            <li><i class="fa fa-check-square"></i> Patente Comercial</li>
                            <li><i class="fa fa-check-square"></i> Permiso de circulación</li>
                            <li><i class="fa fa-check-square"></i> Aseo extraordinario</li>
                            <li><i class="fa fa-check-square"></i> Convenios de pago</li>
                            <li><i class="fa fa-check-square"></i> Otros pagos</li>
                        </ul>

                        <div class="mt-3 text-start">
                            <label for="rut" class="form-label fs-6" 
                                style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                                Ingrese su rut:
                            </label>
                            <input type="text" id="rut" class="form-control form-control-sm mb-3" maxlength="12">
                            <span id="ctl00_MainContent_ctl00" style="color: red; visibility: hidden;">Rut no válido</span>
                        </div>

                        <a href="#" 
                        class="btn btn-primary">Recuperar Documento</a>
                    </div>
                </div>

                <!-- Recuperar por Placa patente -->
                <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-start h-100">
                        <h5 class="mb-3">Recuperar documento por Placa Patente</h5>
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                            Al ingresar la placa patente de su vehíclo, usted podrá recuperar:
                        </p>

                        <div class="mb-5">
                            <ul class="list-unstyled">
                                <li><i class="fa fa-check-square"></i> Multas JPL</li>
                                <br>
                                <br>
                                <br>
                            </ul>
                        </div>
                        
                        <div class="mt-3 text-start">
                            <label for="rut" class="form-label fs-6" 
                                style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                                Ingrese patente:
                            </label>
                            <input type="text" id="rut" placeholder="AA1234 o AABB12" class="form-control form-control-sm mb-3" maxlength="6" >
                            <br>
                        </div>

                        <a href="#" 
                        class="btn btn-primary">Recuperar Documento</a>
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

                        <div class="mt-3 text-start">
                            <label for="rut" class="form-label fs-6" 
                                style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                                Ingrese Rol:
                            </label>
                            <input type="text" id="rol"  placeholder="1234" class="form-control form-control-sm mb-3" maxlength="5" >
                            <p>-</p>
                            <input type="text" id="rol" placeholder="5678" class="form-control form-control-sm mb-3" maxlength="5">
                            <br>
                        </div>

                        <a href="#" 
                        class="btn btn-primary">Recuperar Documento</a>
                    </div>
                </div>
            </div>
        </div>

        
    </main>


</asp:Content>
