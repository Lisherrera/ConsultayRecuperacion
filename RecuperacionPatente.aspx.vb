Imports System.Linq

Public Class RecuperacionPatente
    Inherits System.Web.UI.Page

    Private Sub CargarDatosPM(rut As String)
        Using context As New ValpoEntities()

            ' Documentos TransBank
            Dim transbank = context.vista_patcom_tbk.
                Where(Function(p) p.rut = rut).
                Select(Function(p) New With {
                    .Ano = p.ano,
                    .Folio = p.folio,
                    .FechaPago = p.tbk_fec_hora_autorizacion,
                    .Rol = p.rol,
                    .Semestre = p.semestre,
                    .Url = p.url
                }).ToList()

            GridView3.DataSource = transbank
            GridView3.DataBind()

            ' Documentos TGR
            Dim tgr = context.vista_pat_com_jc.
                Where(Function(p) p.rut = rut AndAlso p.fecha_pago > New DateTime(2018, 12, 31)).
                OrderByDescending(Function(p) p.fecha_pago).
                Select(Function(p) New With {
                    .Ano = p.ano,
                    .Folio = p.folio,
                    .FechaPago = p.fecha_pago,
                    .Rol = p.rol,
                    .Semestre = p.semestre,
                    .Url = p.url
                }).ToList()

            grd_patcom.DataSource = tgr
            grd_patcom.DataBind()
        End Using
    End Sub


    Protected Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        Dim rut As String = TryCast(Session("rut"), String)
        If Not String.IsNullOrEmpty(rut) Then
            CargarDatosPM(rut)
        End If
    End Sub
    Protected Sub GridView3_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridView3.PageIndex = e.NewPageIndex
        Dim rut As String = TryCast(Session("rut"), String)
        If Not String.IsNullOrEmpty(rut) Then
            CargarDatosPM(rut)
        End If
    End Sub

    Protected Sub grd_patcom_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        grd_patcom.PageIndex = e.NewPageIndex
        Dim rut As String = TryCast(Session("rut"), String)
        If Not String.IsNullOrEmpty(rut) Then
            CargarDatosPM(rut)
        End If
    End Sub
End Class
