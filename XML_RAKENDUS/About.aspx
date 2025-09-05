<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="XML_RAKENDUS.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
    <asp:Xml runat="server"
         DocumentSource="~/Minupuu.xml"
         TransFormSource="~/minuPuu-paring.xslt"
     ></asp:Xml>
    </main>
</asp:Content>
