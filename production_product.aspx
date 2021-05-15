<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="production_product.aspx.cs" Inherits="production_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [production_product]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="productionproduct_id" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="productionproduct_id" 
                    HeaderText="productionproduct_id" ReadOnly="True" 
                    SortExpression="productionproduct_id" />
                <asp:BoundField DataField="production_id" HeaderText="production_id" 
                    SortExpression="production_id" />
                <asp:BoundField DataField="productitem_id" HeaderText="productitem_id" 
                    SortExpression="productitem_id" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td>
                    productionproduct_id</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    production_id</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfproduction_id" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter production id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    productitem_id</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfproductitem_id" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter product item id" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    qty</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfqty" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter qty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="prodins" runat="server" onclick="prodins_Click" Text="Insert" />
        <asp:Button ID="proddel" runat="server" onclick="proddel_Click" Text="Delete" />
        <asp:Button ID="produpd" runat="server" onclick="produpd_Click" Text="Update" />
    
    </div>
</asp:Content>