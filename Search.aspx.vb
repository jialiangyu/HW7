
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub tbTool_TextChanged(sender As Object, e As EventArgs) Handles tbTool.TextChanged
        ' Declare a variable
        Dim searchWord As String
        ' Set the variable equal to the SQL statement to perform the search
        searchWord = "Select * From Tools where (toolName Like '%" _
        + tbTool.Text.ToString() + "%')"
        ' Apply the variable (SQL statement) to the data source
        ToolDataSource.SelectCommand = searchWord
    End Sub
End Class
