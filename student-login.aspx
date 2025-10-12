<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="student-login.aspx.cs" Inherits="INFS4420Labs.student_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 488px">&nbsp;</td>
            <td>
                <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red" Text="Your Login attempt was not successfull . please try agine" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 488px; height: 27px">
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
            </td>
            <td style="height: 27px">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 488px; height: 27px">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="height: 27px">
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 488px; height: 31px;"></td>

            <td style="height: 31px">
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            </td>
        </tr>
    </table>
</asp:Content>
