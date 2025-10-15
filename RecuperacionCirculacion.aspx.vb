Imports System.Linq

Namespace Consulta
    Public Class RecuperacionCirculacion
        Inherits System.Web.UI.Page

        Private Sub CargarPCVTransbank(rut As String)
            Using context As New ValpoEntities()
                Dim pagos = context.Vista_pcv_transbank.
                            Where(Function(p) p.rut = rut AndAlso p.tbk_fec_hora_autorizacion > #1/1/2018#).
                            OrderByDescending(Function(p) p.tbk_fec_hora_autorizacion).
                            Select(Function(p) New With {
                                .Ano = p.ano,
                                .Folio = p.folio,
                                .Patente = p.patente,
                                .FechaPago = p.tbk_fec_hora_autorizacion,
                                .TipoPago = If(p.tipo_pago = 1, "Pago total", "Pago en Cuota"),
                                .Url = p.url
                            }).ToList()

                grd_pcv.DataSource = pagos
                grd_pcv.DataBind()
            End Using
        End Sub

        Private Sub CargarPCVTGR(rut As String)
            Using context As New ValpoEntities()
                Dim pagos = context.vista_pcv_jc.
                            Where(Function(p) p.rut = rut AndAlso (p.tipo_pago = 1 Or p.tipo_pago = 2) AndAlso p.fecha_pago > #1/1/2018#).
                            OrderByDescending(Function(p) p.fecha_pago).
                            Select(Function(p) New With {
                                .Ano = p.ano,
                                .Folio = p.folio,
                                .Patente = p.patente,
                                .FechaPago = p.fecha_pago,
                                .TipoPago = If(p.tipo_pago = 1, "Pago total", "Pago en Cuota"),
                                .Url = p.url
                            }).ToList()

                grd_tgr.DataSource = pagos
                grd_tgr.DataBind()
            End Using
        End Sub

        ' 🔹 Se ejecuta antes de renderizar la página
        Protected Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
            Dim rut As String = TryCast(Session("rut"), String)
            If Not String.IsNullOrEmpty(rut) Then
                CargarPCVTransbank(rut)
                CargarPCVTGR(rut)
            End If
        End Sub

        ' 🔹 Paginación TransBank
        Protected Sub grd_pcv_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
            grd_pcv.PageIndex = e.NewPageIndex
            Dim rut As String = TryCast(Session("rut"), String)
            If Not String.IsNullOrEmpty(rut) Then
                CargarPCVTransbank(rut)
            End If
        End Sub

        ' 🔹 Paginación TGR
        Protected Sub grd_tgr_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
            grd_tgr.PageIndex = e.NewPageIndex
            Dim rut As String = TryCast(Session("rut"), String)
            If Not String.IsNullOrEmpty(rut) Then
                CargarPCVTGR(rut)
            End If
        End Sub

    End Class
End Namespace
