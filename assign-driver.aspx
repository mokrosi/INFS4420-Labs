<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDriver.Master" AutoEventWireup="true" CodeBehind="assign-driver.aspx.cs" Inherits="INFS4420Labs.assign_driver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 349px">
                Driver ID
            </td>
            <td style="width: 272px">
                <asp:TextBox ID="txtDriverID" runat="server"></asp:TextBox>
            </td>
            <td rowspan="6">&nbsp;&nbsp;&nbsp;
                <asp:Image ID="imgDriver" runat="server" Height="158px" style="margin-left: 29px" Width="152px" />
            </td>
        </tr>
        <tr>
            <td style="width: 349px">
                Driver Name</td>
            <td style="width: 272px">
                <asp:TextBox ID="txtDriverName" runat="server" CssClass="offset-sm-0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 21px; width: 349px">
                Status</td>
            <td style="height: 21px; width: 272px">
                <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 349px">
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="&lt;" Width="40px" />
            </td>
            <td style="width: 272px">
                <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="&gt;" Width="40px" />
            </td>
        </tr>
        <tr>
            <td style="width: 349px">
                <asp:Button ID="btnBack2" runat="server" OnClick="btnBack2_Click" Text="&lt;&lt;" Width="40px" />
            </td>
            <td style="width: 272px">
                <asp:Button ID="btnNext2" runat="server" OnClick="btnNext2_Click" Text="&gt;&gt;" Width="40px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 34px">
                <asp:Label ID="lblMasege" runat="server" ForeColor="Red" Text="lblMasege" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
