<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TestPostbackCSP.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your application description page. </h3>
            
          <div>
                Show panel1?
                <asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem>yes</asp:ListItem>
                 <asp:ListItem>no</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div>
                Show panel2?
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                 <asp:ListItem>yes</asp:ListItem>
                 <asp:ListItem>no</asp:ListItem>
                </asp:DropDownList>
            </div>
   
        <div style="margin:10px;">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                   <ContentTemplate>
                      <asp:Label ID="Label1" runat="server">Panel1 Label1</asp:Label>
                   </ContentTemplate>
            </asp:UpdatePanel>
        
            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                   <ContentTemplate>
                      <asp:Label ID="Label2" runat="server">Panel2 Label2</asp:Label>
                   </ContentTemplate>
            </asp:UpdatePanel>
        </div>

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

