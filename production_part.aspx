<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="production_part.aspx.cs" Inherits="production_part" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [production_part]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="productionpart_id,part_id" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="productionpart_id" HeaderText="productionpart_id" 
                    ReadOnly="True" SortExpression="productionpart_id" />
                <asp:BoundField DataField="production_id" HeaderText="production_id" 
                    SortExpression="production_id" />
                <asp:BoundField DataField="part_id" HeaderText="part_id" ReadOnly="True" 
                    SortExpression="part_id" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td>
                    productionpart_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    production_id</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfproduction_id" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter production id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    part_id</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfpart_id" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter part id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    qty</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfqty" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter qty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="proins" runat="server" onclick="proins_Click" Text="Insert" />
        <asp:Button ID="prodel" runat="server" onclick="prodel_Click" Text="Delete" />
        <asp:Button ID="proupd" runat="server" onclick="proupd_Click" Text="Update" />
    
    </div>
   </asp:Content>