<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            box-sizing: border-box;
        }


        input[type=text], input[type=password], input[type=date] {
            width: 50%;
            padding: 5px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=text]:focus, input[type=password]:focus, input[type=date]:focus {
            background-color: #ddd;
            outline: none;
        }


        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        
        .registerbtn {
            background-color: #009688;
            color:Black;
            padding: 16px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }


        .registerbtn:hover {
            opacity: 1;
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

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropbtn {
            background-color: inherit;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div style="width: 50%">
 <h2 style="background-color: #009688">Add</h2>

 
</div> 
    </center>

    <div class="row justify-content-center">

        <br />
        <div class="col-md-6 col-lg-4">

            <div class="login-wrap p-0">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Name:" class="other"></asp:Label>
                    <asp:TextBox ID="enav" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="enav" ErrorMessage="Enter Name" ForeColor="Black"></asp:RequiredFieldValidator>
                    <br />

                    <asp:Label ID="Label7" runat="server" Text="ID:" class="other"></asp:Label>
                    <asp:TextBox ID="eid" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Generate" />
                    <br />

                    <asp:Label ID="Label3" runat="server" Text="Email:" class="other"></asp:Label>
                    <asp:TextBox ID="eemail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="eemail" ErrorMessage="Invalid" ForeColor="Black" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />

                    <asp:Label ID="Label4" runat="server" Text="Date Of Joining:" class="other"></asp:Label>
                    <br />
                    <asp:TextBox ID="dob" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="dob" ErrorMessage="Enter Date Of Birth" ForeColor="Black"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Role:" class="other"></asp:Label>
                    <br />
                    <div class="dropdown">
                        <asp:DropDownList ID="DropDownList1" runat="server" class="a">
                            <asp:ListItem Value="3">Employee</asp:ListItem>
                            <asp:ListItem Value="1">HR</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br /><br />

                    <asp:Label ID="Label6" runat="server" Text="Password:" class="other"></asp:Label>

                    <asp:TextBox ID="epd" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="enav" ErrorMessage="Enter Password" ForeColor="Black"></asp:RequiredFieldValidator>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" class="registerbtn" />

                </div>
            </div>
        </div>
    </div>



</asp:Content>


