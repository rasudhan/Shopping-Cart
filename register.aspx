<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <form id="form1" runat="server" style="background-color:ghostwhite">
     <div style="height: auto; width: 90%; margin:auto;">
        
         <div style="border:double; border-color:hotpink; background-image:url(/images/header-bg.jpg); padding:15px; margin:15px;">
            <br /><asp:Label ID="Label2" runat="server" Text="REGISTER" style="font-size:x-large; margin:10px"></asp:Label> <br /> <br />
         </div> <br />

         <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="ObjectDataSource1" AutoGenerateRows="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="userID" DefaultMode="Insert" OnItemInserted="DetailsView1_ItemInserted" OnItemInserting="DetailsView1_ItemInserting" Style  = "margin:auto; font-size:x-large">
             <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
             <Fields>
                 <asp:BoundField DataField="userID" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                 <asp:TemplateField HeaderText="username" SortExpression="username">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

                     </InsertItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="password" SortExpression="password">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                     </InsertItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="name" SortExpression="name">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

                     </InsertItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="address" SortExpression="address">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>

                     </InsertItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label4" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="city" SortExpression="city">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("city") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("city") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>

                     </InsertItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label5" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="state" SortExpression="state">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("state") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("state") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>

                     </InsertItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label6" runat="server" Text='<%# Bind("state") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="phone" SortExpression="phone">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please enter a TEN digit number with NO parentheses" ControlToValidate="TextBox7" ValidationExpression="\d{3}[- ]?\d{3}[- ]?\d{4}"></asp:RegularExpressionValidator>
                     </InsertItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label7" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="zipcode" SortExpression="zipcode">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("zipcode") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("zipcode") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="five digit number" ControlToValidate="TextBox9" ValidationExpression="\d{5}" ></asp:RegularExpressionValidator>
                     </InsertItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label9" runat="server" Text='<%# Bind("zipcode") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="email" SortExpression="email">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a valid E-mail" ControlToValidate="TextBox8" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                     </InsertItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label8" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="creditCard" SortExpression="creditCard">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("creditCard") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("creditCard") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid credit card number" ValidationExpression="\d{4}[- ]?\d{4}[- ]?\d{4}[- ]?\d{4}" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>
                     </InsertItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label10" runat="server" Text='<%# Bind("creditCard") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:CommandField ShowInsertButton="True" />
             </Fields>
             <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
             <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
             <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
             <RowStyle BackColor="White" ForeColor="#003399" />
         </asp:DetailsView>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label11" runat="server" Font-Size="X-Large"></asp:Label>
         <br />
         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.usersTableAdapter">
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
         </asp:ObjectDataSource>
        </div>
        </form>
</asp:Content>
