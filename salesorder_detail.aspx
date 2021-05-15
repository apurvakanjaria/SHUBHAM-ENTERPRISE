<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salesorder_detail.aspx.cs" Inherits="salesorder_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [salesorder_detail]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="sod_id" 
            DataSourceID="SqlDataSource1" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="sod_id" HeaderText="sod_id" ReadOnly="True" 
                    SortExpression="sod_id" />
                <asp:BoundField DataField="so_id" HeaderText="so_id" SortExpression="so_id" />
                <asp:BoundField DataField="i_id" HeaderText="i_id" SortExpression="i_id" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    sod_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    so_id</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfso_id" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter so_id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    i_id</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfi_id" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter i_id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    qty</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfqty" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter qty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    rate</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfrate" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter rate" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="sodins" runat="server" onclick="sodins_Click" Text="Insert" />
        <asp:Button ID="Delete" runat="server" onclick="Delete_Click" Text="Delete" />
        <asp:Button ID="sodupd" runat="server" onclick="sodupd_Click" Text="Update" />
    
    </div>
   </asp:Content>