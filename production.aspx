<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="production.aspx.cs" Inherits="production" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [production]" 
            ></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="production_id" 
            DataSourceID="SqlDataSource1" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="production_id" HeaderText="production_id" 
                    ReadOnly="True" SortExpression="production_id" />
                <asp:BoundField DataField="production_date" HeaderText="production_date" 
                    SortExpression="production_date" />
                <asp:BoundField DataField="production_description" 
                    HeaderText="production_description" SortExpression="production_description" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td>
                    production_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    production_date</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfproduction_date" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter production date" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    production_description</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfproduction_description" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter production_description" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="proins" runat="server" onclick="proins_Click" Text="Insert" />
        <asp:Button ID="prodel" runat="server" onclick="prodel_Click" Text="Delete" />
        <asp:Button ID="proupd" runat="server" onclick="proupd_Click" Text="Update" />
    
    </div>
 </asp:Content>
