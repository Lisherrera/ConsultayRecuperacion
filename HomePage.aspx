<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.vb" Inherits="Consulta._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <main class="pago-main" data-aos="fade-up">        
        <div class="container">
            <div class="row justify-content-center ">
                <div class="col-md-12">
                    <h4>Consultas y recuperacion de documentos en línea</h4>
                    <p>Consulte por deudas, recupere documentos digitales y vea sus horas agendadas.</p>
                </div>

                <!-- Consultar edudas -->
                <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-center h-100">
                        <i class="fa fa-dollar" style="font-size: 40px;"></i>
           <!-- ver tipografia             -->
                        <h5 class="mb-3">Consultar <br> deudas</h5>
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                            En esta sección usted podrá consultar si tienes deudas pendientes con nuestro municipio.
                        </p>

                        <a href="https://localhost:44333/ConsultaDeuda.aspx" class="btn btn-primary">Consultar Deudas</a>
                    </div>
                </div>

                <!-- Recuperar documentos -->
                <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-center h-100">
                        <i class="fa fa-file" style="font-size: 40px;"></i>
                        <h5 class="mb-3">Recuperar <br>documento</h5>
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                            Aquí usted podrá recuperar una copia de su documento, siempre y cuanto este haya sido pagado por internet.
                        </p>
                    
                        <a href="https://localhost:44333/RecuperarDocumentos.aspx" class="btn btn-primary">Recuperar Documento</a>
                    </div>
                </div>

                <!-- Consultar Horas -->
                <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                    <div class="w-100 mx-auto border rounded shadow-sm p-3 text-center h-100">
                        <i class="fa fa-clock" style="font-size: 40px;"></i>
                        <h5 class="mb-3">Consultar horas <br> en línea</h5>
                        <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                            Aquí podrá consultar las horas que ha reservado para la realización de trámites en nuestro municipio
                        </p>

                        <a href="https://localhost:44333/ConsultaHora.aspx" class="btn btn-primary">Consultar Horas</a>
                    </div>
                </div>
            </div>
        </div>

  
    </main>


</asp:Content>
