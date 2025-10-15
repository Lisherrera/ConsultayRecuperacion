
Partial Class RecuperarDocumentos
    Inherits System.Web.UI.Page


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


    Protected Sub btnRecuperarRut_Click(sender As Object, e As EventArgs) Handles btnRecuperarRut.Click
        Dim rut As String = txtRut.Text.Trim()

        If String.IsNullOrEmpty(rut) Then
            lblMensajeRut.Text = "Debe ingresar un RUT."
            Return
        End If

        Dim rutLimpio As String = rut.Replace(".", "").Replace("-", "").Trim()

        rutLimpio = rutLimpio.TrimStart("0"c)


        Dim cuerpo As String = rutLimpio.Substring(0, rutLimpio.Length - 1)
        Dim dv As String = rutLimpio.Substring(rutLimpio.Length - 1).ToUpper()


        Dim rutFormateado As String = cuerpo.PadLeft(9, "0"c) & "-" & dv


        ' Guardar RUT en sesión y redirigir a la página de consulta de documentos por RUT
        Session("rut") = rutFormateado
        Response.Redirect("MostrarDocumentos.aspx")
    End Sub


    Protected Sub btnRecuperarRol_Click(sender As Object, e As EventArgs) Handles btnRecuperarRol.Click
        Dim rol1 As String = txtRol1.Text.Trim()
        Dim rol2 As String = txtRol2.Text.Trim()

        If String.IsNullOrEmpty(rol1) OrElse String.IsNullOrEmpty(rol2) Then
            lblMensajeRol.Text = "Debe ingresar número de Rol completo."
            Return
        End If


        rol1 = rol1.PadLeft(5, "0"c)
        rol2 = rol2.PadLeft(5, "0"c)

        Dim rolCompleto As String = rol1 & rol2


        rolCompleto = rolCompleto.TrimStart("0"c).PadLeft(10, "0"c)

        Session("rolPropiedad") = rolCompleto
        Response.Redirect("ConsultaAseoRol.aspx")
    End Sub


End Class


