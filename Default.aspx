<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Consulta._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <main class="pago-main" data-aos="fade-up">        
        <div class="container">
            <div class="row justify-content-center ">
                <div class="col-md-12">
                    <h4>Consultas y recuperacion de documentos en línea</h4>
                    <p>Consulte por deudas, recupere documentos digitales y vea sus horas agendadas.</p>
                </div>

                <!-- Recuperar por rut -->
                <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-center h-100">
                        <i class="fa fa-dollar" style="font-size: 40px;"></i>
           <!-- ver tipografia             -->
                        <h5 class="mb-3">Consultar <br> deudas</h5>
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                            En esta sección usted podrá consultar si tienes deudas pendientes con nuestro municipio.
                        </p>

                        <a href="#" 
                        class="btn btn-primary">Consultar deuda</a>
                    </div>
                </div>

                <!-- Recuperar por Placa patente -->
                <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-center h-100">
                        <i class="fa fa-file" style="font-size: 40px;"></i>
                        <h5 class="mb-3">Recuperar <br>documento</h5>
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                            Aquí usted podrá recuperar una copia de su documento, siempre y cuanto este haya sido pagado por internet.
                        </p>
                    
                        <a href="#" 
                        class="btn btn-primary">Recuperar Documento</a>
                    </div>
                </div>

                <!-- Recuperar por ROL -->
                <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-center h-100">
                        <i class="fa fa-clock" style="font-size: 40px;"></i>
                        <h5 class="mb-3">Consultar horas <br> en línea</h5>
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                            Aquí podrá consultar las horas que ha reservado para la realización de trámites en nuestro municipio
                        </p>

                        <a href="#" 
                        class="btn btn-primary">Consultar Horas</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container my-5">
            <div class="row align-items-center justify-content-center  text-md-start">
                <!-- Información de contacto -->
                <div class="col-md-6 mb-3 mb-md-0">
                    <div class="contact">
                        <h3>Ilustre Municipalidad de Valparaíso</h3>
                        <div>Av. Argentina #864</div>
                        <div><b>+56 32</b> 293 9000</div>
                        <div><b>+56 32</b> 293 9100</div>
                        <div>info@munivalpo.cl</div>
                    </div>
                </div>

                <!-- Logo -->
                <div class="col-md-6 d-none d-md-flex justify-content-center justify-content-md-end">
                    <img src="assets/img/logo_transición2024_colores.png" 
                        alt="logo" 
                        class="img-fluid" 
                        style="max-width: 120px; height: auto;">
                </div>
            </div>
        </div>
  
    </main>


</asp:Content>
