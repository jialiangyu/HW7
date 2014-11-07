
Partial Class Admin_Newpeople
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("./Viewalladmin.aspx")
    End Sub
End Class
