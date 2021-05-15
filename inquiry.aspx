<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/inquiry.aspx.cs" Inherits="inquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [inquiry]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="inq_id" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="319px" 
            CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="inq_id" HeaderText="inq_id" ReadOnly="True" 
                    SortExpression="inq_id" />
                <asp:BoundField DataField="c_id" HeaderText="c_id" SortExpression="c_id" />
                <asp:BoundField DataField="inq_details" HeaderText="inq_details" 
                    SortExpression="inq_details" />
                <asp:BoundField DataField="inq_status" HeaderText="inq_status" 
                    SortExpression="inq_status" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    inq_id</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    c_id</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="c_name" DataValueField="c_id">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rdfc_id" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Please Choose id" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    inq_details</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfinq_details" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter Inquiry Details" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    inq_status</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rdfinq_status" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter inquiry Status" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="inqins" runat="server" onclick="inqins_Click" Text="Insert" />
        <asp:Button ID="inqdel" runat="server" onclick="inqdel_Click" Text="Delete" />
        <asp:Button ID="inqupd" runat="server" onclick="inqupd_Click" Text="Update" />
    
</asp:Content>