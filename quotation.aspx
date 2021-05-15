<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="quotation.aspx.cs" Inherits="quotation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [quotation]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="q_id" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table" 
            AllowSorting="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="q_id" HeaderText="q_id" ReadOnly="True" 
                    SortExpression="q_id" />
                <asp:BoundField DataField="c_id" HeaderText="c_id" SortExpression="c_id" />
                <asp:BoundField DataField="q_details" HeaderText="q_details" 
                    SortExpression="q_details" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td>
                    q_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    c_id</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfc_id" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter customer id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    q_details</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfq_details" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter quotation details" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="qins" runat="server" onclick="qins_Click" Text="Insert" />
        <asp:Button ID="qdel" runat="server" Text="Delete" onclick="qdel_Click" 
            style="height: 26px" />
        <asp:Button ID="qupd" runat="server" Text="Update" onclick="qupd_Click" />
    
    </div>
   </asp:Content>