<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/item_stock.aspx.cs" Inherits="item_stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
    
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [item_stock]"></asp:SqlDataSource>
        ITEM_STOCK TABLE:-<br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="stock_id" 
            DataSourceID="SqlDataSource1" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="stock_id" HeaderText="stock_id" ReadOnly="True" 
                    SortExpression="stock_id" />
                <asp:BoundField DataField="i_id" HeaderText="i_id" SortExpression="i_id" />
                <asp:BoundField DataField="i_qty" HeaderText="i_qty" SortExpression="i_qty" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td>
                    stock_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    i_id</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfi_id" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter item id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    i_qty</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfi_qty" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter item quantity" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="itmins" runat="server"  Text="Insert" />
        <asp:Button ID="itmdel" runat="server"  Text="Delete" />
        <asp:Button ID="itmupd" runat="server"  Text="Update" />
    
    </div>
 </asp:Content>