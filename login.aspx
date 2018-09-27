<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="formLogin" runat="server" style="background-color:ghostwhite">
     <div style="height: auto; width: 90%; margin:auto;">
        
         <div style="border:double; border-color:hotpink; background-image:url(/images/header-bg.jpg); padding:15px; margin:15px;">
            <br /><asp:Label ID="Label2" runat="server" Text="LOG IN" style="font-size:x-large; margin:10px"></asp:Label> <br /> <br />
         </div> <br />
         
         <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#333333" Height="200px" style="margin:auto" DisplayRememberMe="False" TextLayout="TextOnTop" OnLoggedIn="Login1_LoggedIn" OnAuthenticate="Login1_Authenticate" FailureText="Unsuccessful.&lt;br/&gt;Please try again." DestinationPageUrl="~/login_success.aspx" CreateUserText="Sign Up" CreateUserUrl="~/register.aspx">
             <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
             <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
             <TextBoxStyle Font-Size="0.8em" />
             <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
         </asp:Login>

         <br />

        </div>
        <br /> <br />
        </form>
</asp:Content>

