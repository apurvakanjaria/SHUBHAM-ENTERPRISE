<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/quotation_details.aspx.cs" Inherits="quotation_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [quotaion_details]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="qd_id" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="qd_id" HeaderText="qd_id" ReadOnly="True" 
                    SortExpression="qd_id" />
                <asp:BoundField DataField="q_id" HeaderText="q_id" SortExpression="q_id" />
                <asp:BoundField DataField="i_id" HeaderText="i_id" SortExpression="i_id" />
                <asp:BoundField DataField="i_qty" HeaderText="i_qty" SortExpression="i_qty" />
                <asp:BoundField DataField="i_price" HeaderText="i_price" 
                    SortExpression="i_price" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    qd_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    q_id</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfq_id" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter quotation id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    i_id</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter item id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    i_qty</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter item quantity" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    i_price</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter item price" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="qdins" runat="server" onclick="qdins_Click" Text="Insert" />
        <asp:Button ID="qddel" runat="server" onclick="qddel_Click" Text="Delete" />
        <asp:Button ID="qdupd" runat="server" onclick="qdupd_Click" Text="Update" />
    
    </div>
   </asp:Content>