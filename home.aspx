<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" style="background-color:ghostwhite">
     <div style="height: auto; width: 90%; margin:auto;">
        
         <div style="border:double; border-color:hotpink; background-image:url(/images/header-bg.jpg); padding:15px; margin:15px;">
            <br /><asp:Label ID="Label2" runat="server" Text="SEARCH" style="font-size:x-large; margin:10px"></asp:Label> <br /> <br />
         </div> <br />

         <div style="align-content:center; text-align:center; align-items:center; margin:auto;">
            <asp:Label ID="Label1" runat="server" Text="Game Title"></asp:Label>&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxTitle" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Max Price"></asp:Label>&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxPrice" runat="server" MaxLength="3" Width="40px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Players"></asp:Label>&nbsp;&nbsp;
             <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True">
                 <asp:ListItem Value="0">Player Number</asp:ListItem>
                 <asp:ListItem>1</asp:ListItem>
                 <asp:ListItem>2</asp:ListItem>
                 <asp:ListItem>3</asp:ListItem>
                 <asp:ListItem>4</asp:ListItem>
                 <asp:ListItem>5</asp:ListItem>
                 <asp:ListItem>6</asp:ListItem>
                 <asp:ListItem>7</asp:ListItem>
                 <asp:ListItem>8</asp:ListItem>
                 <asp:ListItem>9</asp:ListItem>
                 <asp:ListItem>10</asp:ListItem>
             </asp:DropDownList>
             <br />
            <br />
         
             <asp:Label ID="Label4" runat="server" Text="Mechanics"></asp:Label>&nbsp;&nbsp;
             <asp:DropDownList ID="DropDownMechanic" runat="server" DataSourceID="Mechanics_List" DataTextField="name" DataValueField="mechID" AppendDataBoundItems="True">
            <asp:ListItem Value="0">Choose a Mechanic</asp:ListItem></asp:DropDownList>
             <br /><br />

            <asp:ObjectDataSource runat="server" ID="Mechanics_List" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.MechanicTableAdapter"></asp:ObjectDataSource>

            <asp:Button ID="Button1" runat="server" Text="Search" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
            
             <br />
             <br />
            
         </div>

        <div style="margin:auto">    
         <asp:GridView  ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="GameSearch_Object" DataKeyNames="gameID" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="75%" HorizontalAlign="Center" BackColor="White">
             <Columns>
                 <asp:TemplateField HeaderText="Name" SortExpression="name">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <div style="margin:auto; text-align:center;">
                             <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("name") %>' NavigateUrl='<%# Eval("gameID","~/gamepage.aspx?gameID={0}") %>' Font-Bold="True" Style="font-size:x-large"></asp:HyperLink>
                         </div>
                     </ItemTemplate>
                     <ControlStyle Font-Bold="True" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Description" SortExpression="description">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <div style="margin:auto; text-align:center;">
                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                         </div>
                     </ItemTemplate>
                     <ControlStyle Font-Bold="True" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Price" SortExpression="price">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("price","${0}") %>' style="padding:7px"></asp:Label>
                     </ItemTemplate>
                     <ControlStyle Font-Bold="True" />
                 </asp:TemplateField>
                 <asp:ImageField DataImageUrlField="boxImage" DataImageUrlFormatString="~/{0}" HeaderText="Box Image" ControlStyle-width="150px">
<ControlStyle Width="150px"></ControlStyle>
                 </asp:ImageField>
             </Columns>
         </asp:GridView>
            <asp:ObjectDataSource ID="GameSearch_Object" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="FullSearch" TypeName="DataSetTableAdapters.GameTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_gameID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="stock" Type="Int32" />
                    <asp:Parameter Name="minTime" Type="Int32" />
                    <asp:Parameter Name="maxTime" Type="Int32" />
                    <asp:Parameter Name="minPlayers" Type="Int32" />
                    <asp:Parameter Name="maxPlayers" Type="Int32" />
                    <asp:Parameter Name="boxImage" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownMechanic" DefaultValue="0" Name="mechID" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxTitle" DefaultValue="%" Name="name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxPrice" DefaultValue="0" Name="price" PropertyName="Text" Type="Decimal" />
                    <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="players" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="stock" Type="Int32" />
                    <asp:Parameter Name="minTime" Type="Int32" />
                    <asp:Parameter Name="maxTime" Type="Int32" />
                    <asp:Parameter Name="minPlayers" Type="Int32" />
                    <asp:Parameter Name="maxPlayers" Type="Int32" />
                    <asp:Parameter Name="boxImage" Type="String" />
                    <asp:Parameter Name="Original_gameID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            </div>

         

        <div style="clear: both">


            

            <br />
           

     </div>
        </div>
    </form>
</asp:Content>

