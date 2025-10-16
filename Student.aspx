<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="INFS4420Labs.Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
        <legend>Student information</legend>
        <hr />
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
    </fieldset>

    <hr />
    <fieldset>
        <legend>Destination</legend>
        <hr />
        <table class="w-100">
            <tr>
                <td style="width: 183px">&nbsp;</td>
                <td>
                    <asp:Label ID="lblConfirmTransactionError" runat="server" ForeColor="#FF3300" Text="Your Transation was not Succefull" Visible="False"></asp:Label>
                </td>
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
                <td style="width: 183px">
                    <br />
                </td>
                <td></td>
            </tr>
        </table>
    </fieldset>
    <hr />
    <fieldset>
        <legend>Confirm Transaction</legend>
        <hr />
        <table class="w-100">
            <tr>
                <td>
                    <asp:Label ID="lblConfirmTransaction" runat="server" ForeColor="#33CC33" Text="Your Transation was Succeful" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
                </td>
            </tr>
        </table>
    </fieldset>

</asp:Content>
