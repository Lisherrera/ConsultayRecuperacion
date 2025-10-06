Public Class ConsultaAseoRol
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim rol As String = TryCast(Session("rolPropiedad"), String)

            If Not String.IsNullOrEmpty(rol) Then
                lblRol.Text = "Rol consultado: " & rol
                lblRol.ForeColor = System.Drawing.Color.Red
            Else
                lblRol.Text = "No se ha ingresado un rol válido."
                lblRol.ForeColor = System.Drawing.Color.Red
            End If
        End If
    End Sub
End Class
