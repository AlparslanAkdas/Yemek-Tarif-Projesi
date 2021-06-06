<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            text-align: right;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAdSoyad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TxtMailAdresi" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>İçerik:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="Txticerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Yemek:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtYemek" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style6" OnClick="BtnOnayla_Click" Text="Onayla" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
