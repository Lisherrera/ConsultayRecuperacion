Imports System
Imports System.Linq

Namespace Consulta
    Partial Public Class ConsultaMultas
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
            If Not IsPostBack Then
                ' Verificamos si hay patente en sesión
                Dim patenteInput As String = TryCast(Session("patente"), String)

                If Not String.IsNullOrEmpty(patenteInput) Then
                    CargarMultas(patenteInput)
                    ' Opcional: limpiar la sesión si no quieres mantener la patente
                    ' Session("patente") = Nothing
                Else
                    lblMensaje.Text = "No se recibió ninguna patente para consultar."
                    grd_pcv.DataSource = Nothing
                    grd_pcv.DataBind()
                End If
            End If
        End Sub

        Private Sub CargarMultas(patente As String)
            If String.IsNullOrWhiteSpace(patente) Then
                lblMensaje.Text = "Debe ingresar una patente."
                grd_pcv.DataSource = Nothing
                grd_pcv.DataBind()
                Return
            End If

            Dim patenteInput = patente.Trim().ToUpper()

            Using context As New ValpoEntities()
                ' Quitamos guiones y espacios de ambos lados
                Dim multas = context.vista_pago_jpl _
                    .Where(Function(m) m.rol.Replace("-", "").Trim().ToUpper() = patenteInput.Replace("-", "").Trim().ToUpper()) _
                    .Select(Function(m) New With {
                        m.folio,
                        m.rol,
                        m.rut,
                        m.nombre,
                        m.fecha_pago,
                        m.url
                    }).ToList()

                If multas.Any() Then
                    grd_pcv.DataSource = multas
                    grd_pcv.DataBind()
                    lblMensaje.Text = ""
                Else
                    lblMensaje.Text = "No se encontraron multas para la patente ingresada."
                    grd_pcv.DataSource = Nothing
                    grd_pcv.DataBind()
                End If
            End Using
        End Sub



    End Class
End Namespace
