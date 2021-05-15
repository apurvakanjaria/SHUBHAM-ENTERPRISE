<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="supp.aspx.cs" Inherits="supp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [supplier]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="supp_id" 
            DataSourceID="SqlDataSource1" Width="768px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="supp_id" HeaderText="supp_id" ReadOnly="True" 
                    SortExpression="supp_id" />
                <asp:BoundField DataField="supp_name" HeaderText="supp_name" 
                    SortExpression="supp_name" />
                <asp:BoundField DataField="supp_email" HeaderText="supp_email" 
                    SortExpression="supp_email" />
                <asp:BoundField DataField="supp_pwd" HeaderText="supp_pwd" 
                    SortExpression="supp_pwd" />
                <asp:BoundField DataField="supp_cno" HeaderText="supp_cno" 
                    SortExpression="supp_cno" />
                <asp:BoundField DataField="supp_address" HeaderText="supp_address" 
                    SortExpression="supp_address" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    supp_id</td>
                <td>
        <asp:TextBox ID="TextBox1" runat="server"  ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    supp_name&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfsupp_name" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter supplier name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    supp_email</td>
                <td>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfsupp_email" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter supplier email" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    supp_pwd</td>
                <td>
        <asp:TextBox ID="TextBox4" runat="server" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter supplier password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    supp_cno</td>
                <td>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfsupp_cno" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter supplier c_no" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    supp_address</td>
                <td>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfsupp_address" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter supplier adress" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="suppins" runat="server" onclick="Button1_Click" Text="Insert" />
        <asp:Button ID="suppdel" runat="server" Text="Delete" onclick="suppdel_Click" />
        <asp:Button ID="suppupd" runat="server" Text="Update" onclick="suppupd_Click" />
        <br />
    
    </div>
  </asp:Content>