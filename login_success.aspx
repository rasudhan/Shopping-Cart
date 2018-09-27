<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login_success.aspx.cs" Inherits="login_success" %>

    <asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
        <meta http-equiv="Refresh" content="2;url=home.aspx" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form id="form1" runat="server" style="background-color:ghostwhite">
     <div style="height: auto; width: 90%; margin:auto;">
        
         <div style="border:double; border-color:hotpink; background-image:url(/images/header-bg.jpg); padding:15px; margin:15px;">
            <br /><asp:Label ID="Label2" runat="server" Text="LOG IN" style="font-size:x-large; margin:10px"></asp:Label> <br /> <br />
         </div> <br />
                     <asp:Label ID="Label1" runat="server" Text="Logged In Successfully." Font-Size="X-Large"></asp:Label> <br />
         <asp:Label ID="Label3" runat="server" Text="Redirecting in 2 seconds."></asp:Label><br /><br /><br />
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Take Me Home Now</asp:HyperLink> <br /> <br />         
        </div>
        

        </form>
</asp:Content>
