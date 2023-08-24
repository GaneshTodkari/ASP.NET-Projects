<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="leavestatus.aspx.cs" Inherits="leavestatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <center>
   <div style="width: 50%">
 <h2 style="background-color: #009688">Leave Application</h2>
 </div> 
 <div style="width: 60%">
    <asp:GridView ID="GridView1" runat="server" 
        DataSourceID="SqlDataSource1"
        
         
        onrowcommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" 
             AutoGenerateColumns="False" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>


        <asp:BoundField DataField="leaveid" HeaderText="Leave ID" />
        <asp:BoundField DataField="empid" HeaderText="Employee ID" />
        <asp:BoundField DataField="leavetype" HeaderText="Leave Type" />
        <asp:BoundField DataField="startdate" HeaderText="Start Date" DataFormatString="{0:dd-MM-yyyy}"/>
        <asp:BoundField DataField="enddate" HeaderText="End Date" DataFormatString="{0:dd-MM-yyyy}" />
        <asp:BoundField DataField="reason" HeaderText="Reason" />
        <asp:BoundField DataField="status" HeaderText="Status" />
       
            <asp:ButtonField ButtonType="Button" CommandName="approve" Text="Approve" />
            <asp:ButtonField ButtonType="Button" CommandName="deny" Text="Deny" />
            </Columns>
        <EditRowStyle BackColor="#999999" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:empConnectionString %>" 
        SelectCommand="SELECT [leaveid], [empid], [leavetype], [startdate], [enddate], [reason], [status] FROM [leavemanage]" 
            onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
            
            </center>
            
</div>
</asp:Content>

