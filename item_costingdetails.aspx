<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="item_costingdetails.aspx.cs" Inherits="item_costingdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [item_costingdetails]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="icd_id" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="icd_id" HeaderText="icd_id" ReadOnly="True" 
                    SortExpression="icd_id" />
                <asp:BoundField DataField="ic_id" HeaderText="ic_id" SortExpression="ic_id" />
                <asp:BoundField DataField="part_id" HeaderText="part_id" 
                    SortExpression="part_id" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    icd_id</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    ic_id</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfic_id" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter ic_id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    part_id</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfpart_id" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter part id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    qty</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfqty" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter qty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    cost</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfcost" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter cost" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="icdins" runat="server" onclick="icdins_Click" Text="Insert" />
        <asp:Button ID="icddel" runat="server" onclick="icddel_Click" Text="Delete" />
        <asp:Button ID="icdupd" runat="server" onclick="icdupd_Click" Text="Update" />
    
    </div>
 
    </asp:Content>

