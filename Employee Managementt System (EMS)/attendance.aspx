<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="attendance.aspx.cs" Inherits="monthlyattendance" %>

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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>


<div style="width: 50%">
 <h2 style="background-color: #009688">Attendance</h2>
 <h3 style="color:#FFFFFF; background-color: #808080; height: 35px; width: 215px;">Search by:</h3>

</div>  
<br /><br />
<div style="width: 50%">
<div class="row">
  <div class="column" style="background-color:#aaa;">
      <asp:Button ID="Button1" runat="server" Text="Month" 
          PostBackUrl="~/monthlyattendance.aspx" />
  </div>
  <div class="column" style="background-color:#bbb;">
      <asp:Button ID="Button2" runat="server" Text="Employee" 
          onclick="Button2_Click" PostBackUrl="~/admin_emp_attandance.aspx" />
  </div>
</div>

<div class="row">

  <div class="column" style="background-color:#ccc;">
      <asp:Button ID="Button3" runat="server" Text="Date" 
          PostBackUrl="~/dateattendance.aspx" />
  </div>
</div>

</div>
</center>
</asp:Content>

