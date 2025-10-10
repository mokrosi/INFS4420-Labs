<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="INFS4420Labs.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>Student information</p>
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
    <hr/>
    <P>Destination</P>
        <table class="w-100">
        <tr>
            <td style="width: 183px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px">
                <asp:Label ID="Label3" runat="server" Text="From"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">
                <asp:Label ID="Label4" runat="server" Text="To"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">Departure Time</td>
            <td>
                <asp:DropDownList ID="ddlDepartureTime" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">Return Tim</td>
            <td>
                <asp:DropDownList ID="ddlReturnTime" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
            </td>
        </tr>
    </table>

</asp:Content>
