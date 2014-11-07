
Partial Class Admin_Detailadmin
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim deleteddata As String = e.Values("name").ToString

        lb_delete.Text = deleteddata & "has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=./Viewalladmin.aspx")
    End Sub

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("./Viewalladmin.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Viewalladmin.aspx")
    End Sub
End Class
