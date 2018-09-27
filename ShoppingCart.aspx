<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
         <div style="height: auto; width: 90%; margin:0px auto;">
        
         <div style="border:double; border-color:hotpink; background-image:url(/images/header-bg.jpg); padding:15px; margin:15px;">
            <br /><asp:Label ID="Label2" runat="server" Text="SHOPPING CART" style="font-size:x-large; margin:10px"></asp:Label> <br /> <br />
         </div> <br />

    <asp:GridView  class="mdl-data-table mdl-js-data-table mdl-shadow--2dp" ID="gvCart" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" ShowFooter="True" OnRowCancelingEdit="gvCart_RowCancelingEdit" OnRowDeleting="gvCart_RowDeleting" OnRowEditing="gvCart_RowEditing" OnRowUpdating="gvCart_RowUpdating" OnRowDataBound="gvCart_RowDataBound" OnRowCreated="gvCart_RowDataBound">
                <Columns>
                    <asp:ImageField DataImageUrlField="ProductImageUrl"
                        DataImageUrlFormatString="{0}"
                        HeaderText="Product Image" ReadOnly="True">
                        <ControlStyle Height="150px" />
                        <ItemStyle Height="150px" Width="150px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Quantity is Required" ControlToValidate="txtQuantity" Display="None"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvPurchaseQty" runat="server" ErrorMessage="Quantity should be between 0 and available stock." ControlToValidate="txtQuantity" Type="Integer" MinimumValue="0" MaximumValue='<%# Bind("Stock") %>' Display="None">
                            </asp:RangeValidator>
                            <br />
                            <asp:Label ID="lblProductID" runat="server" Text='<%# Eval("ProductID") %>' Visible="False"></asp:Label>
                            <asp:Label ID="lblStock" runat="server" Text='<%# Eval("Stock") %>' Visible="false"></asp:Label>
                            <br />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </EditItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True">
                        <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Extended Price">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# string.Format("{0:c}", (Convert.ToInt32(Eval("Quantity")) * Convert.ToDecimal(Eval("Price")))) %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                        <FooterTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# OrderTotal() %>'></asp:Label>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <EmptyDataTemplate>
                    There is nothing in your shopping cart.
                    <br />
                    Please shop at our <a href="home.aspx">Store</a>
                </EmptyDataTemplate>

            </asp:GridView>
             <br />
    <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" OnClick="btnCheckOut_Click" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
             </div>
        </form>
    <br />
</asp:Content>

