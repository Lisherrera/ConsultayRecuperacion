<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaHora.aspx.vb" Inherits="Consulta._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="pago-main" data-aos="fade-up">        
        <div class="container">
            <div class="row justify-content-center ">
                <div class="col-md-12">
                    <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-start h-100">
                        <h5 class="mb-3">Consulta de horas en línea</h5>
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                            Si usted agendó una hora en línea para realizar un trámite en nuestro municipio, acá podrá obtener información.
                        </p>


                        <div class="mt-3 text-start">
                            <label for="rut" class="form-label fs-6" 
                                style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                                Ingrese su rut:
                            </label>
                            <input type="text" id="rut" class="form-control form-control-sm mb-3" maxlength="12">
                            <span id="ctl00_MainContent_ctl00" style="color: red; visibility: hidden;">Rut no válido</span>
                        </div>

                        <a href="#" 
                        class="btn btn-primary"> Consultar</a>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </main>

</asp:Content>