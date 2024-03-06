<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TestPostbackCSP.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your application description page.
            
            <asp:DropDownList ID="DropDownList1" runat="server">
             <asp:ListItem>yes</asp:ListItem>
             <asp:ListItem>no</asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
             <asp:ListItem>yes</asp:ListItem>
             <asp:ListItem>no</asp:ListItem>
            </asp:DropDownList>
    </h3>
        <p>Use this area to provide additional information.</p>
        <script>
            function postback() {
                setTimeout('__doPostBack(\'ctl00$MainContent$DropDownList1\',\'\')', 0)
            }
            document.addEventListener('DOMContentLoaded', function () {
                document.getElementById(dropdownId).addEventListener('change', postback);
            });
        </script>
    </main>
</asp:Content>
