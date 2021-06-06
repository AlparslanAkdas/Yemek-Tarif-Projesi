<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <asp:DataList ID="DataList2" runat="server" Width="426px">
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td style="background-color: #FF9966; text-align: center;">
                        <!--Soru işareti formlar arası veri taşıma  işlemlerinde sorgulama için kullanılan bir sembol -->

                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekİd") %>"><asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large; color: #990033;" Text='<%# Eval("YemekAd") %>'></asp:Label></a>


                    </td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarih:</strong><asp:Label ID="Label6" runat="server" style="color: #FFFFFF" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        <strong>&nbsp;-&nbsp; Puan:</strong><asp:Label ID="Label7" runat="server" style="font-weight: 700; font-style: italic; color: #FFFFFF;" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333;"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
  
</asp:Content>
