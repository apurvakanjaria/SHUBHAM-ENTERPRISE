<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/type.aspx.cs" Inherits="typeid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [type]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="383px" 
            AutoGenerateColumns="False" DataKeyNames="type_id" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="type_id" HeaderText="type_id" ReadOnly="True" 
                    SortExpression="type_id" />
                <asp:BoundField DataField="type_name" HeaderText="type_name" 
                    SortExpression="type_name" />
            </Columns>
        </asp:GridView>
    
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    type_id</td>
                <td>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    type_name</td>
                <td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdftype_name" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter type name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="typeinsert" runat="server" onclick="typeinsert_Click" 
            Text="Insert" />
        <asp:Button ID="typedelete" runat="server" onclick="Delete_Click" 
            Text="Delete" />
        <asp:Button ID="typeupdate" runat="server" onclick="Button1_Click" Text="Update" />
        <br />
    
    </div>
</asp:Content>