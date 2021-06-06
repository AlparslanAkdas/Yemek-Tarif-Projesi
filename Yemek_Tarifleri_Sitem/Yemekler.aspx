    <%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yemekler" %>

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
        .auto-style9 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Style="background-color: #507387">
        <table class="auto-style2">
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4" style="text-align: right">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekİd") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a>
                        </td>
                        <td style="text-align: right">
                            <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekİd") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" /></a>
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                </strong></td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style5" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                </strong></td>
                <td>YEMEK EKLEME</td>
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
                <td>YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="75px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style8" Height="36px" OnClick="BtnEkle_Click" Text="Ekle" Width="138px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>

