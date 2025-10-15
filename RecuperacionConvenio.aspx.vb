Imports System.Linq

Public Class RecuperacionConvenio
    Inherits System.Web.UI.Page

    Private Sub CargarConvenios(rut As String)
        Using context As New ValpoEntities()

            Dim convenios = context.Vista_pagos_Convenio.
                             Where(Function(p) p.rut_completo = rut).
                             OrderByDescending(Function(p) p.folio).
                             Select(Function(p) New With {
                                 .Folio = p.folio,
                                 .Nombre = p.Nombre,
                                 .RutCompleto = p.rut_completo,
                                 .FechaPago = p.fecha_pago,
                                 .AnoProceso = p.ano_proceso,
                                 .NConvenio = p.n_convenio
                             }).ToList()

            grd_convenios.DataSource = convenios
            grd_convenios.DataBind()
        End Using
    End Sub

    Protected Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        Dim rut As String = TryCast(Session("rut"), String)
        If Not String.IsNullOrEmpty(rut) Then
            CargarConvenios(rut)
        End If
    End Sub

    Protected Sub grd_convenios_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        grd_convenios.PageIndex = e.NewPageIndex
        Dim rut As String = TryCast(Session("rut"), String)
        If Not String.IsNullOrEmpty(rut) Then
            CargarConvenios(rut)
        End If
    End Sub

End Class
