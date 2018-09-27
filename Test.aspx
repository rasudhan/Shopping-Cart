<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="DropDownList" DataTextField="userID" DataValueField="userID">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="DropDownList" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.usersTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_userID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="zipcode" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="creditCard" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="zipcode" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="creditCard" Type="String" />
                <asp:Parameter Name="Original_userID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userID" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="userID" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="zipcode" HeaderText="zipcode" SortExpression="zipcode" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="creditCard" HeaderText="creditCard" SortExpression="creditCard" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByUserID" TypeName="DataSetTableAdapters.usersTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_userID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="zipcode" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="creditCard" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="userID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="zipcode" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="creditCard" Type="String" />
                <asp:Parameter Name="Original_userID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="orderID" DataSourceID="Orders">
            <Columns>
                <asp:BoundField DataField="orderID" HeaderText="orderID" InsertVisible="False" ReadOnly="True" SortExpression="orderID" />
                <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" />
                <asp:BoundField DataField="orderAmount" HeaderText="orderAmount" SortExpression="orderAmount" />
                <asp:BoundField DataField="timestamp" HeaderText="timestamp" SortExpression="timestamp" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="Orders" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetOrderHistory" TypeName="DataSetTableAdapters.OrderTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_orderID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userID" Type="Int32" />
                <asp:Parameter Name="orderAmount" Type="Decimal" />
                <asp:Parameter Name="timestamp" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="userID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="userID" Type="Int32" />
                <asp:Parameter Name="orderAmount" Type="Decimal" />
                <asp:Parameter Name="timestamp" Type="DateTime" />
                <asp:Parameter Name="Original_orderID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
    </form>
</asp:Content>

