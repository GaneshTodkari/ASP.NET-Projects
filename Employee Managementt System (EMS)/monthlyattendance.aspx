<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="monthlyattendance.aspx.cs" Inherits="monthlyattendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <center>
     
     <div style="width: 50%">
 <h2 style="background-color: #009688">Monthly Attendance</h2>
 <h3 style="color:#FFFFFF; background-color: #808080; height: 35px;">Search Month:</h3>
 
</div> 
   <asp:Label ID="Label1" runat="server" Text="Month:" class="other" ForeColor="White"></asp:Label>
    <asp:TextBox ID="month" runat="server" style="top: 264px; left: 59px; width: 174px;"></asp:TextBox>
    <br />
    &nbsp;&nbsp;
         <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Year:" class="other" ForeColor="White"></asp:Label>
   <asp:TextBox ID="year" runat="server" style="top: 264px; left: 59px; " Width="177px"></asp:TextBox>
   <br />
         <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
        ForeColor="Black" />
         <br />
    <asp:GridView ID="GridView1" runat="server" ForeColor="#333333" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" OnRowDataBound="GridView1_RowDataBound"
             GridLines="None" EmptyDataText="No Records">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <EmptyDataRowStyle BackColor="Gray" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
         <br />
    </center>
</asp:Content>

