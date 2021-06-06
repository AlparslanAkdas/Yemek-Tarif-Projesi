<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YemekDuzenle" %>
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
            font-size: large;
            width: 181px;
        }
        .auto-style5 {
            height: 26px;
            width: 181px;
        }
    .auto-style6 {
        font-weight: bold;
        font-size: large;
        background-color: #CCCCFF;
    }
    .auto-style7 {
        border: 2px solid #456879;
        border-radius: 10px;
        outline: none;
        font-size: large;
        background-color: #CCCCCC;
    }
        .auto-style8 {
            height: 26px;
            width: 181px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Yemek Ad:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>&nbsp;Malzemeler:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Tarif:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Kategori:</strong></td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemek Görüntü:</strong></td>
            <td class="auto-style3">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Text="Güncelle" Width="250px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style6" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="250px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
