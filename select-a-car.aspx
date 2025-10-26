<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDriver.Master" AutoEventWireup="true" CodeBehind="select-a-car.aspx.cs" Inherits="INFS4420Labs.select_a_car" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 371px; height: 49px">Brand</td>
            <td style="height: 49px">
                <asp:DropDownList ID="ddlcarList" runat="server" AutoPostBack="True" Height="39px" OnSelectedIndexChanged="ddlcarList_SelectedIndexChanged" Width="88px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 371px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grdCar" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="167px" Width="209px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grdCar_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 371px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
