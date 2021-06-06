<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }

        .auto-style3 {
            width: 267px;
        }

        .auto-style4 {
            width: 75px;
        }

        .auto-style5 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style6 {
            width: 31px;
        }

        .auto-style7 {
            width: 40px;
        }

        .auto-style8 {
            border: 2px solid #456879;
            border-radius: 10px;
            outline: none;
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Style="background-color: #507387">
        <table class="auto-style2">
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </strong></td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Height="30px" Text="-" Width="30px" />
                </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4" style="text-align: right">
                            <a href="Kategoriler.aspx?Kategoriid=<%#Eval("KategoriId") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a>
                        </td>
                        <td style="text-align: right">
                            <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("KategoriId") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#507387">
        <table class="auto-style2">
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style5" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style2">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="268px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style8" Height="36px" Text="Ekle" Width="138px" OnClick="BtnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
