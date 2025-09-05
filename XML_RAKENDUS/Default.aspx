<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XML_RAKENDUS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <h1>Xml katsetamine: Elizaveta II sugu puu</h1>

        <div>
            <asp:Xml runat="server"
                DocumentSource="~/Elizaveta2sugupuu.xml"
                TransFormSource="~/Elizaveta_paring.xslt"
                ></asp:Xml>
           
        </div>
    </main>

    </div>

</asp:Content>
