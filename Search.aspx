<%@ Page Title="" Language="VB" MasterPageFile="~/people.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
Classmates  -  I have many beautiful and handsome classmates!</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentplaceholder1" Runat="Server">&nbsp;<asp:SqlDataSource ID="ToolDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [jyu6_HW7] WHERE [id] = @id" InsertCommand="INSERT INTO [jyu6_HW7] ([name], [gender], [age], [skills], [habits], [notes]) VALUES (@name, @gender, @age, @skills, @habits, @notes)" SelectCommand="SELECT * FROM [jyu6_HW7]" UpdateCommand="UPDATE [jyu6_HW7] SET [name] = @name, [gender] = @gender, [age] = @age, [skills] = @skills, [habits] = @habits, [notes] = @notes WHERE [id] = @id">
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
        Search for a tool by name:
        <asp:TextBox ID="tbTool" runat="server"></asp:TextBox>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ToolDataSource">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="skills" HeaderText="skills" SortExpression="skills" />
                <asp:BoundField DataField="habits" HeaderText="habits" SortExpression="habits" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
            </Columns>
        </asp:GridView>
</asp:Content>

