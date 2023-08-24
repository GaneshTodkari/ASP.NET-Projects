<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <br />
  <br /><br />
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-5">
                <h2 class="heading-section">Login</h2>
             </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="login-wrap p-0">
                    
                     <div class="form-group">
                        <asp:TextBox ID="idtxt" runat="server" class="form-control" placeholder="ID"></asp:TextBox>
                     </div>
                            
                     <div class="form-group">
                        <asp:TextBox ID="pdtxt" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                     </div>

                     <div class="form-group">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" class="form-control btn btn-primary submit px-3"/>
                     </div>
             </div>               
                 </div>
                    </div>
                </div>
</asp:Content>
