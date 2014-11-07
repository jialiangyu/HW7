<%@ Page Title="" Language="VB" MasterPageFile="~/people.master" AutoEventWireup="false" CodeFile="Detail.aspx.vb" Inherits="Detailview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Classmates  -  I have many beautiful and handsome classmates!
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentplaceholder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>"  SelectCommand="SELECT * FROM [jyu6_HW7] WHERE ([id] = @id)" DeleteCommand="DELETE FROM [jyu6_HW7] WHERE [id] = @id" InsertCommand="INSERT INTO [jyu6_HW7] ([name], [gender], [age], [skills], [habits], [notes]) VALUES (@name, @gender, @age, @skills, @habits, @notes)" UpdateCommand="UPDATE [jyu6_HW7] SET [name] = @name, [gender] = @gender, [age] = @age, [skills] = @skills, [habits] = @habits, [notes] = @notes WHERE [id] = @id" >
         
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="age" Type="String" />
                <asp:Parameter Name="skills" Type="String" />
                <asp:Parameter Name="habits" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="age" Type="String" />
                <asp:Parameter Name="skills" Type="String" />
                <asp:Parameter Name="habits" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
           
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="266px" AutoGenerateRows="False" DataKeyNames="id" HorizontalAlign="Center">
            <Fields>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="skills" HeaderText="skills" SortExpression="skills" />
                <asp:BoundField DataField="habits" HeaderText="habits" SortExpression="habits" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
            </Fields>
        </asp:DetailsView>
    

</asp:Content>

