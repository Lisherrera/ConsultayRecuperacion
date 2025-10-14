Imports System
Imports System.Linq
Imports Consulta ' Namespace donde está tu DbContext

Partial Class MostrarDocumentos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ' Verificar si hay RUT en sesión
            If Session("rut") IsNot Nothing Then
                Dim rut As String = Session("rut").ToString().Trim()
                If String.IsNullOrEmpty(rut) Then
                    lblNombres.Text = "RUT en sesión vacío."
                    lblRut.Text = "-"
                Else
                    ' Llamar a la función para cargar datos
                    CargarDatosUsuario(rut)
                End If
            Else
                lblNombres.Text = "No se ha ingresado un RUT en sesión."
                lblRut.Text = "-"
            End If
        End If
    End Sub

    Private Sub CargarDatosUsuario(rut As String)
        Try
            Using context As New ValparaisoUsuariosEntities() ' Tu DbContext para la nueva vista
                ' Buscar el usuario por RUT (sin Trim() todavía para depurar)
                Dim usuario = context.PATCOM_Maestro_Contribuyente_Vista _
                    .Where(Function(u) u.RUT.ToUpper() = rut.ToUpper()) _
                    .FirstOrDefault()

                If usuario IsNot Nothing Then
                    lblNombres.Text = usuario.NOMBRE
                    lblRut.Text = usuario.RUT
                Else
                    lblNombres.Text = "No se encontraron documentos para el RUT: " & rut
                    lblRut.Text = rut
                End If
            End Using
        Catch ex As Exception
            lblNombres.Text = "Error al consultar la base de datos: " & ex.Message
            lblRut.Text = rut
        End Try
    End Sub

End Class
