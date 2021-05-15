<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sales_order.aspx.cs" Inherits="sales_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [sales_order]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="so_id" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="so_id" HeaderText="so_id" ReadOnly="True" 
                    SortExpression="so_id" />
                <asp:BoundField DataField="c_id" HeaderText="c_id" SortExpression="c_id" />
                <asp:BoundField DataField="so_date" HeaderText="so_date" 
                    SortExpression="so_date" />
                <asp:BoundField DataField="total_so" HeaderText="total_so" 
                    SortExpression="total_so" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    so_id</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    c_id&nbsp;</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfc_id" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter customer id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    so_date</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfso_date" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter sales order date" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    total_so</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdftotal_so" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter total sales order" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    status</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfstatus" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter status" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="soins" runat="server" onclick="soins_Click" 
            style="height: 26px" Text="Insert" />
        <asp:Button ID="sodel" runat="server" onclick="sodel_Click" Text="Delete" />
        <asp:Button ID="qdupd" runat="server" onclick="qdupd_Click" Text="Update" />
    
    </div>
   </asp:Content>