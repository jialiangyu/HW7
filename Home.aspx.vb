
Partial Class Home
    Inherits System.Web.UI.Page


    Protected Sub Label2_Load(sender As Object, e As EventArgs) Handles Label2.Load
        Dim time As Date = Date.Now
        Label2.Text = time
    End Sub
End Class
