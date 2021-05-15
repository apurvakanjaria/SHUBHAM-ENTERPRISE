<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/item.aspx.cs" Inherits="item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [item]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="i_id" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="i_id" HeaderText="i_id" ReadOnly="True" 
                    SortExpression="i_id" />
                <asp:BoundField DataField="i_name" HeaderText="i_name" 
                    SortExpression="i_name" />
                <asp:BoundField DataField="i_price" HeaderText="i_price" 
                    SortExpression="i_price" />
                <asp:BoundField DataField="i_size" HeaderText="i_size" 
                    SortExpression="i_size" />
                <asp:BoundField DataField="i_capacity" HeaderText="i_capacity" 
                    SortExpression="i_capacity" />
                <asp:BoundField DataField="type_id" HeaderText="type_id" 
                    SortExpression="type_id" />
                <asp:BoundField DataField="i_image" HeaderText="i_image" 
                    SortExpression="i_image" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td>
                    i_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    i_name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfi_name" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter item name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    i_price</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfi_price" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter item price" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    i_size</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfi_size" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter item size" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    i_capacity</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfi_capacity" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter item capacity" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    type_id</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdftype_id" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter type id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    i_image</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="itemins" runat="server" onclick="Button1_Click" Text="Insert" 
            style="height: 26px" />
        <asp:Button ID="itemdel" runat="server" Text="Delete" onclick="itemdel_Click" />
        <asp:Button ID="itemupd" runat="server" Text="Update" onclick="itemupd_Click" />
    
</asp:Content>