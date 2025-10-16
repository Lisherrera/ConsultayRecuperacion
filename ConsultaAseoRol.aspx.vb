Imports System
Imports System.Linq

Namespace Consulta
    Partial Public Class ConsultaAseoRol
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
            If Not IsPostBack Then
                Dim rolInput As String = TryCast(Session("rolPropiedad"), String)

                If Not String.IsNullOrEmpty(rolInput) Then
                    ' Normaliza el rol quitando guiones y espacios
                    Dim rolNormalizado As String = rolInput.Replace("-", "").Trim()
                    CargarAseo(rolNormalizado)

                    ' Limpia la sesión para evitar recargas involuntarias
                    Session.Remove("rolPropiedad")
                Else
                    lblRol.Text = "No se recibió ningún rol para consultar."
                    GridView1.DataSource = Nothing
                    GridView1.DataBind()
                End If
            End If
        End Sub

        Private Sub CargarAseo(rol As String)
            If String.IsNullOrWhiteSpace(rol) Then
                lblRol.Text = "Debe ingresar un rol."
                GridView1.DataSource = Nothing
                GridView1.DataBind()
                Return
            End If

            Using context As New ValpoEntities()
                Dim pagos = context.vista_aseo_tbk _
                    .Where(Function(a) a.rol.Replace("-", "").Trim() = rol) _
                    .Select(Function(a) New With {
                        .rol = a.rol,
                        .idext = a.idext,
                        .tbk_fec_hora_autorizacion = a.tbk_fec_hora_autorizacion,
                        .tbk_total_pago = a.tbk_total_pago
                    }) _
                    .Distinct() _
                    .ToList()

                If pagos.Any() Then
                    GridView1.DataSource = pagos
                    GridView1.DataBind()
                    lblRol.Text = ""
                Else
                    lblRol.Text = "No se encontraron pagos para el rol ingresado."
                    GridView1.DataSource = Nothing
                    GridView1.DataBind()
                End If
            End Using
        End Sub
    End Class
End Namespace
