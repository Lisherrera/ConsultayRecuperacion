Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Partial Class MostrarDocumentos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ' Verificar que exista RUT en sesión
            If Session("rutUsuario") IsNot Nothing Then
                Dim rut As String = Session("rutUsuario").ToString().Trim()
                CargarDatosUsuario(rut)
            Else
                lblNombres.Text = "No se ha ingresado un RUT."
                lblRut.Text = ""
            End If
        End If
    End Sub

    Private Sub CargarDatosUsuario(rut As String)
        ' Conexión desde web.config
        Dim connStr As String = ConfigurationManager.ConnectionStrings("pcv").ConnectionString

        Using conn As New SqlConnection(connStr)
            ' Ajusta "Nombre_Cliente" y "RUT_Cliente" según tu tabla real
            Dim query As String = "SELECT Rut, Nombre FROM MAESTRO_CONTRIBUYENTE WHERE RUT = @Rut"

            Using cmd As New SqlCommand(query, conn)
                cmd.Parameters.AddWithValue("@Rut", rut)
                Dim dt As New DataTable()

                Try
                    conn.Open()
                    Dim da As New SqlDataAdapter(cmd)
                    da.Fill(dt)

                    If dt.Rows.Count > 0 Then
                        ' Asignar valores a los labels
                        lblNombres.Text = dt.Rows(0)("NOMBRE").ToString()
                        lblRut.Text = dt.Rows(0)("RUT").ToString()
                    Else
                        lblNombres.Text = "No se encontraron documentos para este RUT."
                        lblRut.Text = rut
                    End If

                Catch ex As Exception
                    lblNombres.Text = "Error al consultar la base de datos: " & ex.Message
                    lblRut.Text = rut
                End Try
            End Using
        End Using
    End Sub
End Class
