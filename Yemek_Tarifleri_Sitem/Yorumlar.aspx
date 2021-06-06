<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <td>ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style4" style="text-align: right">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" />
                            </td>
                        <td style="text-align: right">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" />
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
                <td>ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style4" style="text-align: right">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" />
                            </td>
                        <td style="text-align: right">
                            <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" /></a> 
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
