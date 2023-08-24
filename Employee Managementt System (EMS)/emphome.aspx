<%@ Page Title="" Language="C#" MasterPageFile="~/empmstr.master" AutoEventWireup="true" CodeFile="emphome.aspx.cs" Inherits="emphome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
<style>
.column {
  float: left;
  width: 50%;
  padding: 10px;
}


.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
<center>
    <div style="width: 35%;">
    
<div class="row">
  <div class="column" style="background-color:#aaa;">
   <asp:ImageButton ID="ImageButton1" runat="server" Height="130px" 
                    ImageUrl="~/images/data.png" PostBackUrl="~/leaveapp.aspx" Width="200px" 
                    onclick="ImageButton1_Click" />
                    
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#999999" 
                    ForeColor="Black" Font-Underline="false" PostBackUrl="~/leaveapp.aspx">Leave Application</asp:LinkButton>
  </div>

  <div class="column" style="background-color:#ccc;">
   <asp:ImageButton ID="ImageButton2" runat="server" Height="130px" 
                   ImageUrl="~/images/check-list.png" PostBackUrl="~/leaveshow.aspx"  Width="200px" />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton5" runat="server" BackColor="#999999" 
                    ForeColor="Black" Font-Underline="false" PostBackUrl="~/leaveshow.aspx">Leave Status</asp:LinkButton>
  </div>
   <div class="column" style="background-color:#bbb;">
     <asp:ImageButton ID="ImageButton3" runat="server" Height="130px" 
                   ImageUrl="~/images/calendar.png" PostBackUrl="~/empattendance.aspx"  Width="200px" />
                 <br />
                <br />
                <asp:LinkButton ID="LinkButton6" runat="server" BackColor="#999999" 
                    ForeColor="Black" Font-Underline="false" PostBackUrl="~/empattendance.aspx">Attendance</asp:LinkButton>
  </div>
</div>
    
   <div>
    </asp:Content>

