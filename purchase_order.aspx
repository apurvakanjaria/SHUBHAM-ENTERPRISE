<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="purchase_order.aspx.cs" Inherits="purchase_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [purchase_order]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="po_id" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="po_id" HeaderText="po_id" ReadOnly="True" 
                    SortExpression="po_id" />
                <asp:BoundField DataField="po_date" HeaderText="po_date" 
                    SortExpression="po_date" />
                <asp:BoundField DataField="supp_id" HeaderText="supp_id" 
                    SortExpression="supp_id" />
                <asp:BoundField DataField="po_total" HeaderText="po_total" 
                    SortExpression="po_total" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td>
                    po_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    po_date</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfpo_date" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter purchase order date" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    supp_id</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfsupp_id" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter supplier id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    po_total</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfpo_total" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter purchase order total" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    status</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfstatus" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter status" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="poins" runat="server" onclick="poins_Click" Text="Insert" />
        <asp:Button ID="podel" runat="server" onclick="podel_Click" Text="Delete" />
        <asp:Button ID="poupd" runat="server" onclick="poupd_Click" Text="Update" />
    
    </div>
   </asp:Content>