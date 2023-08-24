<%@ Page Title="" Language="C#" MasterPageFile="~/empmstr.master" AutoEventWireup="true" CodeFile="leaveshow.aspx.cs" Inherits="leavestatus2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
   
     <div style="width: 50%">
 <h2 style="background-color: #009688">Leave Application</h2>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=G:\Project\emp.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True" 
            SelectCommand="SELECT * FROM [leavereq]" 
             ProviderName="<%$ ConnectionStrings:empConnectionString.ProviderName %>" 
             onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    
   

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
    OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound"
             EmptyDataText="No Data Found" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="leaveid" HeaderText="Leave ID" />
        <asp:BoundField DataField="leavetype" HeaderText="Leave Type" />
        <asp:BoundField DataField="startdate" HeaderText="Start Date" DataFormatString="{0:dd-MM-yyyy}" />
        <asp:BoundField DataField="enddate" HeaderText="End Date" DataFormatString="{0:dd-MM-yyyy}" />
        <asp:BoundField DataField="reason" HeaderText="Reason" />
        <asp:BoundField DataField="status" HeaderText="Status" />
        <asp:BoundField DataField="remark" HeaderText="Remark" />
        <asp:BoundField DataField="empid" HeaderText="Employee ID" />
    </Columns>
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <EditRowStyle BackColor="#999999" />
            <EmptyDataRowStyle BackColor="White" BorderColor="Black" />
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

</div>
</center>
    </asp:Content>

