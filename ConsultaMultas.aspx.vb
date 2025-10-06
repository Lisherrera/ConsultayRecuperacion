Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Partial Class ConsultaMultas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ' Recuperar patente desde QueryString
            Dim patente As String = Request.QueryString("patente")
            If Not String.IsNullOrEmpty(patente) Then
                CargarMultas(patente)
            End If
        End If
    End Sub

    Private Sub CargarMultas(patente As String)
        ' Conexión a la base de datos desde web.config
        Dim connStr As String = ConfigurationManager.ConnectionStrings("pcv").ConnectionString

        Using conn As New SqlConnection(connStr)
            Dim query As String = "SELECT * FROM Multas WHERE Patente = @Patente" ' Ajusta la tabla y campos según tu BD
            Using cmd As New SqlCommand(query, conn)
                cmd.Parameters.AddWithValue("@Patente", patente)
                Dim dt As New DataTable()

                Try
                    conn.Open()
                    Dim da As New SqlDataAdapter(cmd)
                    da.Fill(dt)

                    If dt.Rows.Count > 0 Then
                        grd_pcv.DataSource = dt
                        grd_pcv.DataBind()
                        lblMensaje.Text = ""
                    Else
                        lblMensaje.Text = "No se encontraron multas para la patente ingresada."
                        grd_pcv.DataSource = Nothing
                        grd_pcv.DataBind()
                    End If

                Catch ex As Exception
                    lblMensaje.Text = "Error al consultar la base de datos: " & ex.Message
                End Try
            End Using
        End Using
    End Sub
End Class