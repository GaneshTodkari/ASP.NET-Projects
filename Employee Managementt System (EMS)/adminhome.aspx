<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

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
                    ImageUrl="~/images/add.png" PostBackUrl="~/Add.aspx" Width="200px" 
                    onclick="ImageButton1_Click" />
                    
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#999999" 
                    ForeColor="Black" Font-Underline="false" Width="70px">Add</asp:LinkButton>
  </div>

  <div class="column" style="background-color:#ccc;">
   <asp:ImageButton ID="ImageButton2" runat="server" Height="130px" 
                    ImageUrl="~/images/edit.png" PostBackUrl="~/update.aspx" Width="200px" />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton5" runat="server" BackColor="#999999" 
                    ForeColor="Black" Font-Underline="false" Width="70px">Update</asp:LinkButton>
  </div>
   <div class="column" style="background-color:#ccc;">
    <asp:ImageButton ID="ImageButton5" runat="server" Height="130px" 
                    ImageUrl="~/images/calendar.png" PostBackUrl="~/attendance.aspx" 
           Width="200px" />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#999999" 
                    ForeColor="Black" Font-Underline="false" Width="100px" 
                    PostBackUrl="~/attendance.aspx">Attendance</asp:LinkButton>
  </div>

  <div class="column" style="background-color:#aaa;">
  <asp:ImageButton ID="ImageButton3" runat="server" Height="130px" 
                    ImageUrl="~/images/remove-user.png" PostBackUrl="~/delete.aspx" Width="200px" />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton6" runat="server" BackColor="#999999" 
                    ForeColor="Black" Font-Underline="false" Width="70px">Remove</asp:LinkButton>
  </div>

  <div class="column" style="background-color:#aaa;">
    <asp:ImageButton ID="ImageButton4" runat="server" Height="130px" 
                    ImageUrl="~/images/data.png" PostBackUrl="~/leavestatus.aspx" Width="200px" />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton7" runat="server" BackColor="#999999" 
                    ForeColor="Black" Font-Underline="false" Width="70px" 
                    PostBackUrl="~/leavestatus.aspx">Leave</asp:LinkButton>
  </div>
</div>

  </div>
    </center>


</asp:Content>

