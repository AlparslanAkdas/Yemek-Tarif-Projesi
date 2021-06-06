<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            text-align: right;
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" __designer:mapid="5a">
    <tr __designer:mapid="5b">
        <td __designer:mapid="5c">&nbsp;</td>
        <td __designer:mapid="5d">&nbsp;</td>
    </tr>
    <tr __designer:mapid="5e">
        <td class="auto-style3" __designer:mapid="5f"><strong __designer:mapid="60">Tarif Ad:</strong></td>
        <td style="margin-left: 40px" __designer:mapid="61">
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr __designer:mapid="63">
        <td class="auto-style3" __designer:mapid="64">Malzemeler:</td>
        <td style="margin-left: 40px" __designer:mapid="65">
            <asp:TextBox ID="TxtMalzemeler" runat="server" TextMode="MultiLine" Width="250px" CssClass="tb5" Height="80px"></asp:TextBox>
        </td>
    </tr>
    <tr __designer:mapid="67">
        <td class="auto-style3" __designer:mapid="68">Yapılış:</td>
        <td style="margin-left: 40px" __designer:mapid="69">
            <asp:TextBox ID="TxtYapilis" runat="server" TextMode="MultiLine" Width="250px" CssClass="tb5" Height="150px"></asp:TextBox>
        </td>
    </tr>
    <tr __designer:mapid="6b">
        <td class="auto-style3" __designer:mapid="6c">Resim:</td>
        <td style="margin-left: 40px" __designer:mapid="6d">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
        </td>
    </tr>
    <tr __designer:mapid="6f">
        <td class="auto-style3" __designer:mapid="70">Tarif&nbsp; Öneren:</td>
        <td style="margin-left: 40px" __designer:mapid="71">
            <asp:TextBox ID="TxtTarifÖneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr __designer:mapid="73">
        <td class="auto-style3" __designer:mapid="74">Mail Adresi:</td>
        <td style="margin-left: 40px" __designer:mapid="75">
            <asp:TextBox ID="TxtMailAdresi" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr __designer:mapid="77">
        <td class="auto-style3" __designer:mapid="78">&nbsp;</td>
        <td style="margin-left: 40px; text-align: center;" __designer:mapid="79">
            <asp:Button ID="BtnTarifÖner" runat="server" Height="40px" style="font-weight: 700; font-style: italic; text-align: center; background-color: #FFFFCC" Text="Tarif Öner" Width="150px" OnClick="BtnTarifÖner_Click" CssClass="fb8" />
        </td>
    </tr>
</table>
</asp:Content>
