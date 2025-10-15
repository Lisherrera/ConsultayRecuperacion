<%@ Page Title="Mostrar Documentos" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MostrarDocumentos.aspx.vb" Inherits="Consulta.MostrarDocumentos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" data-aos="fade-up">
        <div class="container">
            <div class="row">
                <div>
                    <h3>Consultas y recuperación de documentos<span class="bold"> en línea</span></h3>
                    <p>
                        Si usted pagó su documento de manera online, puede recuperarlo las veces que quiera y sin costo.
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="col-auto">
                    <b>Nombres:</b>
                    <asp:Label ID="lblNombres" runat="server" Text=""></asp:Label>
                    <br>
                    <b>Rut:</b>
                    <asp:Label ID="lblRut" runat="server" Text=""></asp:Label>
                    <br>
                </div>
                <div class="col-md-10" style="padding-top: 25px;">
                    <span style="color: red; display: inline-flex; align-items: center; gap: 0.3em;">
                        <svg class="svg-inline--fa fa-exclamation-triangle" 
                            style="width: 1em; height: 1em; vertical-align: middle;" 
                            aria-hidden="true" data-prefix="fas" data-icon="exclamation-triangle" 
                            role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                            <path fill="currentColor" d="M569.517 440.013C587.975 472.007 564.806 512 527.94 512H48.054c-36.937 0-59.999-40.055-41.577-71.987L246.423 23.985c18.467-32.009 64.72-31.951 83.154 0l239.94 416.028zM288 354c-25.405 0-46 20.595-46 46s20.595 46 46 46 46-20.595 46-46-20.595-46-46-46zm-43.673-165.346l7.418 136c.347 6.364 5.609 11.346 11.982 11.346h48.546c6.373 0 11.635-4.982 11.982-11.346l7.418-136c.375-6.874-5.098-12.654-11.982-12.654h-63.383c-6.884 0-12.356 5.78-11.981 12.654z"></path>
                        </svg>
                        Los documentos a recuperar son sólo aquellos que han sido pagados previamente por internet.
                    </span>

                    <br>
                    <br>
                </div>
            </div>
            <br>
            <br>
        </div>
        <div id="ctl00_MainContent_pnl_pagos">
            <div class="row g-4 justify-content-center">
                <!-- Permiso de Circulación -->
                <div class="col-lg-3 col-md-6 col-sm-10 col-12 mb-3 d-flex ">
                    <div class="card h-100 border border-gray w-100 mx-auto">
                        <h5 class="card-header text-center"> Permiso de Circulación</h5>
                        <div class="card-body">
                            <p class="card-text" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium;">Aquí puede recuperar sus permisos de circulación pagados en línea.</p>
                            <p class="fw-bold" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bold;">2 documentos</p>
                            <a href="https://localhost:44333/RecuperacionCirculacion.aspx" class="btn btn-primary">Mostrar Documentos</a>
                        </div>
                    </div>
                </div>

                <!-- Patente Municipal -->
                <div class="col-lg-3 col-md-6 col-sm-10 col-12 mb-3 d-flex ">
                    <div class="card h-100 border border-gray w-100 mx-auto">
                        <h5 class="card-header text-center"> Patente <br> Municipal</h5>
                        <div class="card-body">
                            <p class="card-text" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium;">Aquí puede recuperar sus patentes municipales pagadas en línea.</p>
                            <p class="fw-bold" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bold;">2 documentos</p>
                            <a href="https://localhost:44333/RecuperacionPatente.aspx" class="btn btn-primary ">Mostrar Documentos</a>
                        </div>
                    </div>
                </div>

                <!-- Aseo Extraordinario -->
                <div class="col-lg-3 col-md-6 col-sm-10 col-12 mb-3 d-flex ">
                    <div class="card h-100 border border-gray w-100 mx-auto">
                        <h5 class="card-header text-center"> Aseo Extraordinario</h5>
                        <div class="card-body">
                            <p class="card-text" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium;">Aquí puede recuperar sus pagos de aseo extraordinario en línea.</p>
                            <p class="fw-bold" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bold;">2 documentos</p>
                            <a href="https://localhost:44333/RecuperacionAseo.aspx" class="btn btn-primary">Mostrar Documentos</a>
                        </div>
                    </div>
                </div>

                <!-- Convenios de Pago -->
                <div class="col-lg-3 col-md-6 col-sm-10 col-12 mb-3 d-flex ">
                    <div class="card h-100 border border-gray w-100 mx-auto">
                        <h5 class="card-header text-center">Convenios <br>de Pago</h5>
                        <div class="card-body">
                            <p class="card-text" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium;">Aquí puede recuperar sus convenios de pago realizados en línea.</p>
                            <p class="fw-bold" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bold;">2 documentos</p>
                            <a href="https://localhost:44333/RecuperacionConvenio.aspx" class="btn btn-primary">Mostrar Documentos</a>
                        </div>
                    </div>
                </div>

                <!-- Otros Pagos -->
                <div class="col-lg-3 col-md-6 col-sm-10 col-12 mb-3 d-flex ">
                    <div class="card h-100 border border-gray w-100 mx-auto">
                        <h5 class="card-header text-center"> Otros <br> Pagos</h5>
                        <div class="card-body">
                            <p class="card-text" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium;">Aquí puede recuperar otros pagos realizados en línea.</p>
                            <p class="fw-bold" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bold;">2 documentos</p>
                            <a href="https://localhost:44333/RecuperacionOtros.aspx" class="btn btn-primary">Mostrar Documentos</a>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>

</asp:Content>
