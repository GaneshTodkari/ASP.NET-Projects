<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 57%;
            height: 317px;
            margin-left: 0px;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
<h1 style="color: black; background-color: gray">Employee Management</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>



    <table class="style1">
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="Black" 
                    BorderWidth="2px" Height="100px" ImageAlign="Middle" 
                    ImageUrl="~/images/setting.png" PostBackUrl="~/adminlogin.aspx" 
                    BackColor="#CCCCCC" />
                    <br /><br />
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#AAAAAA" 
                    BorderColor="Black" BorderWidth="2px" ForeColor="Black" Width="100px" 
                    Font-Underline="false" PostBackUrl="~/adminlogin.aspx">Admin</asp:LinkButton>
            </td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="Black" 
                    BorderWidth="2px" Height="100px" ImageAlign="Middle" 
                    ImageUrl="~/images/user.png" PostBackUrl="~/emplogin.aspx" 
                    BackColor="#AAAAAA" />
                    <br /><br />
                <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#CCCCCC" 
                    BorderColor="Black" BorderWidth="2px" ForeColor="Black" Width="100px" 
                    Font-Underline="false" PostBackUrl="~/emplogin.aspx" >Employee</asp:LinkButton>
            </td>
        </tr>
    </table>



</center>
</asp:Content>

