<%@ Page Language="VB" AutoEventWireup="true" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="pago-main" data-aos="fade-up">        
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="col-lg-3 col-md-12 col-sm-12 col-12 mb-3 mt-3 d-flex">
                        <div class="w-100 mx-auto border rounded shadow-sm p-3 text-start h-100">

                            <h5 class="mb-3">Consultar deudas pendientes</h5>
                            <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 16px">
                                Digitando su RUT usted podrá consultar sus deudas pendientes.
                            </p>

                            <div class="mt-3 text-start">
                                <label for="rut" class="form-label fs-6" 
                                       style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                                    Ingrese su RUT:
                                </label>
                                <input type="text" id="rut" class="form-control form-control-sm mb-3" maxlength="12">
                                <span id="mensajeRut" style="color: red; display: none;">Debe ingresar un RUT.</span>
                            </div>

                            <a href="#" class="btn btn-primary w-100" onclick="validarRut()">Consultar</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script type="text/javascript">
        function validarRut() {
            var rut = document.getElementById('rut').value.trim();
            var mensaje = document.getElementById('mensajeRut');

            if (rut === "") {
                mensaje.style.display = 'block';
                return false;
            } else {
                mensaje.style.display = 'none';
                window.location.href = "MostrarDocumentos.aspx";
            }
        }
    </script>


</asp:Content>
