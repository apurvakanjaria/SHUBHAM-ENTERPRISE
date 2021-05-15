<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="item_costing.aspx.cs" Inherits="item_costing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [item_costing]"></asp:SqlDataSource>
        ITEM_COSTING TABLE<br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="ic_id" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ic_id" HeaderText="ic_id" ReadOnly="True" 
                    SortExpression="ic_id" />
                <asp:BoundField DataField="inq_id" HeaderText="inq_id" 
                    SortExpression="inq_id" />
                <asp:BoundField DataField="i_id" HeaderText="i_id" SortExpression="i_id" />
                <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    ic_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    inq_id</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfinq_id" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter inquiry id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    i_id</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfi_id" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter item id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    cost</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfcost" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter cost" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="icins" runat="server" onclick="icins_Click" Text="Insert" />
        <asp:Button ID="icdel" runat="server" onclick="icdel_Click" Text="Delete" />
        <asp:Button ID="icupd" runat="server" onclick="icupd_Click" Text="Update" />
        <br />
    
    </div>
</asp:Content>