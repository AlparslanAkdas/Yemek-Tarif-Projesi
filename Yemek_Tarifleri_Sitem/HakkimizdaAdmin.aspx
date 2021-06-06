<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        margin-left: 40px;
    }
    .auto-style4 {
        text-align: center;
        margin-left: 40px;
    }
    .auto-style5 {
        font-weight: bold;
    }
    .auto-style6 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style7 {
        font-size: medium;
    }
    .auto-style8 {
        font-size: medium;
        width: 27px;
    }
    .auto-style9 {
        font-weight: bold;
        font-size: large;
        width: 28px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Style="background-color: #507387">
        <table class="auto-style2">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>HAKKIMIZDA </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style3"><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Text="Güncelle" Width="200px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
