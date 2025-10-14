
Partial Class RecuperarDocumentos
    Inherits System.Web.UI.Page

    ' Botón para recuperar documentos por patente
    Protected Sub btnRecuperarPatente_Click(sender As Object, e As EventArgs) Handles btnRecuperarPatente.Click
        Dim patente As String = txtPatente.Text.Trim().ToUpper()

        If String.IsNullOrEmpty(patente) Then
            lblMensaje.Text = "Debe ingresar una patente."
            Return
        End If

        ' Guardar patente en sesión y redirigir a la página de consulta
        Session("patente") = patente
        Response.Redirect("ConsultaMultas.aspx")
    End Sub

    ' Botón para recuperar documentos por RUT
    Protected Sub btnRecuperarRut_Click(sender As Object, e As EventArgs) Handles btnRecuperarRut.Click
        Dim rut As String = txtRut.Text.Trim()

        If String.IsNullOrEmpty(rut) Then
            lblMensajeRut.Text = "Debe ingresar un RUT."
            Return
        End If

        ' Guardar RUT en sesión y redirigir a la página de consulta de documentos por RUT
        Session("rut") = rut
        Response.Redirect("MostrarDocumentos.aspx")
    End Sub

    ' Botón para recuperar documentos por Rol
    Protected Sub btnRecuperarRol_Click(sender As Object, e As EventArgs) Handles btnRecuperarRol.Click
        Dim rol1 As String = txtRol1.Text.Trim()
        Dim rol2 As String = txtRol2.Text.Trim()

        If String.IsNullOrEmpty(rol1) OrElse String.IsNullOrEmpty(rol2) Then
            lblMensajeRol.Text = "Debe ingresar número de Rol completo."
            Return
        End If

        ' Concatenamos los dos cuadros para formar el rol completo de 10 dígitos
        Dim rolCompleto As String = rol1 & rol2
        Session("rolPropiedad") = rolCompleto

        Response.Redirect("ConsultaAseoRol.aspx")
    End Sub


End Class


