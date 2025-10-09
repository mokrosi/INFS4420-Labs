<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="INFS4420Labs.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 183px">
                <asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">
                <asp:Label ID="Label2" runat="server" Text="Student Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStudenName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">College</td>
            <td>
                <asp:TextBox ID="txtCollege" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">Phone Number</td>
            <td>
                <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
