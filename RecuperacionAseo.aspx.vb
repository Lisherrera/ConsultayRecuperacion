Imports System.Linq

Public Class RecuperacionAseo
    Inherits System.Web.UI.Page

    Private Sub CargarDatosAseo(rut As String)
        Using context As New ValpoEntities()

            Dim aseo = context.vista_pago_aseo_ext.
                        Where(Function(p) p.RUT = rut).
                        OrderByDescending(Function(p) p.folio).
                        Select(Function(p) New With {
                            .Folio = p.folio,
                            .RUT = p.RUT,
                            .NOMBRES = p.NOMBRES,
                            .FechaPago = p.fecha_pago,
                            .TotalPago = p.totalpago
                        }).ToList()

            GridView1.DataSource = aseo
            GridView1.DataBind()
        End Using
    End Sub

    Protected Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        Dim rut As String = TryCast(Session("rut"), String)
        If Not String.IsNullOrEmpty(rut) Then
            CargarDatosAseo(rut)
        End If
    End Sub

    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridView1.PageIndex = e.NewPageIndex
        Dim rut As String = TryCast(Session("rut"), String)
        If Not String.IsNullOrEmpty(rut) Then
            CargarDatosAseo(rut)
        End If
    End Sub
End Class
