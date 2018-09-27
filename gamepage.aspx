<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gamepage.aspx.cs" Inherits="gamepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server" style="background-color:ghostwhite">
     <div style="height: auto; width: 90%; margin:auto;">
        
         <div style="border:double; border-color:hotpink; background-image:url(/images/header-bg.jpg); padding:15px; margin:15px;">
            <br /><asp:Label ID="Label2" runat="server" Text="GAME INFORMATION" style="font-size:x-large; margin:10px"></asp:Label> <br /> <br />
         </div> <br />
   
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByGameID" TypeName="DataSetTableAdapters.GameTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="gameID" DefaultValue="0" Name="gameID" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>

    <asp:Panel ID="Panel1" runat="server" Width="90%" HorizontalAlign="Center" margin="Auto">
    <asp:DataList ID="dlGame" runat="server" DataKeyField="gameID" DataSourceID="ObjectDataSource1" OnItemDataBound="dlGame_ItemDataBound" style="margin:auto">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' Font-Size="XX-Large" Font-Bold="true"></asp:Label>
            <br /> <br />
            <img src='<%# Eval("boxImage") %>' width="250" border="0" alt="" style="padding:20px; background-color:hotpink; margin:auto;"> <br /> <br />
            
            <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" Font-Bold="False" Font-Size="Large" /><br />
            <asp:Label Text='<%# Eval("price","{0:c}") %>' runat="server" ID="priceLabel" /><br />
            Time:
            <asp:Label Text='<%# Eval("minTime") + " - " + Eval("maxTime") + " Minutes."%>' runat="server" ID="minTimeLabel" /><br />
            Players:
            <asp:Label Text='<%# Eval("minPlayers") + " - " + Eval("maxPlayers") + " Players." %>' runat="server" ID="minPlayersLabel" /><br />
            <asp:Label ID="Label3" runat="server" Text=<%# Eval("Stock") + " copies available" %>></asp:Label><br />
            <asp:Label ID="lblStock" runat="server" Text='<%# Eval("Stock") %>' Visible="false"></asp:Label><br />
            
            <div class="mdl-card__actions">
                <asp:Button ID="btnAdd" runat="server" Text="Buy Now" OnClick="btnAdd_Click" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
            </div>
          
            <br />
        </ItemTemplate>
    </asp:DataList>
        </asp:Panel>
  

  


      </div>
        </form>
</asp:Content>

