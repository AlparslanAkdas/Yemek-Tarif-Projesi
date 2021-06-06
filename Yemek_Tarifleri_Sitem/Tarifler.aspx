<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            width: 218px;
            text-align: left;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
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
                <td>ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <a href="TarifÖneriDetay.aspx?Tarifid=<%# Eval("TarifId") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/proposal.png" Width="48px" CssClass="auto-style4" style="margin-right: 214px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Style="background-color: #507387; margin-top:15px;">
        <table class="auto-style2">
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                    </strong></td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style5" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                    </strong></td>
                <td>ONAYLI TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <a href="TarifÖneriDetay.aspx?Tarifid=<%# Eval("TarifId") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/proposal.png" Width="48px" CssClass="auto-style4" style="margin-right: 214px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
