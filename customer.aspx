<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/customer.aspx.cs" Inherits="customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label"><h2>Customer table</h2></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="c_id" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="c_id" HeaderText="id" ReadOnly="True" 
                    SortExpression="c_id" />
                <asp:BoundField DataField="c_name" HeaderText="c_name" 
                    SortExpression="c_name" />
                <asp:BoundField DataField="c_address" HeaderText="c_address" 
                    SortExpression="c_address" />
                <asp:BoundField DataField="c_email" HeaderText="c_email" 
                    SortExpression="c_email" />
                <asp:BoundField DataField="c_password" HeaderText="c_password" 
                    SortExpression="c_password" />
                <asp:BoundField DataField="c_mobileno" HeaderText="c_mobileno" 
                    SortExpression="c_mobileno" />
                <asp:BoundField DataField="c_contactperson" HeaderText="c_contactperson" 
                    SortExpression="c_contactperson" />
                <asp:BoundField DataField="c_contactpersonno" HeaderText="c_contactpersonno" 
                    SortExpression="c_contactpersonno" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    c_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    c_name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvcname" runat="server" 
                        ErrorMessage="*Enter Customer Name" ControlToValidate="TextBox2" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    c_address</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvcaddress" runat="server" 
                        ErrorMessage="*Enter Address" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    c_email</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvemail" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="*Enter Email Address" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    c_password</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvpass" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="*Enter Password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    c_mobileno</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="rfvmno" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="*Enter Mobile Number" 
                        ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    c_contactperson</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvcp" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="*Enter Contact Person Name" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    c_contactpersonno</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="rfvcpno" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="*Enter Contact Person Mobile Numbe" 
                        ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="Insert" runat="server" onclick="insert_Click" Text="Insert" />
        <asp:Button ID="Delete" runat="server" onclick="Delete_Click" Text="Delete" 
            style="height: 26px" />
        <asp:Button ID="Update" runat="server" onclick="Update_Click" Text="Update" />
    
    </div>
</asp:Content>