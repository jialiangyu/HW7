﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/peopleadmin.master" AutoEventWireup="false" CodeFile="Newpeople.aspx.vb" Inherits="Admin_Newpeople" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Classmates  -  I have many beautiful and handsome classmates!
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentplaceholder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [jyu6_HW7] WHERE [id] = @id" InsertCommand="INSERT INTO [jyu6_HW7] ([name], [gender], [age], [skills], [habits], [notes]) VALUES (@name, @gender, @age, @skills, @habits, @notes)" SelectCommand="SELECT * FROM [jyu6_HW7]" UpdateCommand="UPDATE [jyu6_HW7] SET [name] = @name, [gender] = @gender, [age] = @age, [skills] = @skills, [habits] = @habits, [notes] = @notes WHERE [id] = @id">
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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" HorizontalAlign="Center">
            <Fields>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="skills" HeaderText="skills" SortExpression="skills" />
                <asp:BoundField DataField="habits" HeaderText="habits" SortExpression="habits" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
</asp:Content>

