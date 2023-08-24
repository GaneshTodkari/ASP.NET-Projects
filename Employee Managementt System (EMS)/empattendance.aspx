<%@ Page Title="" Language="C#" MasterPageFile="~/empmstr.master" AutoEventWireup="true" CodeFile="empattendance.aspx.cs" Inherits="empattendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>
 * {box-sizing: border-box}


input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}


hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}


.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}


a {
  color: dodgerblue;
}


.signin {
  background-color: #f1f1f1;
  text-align: center;
}

.dropbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}


.dropdown-content a:hover {background-color: #ddd;}


.dropdown:hover .dropbtn {background-color:inherit;}
 </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
<div style="width: 50%">
 <h2 style="background-color: #009688; width: 649px;">Attendance</h2>
 <h3 style="color:#FFFFFF; background-color: #808080; height: 35px; width: 215px;">Search Employee:</h3>
 
</div>  
</center>
    <div class="row justify-content-center">
       
            <div class="col-md-6 col-lg-4">
           
                <div class="login-wrap p-0">
                
                    <div class="form-group">
                    
                <br /><br />
             </div>
                <div class="form-group">
                <center>
            </center>
            </div>
             <div class="form-group">
            <center>
            <br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    EmptyDataText="No Data Found" AutoGenerateColumns="False">
                    <Columns>
                       
                        
                        <asp:BoundField DataField="aid" HeaderText="Attendance ID" />
                        <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:dd-MM-yyyy-}" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                        <asp:BoundField DataField="empid" HeaderText="Employee ID" />
                        <asp:BoundField DataField="name" HeaderText="Name" />

                    </Columns>
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataRowStyle BackColor="White" BorderColor="Black" BorderWidth="3px" />
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
            </center>
      </div>
      </div>
</asp:Content>

