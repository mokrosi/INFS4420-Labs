<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDriver.Master" AutoEventWireup="true" CodeBehind="process-transaction.aspx.cs" Inherits="INFS4420Labs.process_transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td colspan="2" style="height: 304px">
                <asp:GridView ID="grdTranscations" runat="server" AllowPaging="True" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="grdTranscations_SelectedIndexChanged" Width="1178px">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="height: 21px; width: 221px">
                <asp:Label ID="lblRequestNo" runat="server" Text="Requested No"></asp:Label>
            </td>
            <td style="height: 21px; width: 600px;">
                <asp:TextBox ID="txtRequestNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px">
                <asp:Label ID="Label2" runat="server" Text="Student ID"></asp:Label>
            </td>
            <td style="width: 600px">
                <asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 21px; width: 221px">
                <asp:Label ID="lblFrom" runat="server" Text="From"></asp:Label>
            </td>
            <td style="height: 21px; width: 600px;">
                <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px">
                <asp:Label ID="Label4" runat="server" Text="Destination"></asp:Label>
            </td>
            <td style="width: 600px">
                <asp:TextBox ID="txtDestination" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px">
                <asp:Label ID="Label5" runat="server" Text="Departure Time"></asp:Label>
            </td>
            <td style="width: 600px">
                <asp:TextBox ID="txtDeparture" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px">
                <asp:Label ID="Label6" runat="server" Text="Return Time"></asp:Label>
            </td>
            <td style="width: 600px">
                <asp:TextBox ID="txtReturn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px">
                <asp:Label ID="Label7" runat="server" Text="Date"></asp:Label>
            </td>
            <td style="width: 600px">
                <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px">
                <asp:Label ID="Label8" runat="server" Text="Time"></asp:Label>
            </td>
            <td style="width: 600px">
                <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px">
                <asp:Label ID="Label9" runat="server" Text="Approved"></asp:Label>
            </td>
            <td style="width: 600px">
                <asp:TextBox ID="txtApproved" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
