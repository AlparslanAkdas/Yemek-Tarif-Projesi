<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifÖneriDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifÖneriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 285px;
        }
        .auto-style4 {
            width: 214px;
        }
        .auto-style5 {
            text-align: right;
            width: 214px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style7">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Tarif Ad:</strong></td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Tarif Malzemeler:</strong></td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Yapılış:</strong></td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Tarif</strong> <strong>Resim</strong>:</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Öneren&nbsp; Mail:</strong></td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Kategori:</strong></td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" CssClass="fb8" OnClick="Button1_Click" style="font-size: medium; font-weight: 700" Text="Onayla" Width="200px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
