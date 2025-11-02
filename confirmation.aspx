<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDriver.Master" AutoEventWireup="true" CodeBehind="confirmation.aspx.cs" Inherits="INFS4420Labs.confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
    <tr>
        <td style="width: 441px; height: 21px"></td>
        <td style="height: 21px"></td>
    </tr>
    <tr>
        <td style="width: 441px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 441px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 441px">Tripe Reference NO</td>
        <td>
            <asp:TextBox ID="txtReferenceNO" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 441px">Student ID</td>
        <td>
            <asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 441px">Car regsteration&nbsp; NO</td>
        <td>
            <asp:TextBox ID="txtCarRegsterationNO" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 441px">Driver ID</td>
        <td>
            <asp:TextBox ID="txtDriverID" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 441px">&nbsp;</td>
        <td>
            <asp:Button ID="btnConfirmation" runat="server" OnClick="btnConfirmation_Click" Text="confirmation" />
        </td>
    </tr>
    <tr>
        <td style="width: 441px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 441px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 441px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 441px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 441px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 441px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
