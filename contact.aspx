<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form id="form1" runat="server" style="background-color:ghostwhite" action="contact_success.aspx">
     <div style="height: auto; width: 90%; margin:auto;">
        
         <div style="border:double; border-color:hotpink; background-image:url(/images/header-bg.jpg); padding:15px; margin:15px;">
            <br /><asp:Label ID="Label2" runat="server" Text="CONTACT" style="font-size:x-large; margin:10px"></asp:Label> <br /> <br />
         </div> <br />

        
        <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator0" runat="server" ErrorMessage="Please enter your name." ControlToValidate="TextBoxName" display="none"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" controltovalidate="TextBoxName" ErrorMessage="Names are composed of letters and spaces only." ValidationExpression="[A-Za-z \-]*" Display="None"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your email." ControlToValidate="TextBoxEmail" Display="none"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a valid email address." ControlToValidate="TextBoxEmail" ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])" Display="None"></asp:RegularExpressionValidator>
         <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Question:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBoxQuestion" runat="server" Height="255px" TextMode="MultiLine" Width="70%"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your question or comment." ControlToValidate="TextBoxQuestion" Display="None"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="buttonSubmit" runat="server" Text="Submit" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent"/>
        <br />

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
         <br /><br />
        </div>
    </form>
</asp:Content>

