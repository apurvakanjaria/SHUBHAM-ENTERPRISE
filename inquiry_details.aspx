<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/inquiry_details.aspx.cs" Inherits="inquiry_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [inquiry_details]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="inqd_id" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="table">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="inqd_id" HeaderText="inqd_id" ReadOnly="True" 
                    SortExpression="inqd_id" />
                <asp:BoundField DataField="inq_id" HeaderText="inq_id" 
                    SortExpression="inq_id" />
                <asp:BoundField DataField="i_id" HeaderText="i_id" SortExpression="i_id" />
                <asp:BoundField DataField="i_size" HeaderText="i_size" 
                    SortExpression="i_size" />
                <asp:BoundField DataField="i_capacity" HeaderText="i_capacity" 
                    SortExpression="i_capacity" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="i_rate" HeaderText="i_rate" 
                    SortExpression="i_rate" />
                <asp:BoundField DataField="inq_details" HeaderText="inq_details" 
                    SortExpression="inq_details" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    inqd_id</td>
                <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnadd" 
                        runat="server" CssClass="btn btn-warning" Text="ADD" onclick="btnadd_Click" />
                
                </td>
            </tr>
            <tr>
                <td class="style2">
                    inq_id</td>
                <td>
        <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    i_id</td>
                <td>
        <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="i_name" DataValueField="i_id" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        Width="300px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [item]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    i_size</td>
                <td>
        <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    i_capacity</td>
                <td>
        <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    qty</td>
                <td>
        <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    i_rate</td>
                <td>
        <asp:TextBox ID="TextBox7" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    inq_details</td>
                <td>
        <asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="inqdins" runat="server" onclick="inqdetailins_Click" 
            Text="Insert" />
        <asp:Button ID="inqddel" runat="server" onclick="inqdetaildel_Click" Text="Delete" />
        <asp:Button ID="inqdupd" runat="server" onclick="inqdupd_Click" Text="Update" />
        <br />
    
    </div>
</asp:Content>