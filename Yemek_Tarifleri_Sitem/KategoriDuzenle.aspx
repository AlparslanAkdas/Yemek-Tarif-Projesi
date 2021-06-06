<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            border: 2px solid #456879;
            border-radius: 10px;
            outline: none;
            font-size: medium;
        }
        .auto-style5 {
            height: 26px;
            text-align: right;
        }
        .auto-style6 {
            height: 26px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>KATEGORİ AD:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>ADET:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>RESİM:</strong></td>
            <td class="auto-style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="Güncelle" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
