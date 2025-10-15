Imports System.Linq

Public Class RecuperacionOtros
    Inherits System.Web.UI.Page

    Private Sub CargarOtrosPagos(rut As String)
        Using context As New ValpoEntities()

            Dim otrosPagos = context.vista_pago_provisorias _
                .Where(Function(p) p.RUT = rut) _
                .OrderByDescending(Function(p) p.folio) _
                .Select(Function(p) New With {
                    .AnoProceso = p.ano_proceso,
                    .Folio = If(p.folio, 0),
                    .RUT = p.RUT,
                    .NumeroArriendo = p.NumeroArriendo,
                    .FechaPago = p.fecha_pago,
                    .TotalPago = p.totalpago
                }).ToList()

            gvOtrosPagos.DataSource = otrosPagos
            gvOtrosPagos.DataBind()
        End Using
    End Sub

    Protected Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        Dim rut As String = TryCast(Session("rut"), String)
        If Not String.IsNullOrEmpty(rut) Then
            CargarOtrosPagos(rut)
        End If
    End Sub
    Protected Sub gvOtrosPagos_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gvOtrosPagos.PageIndexChanging
        gvOtrosPagos.PageIndex = e.NewPageIndex
        Dim rut As String = TryCast(Session("rut"), String)
        If Not String.IsNullOrEmpty(rut) Then
            CargarOtrosPagos(rut)
        End If
    End Sub

End Class
