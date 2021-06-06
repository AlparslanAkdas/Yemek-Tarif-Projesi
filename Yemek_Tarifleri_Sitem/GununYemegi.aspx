<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 27px;
            background-color: #BD7272;
        }
        .auto-style8 {
            background-color: #BD7272;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:DataList ID="DataList2" runat="server" style="margin-right: 0px">
        <ItemTemplate>
            <table class="auto-style1" style="width: 101%">
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: center" class="auto-style8">
                                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8"><strong>Malzemeler: </strong>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8"><strong>Tarif: </strong>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Image ID="Image1" runat="server" Height="198px" ImageUrl='<%# Eval("GununYemegiResim") %>' Width="332px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left" class="auto-style8"><strong>Puan: </strong>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left" class="auto-style7"><strong>Tarih: </strong>
                                    <asp:Label ID="Label7" runat="server" style="font-style: italic" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

