<%@ Page Title="" Language="C#" MasterPageFile="~/empmstr.master" AutoEventWireup="true" CodeFile="leaveapp.aspx.cs" Inherits="leaveapp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            box-sizing: border-box;
        }

        .container {
            margin: auto;
            width: 50%;
            padding: 10px;
        }

        .label-column {
            width: 20%;
            text-align: right;
            padding-right: 10px;
            background-color: rgba(255, 255, 255, 0.7);
            color: black;
        }

        .input-column {
            width: 50%;
        }

        input[type=text],
        input[type=password] {
            
            height: 5px;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
            border: solid;
        }

        input[type=text]:focus,
        input[type=password]:focus {
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

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .a {
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
        <table style="background-color: rgba(255, 255, 255, 0.7)">
            <tr>
                <td class="label-column">
                    <asp:Label ID="Label7" runat="server" Text="Leave id:" class="other"></asp:Label>
                </td>
                <td class="input-column">
                    <asp:TextBox ID="levid" runat="server" ReadOnly="True" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="input-column">
                    <asp:Button ID="generate" runat="server" onclick="Button2_Click" Text="Generate" CssClass="registerbtn" />
                </td>
            </tr>
            <tr>
                <td class="label-column">
                    <asp:Label ID="Label6" runat="server" Text="Leave Type:" class="other"></asp:Label>
                </td>
                <td class="input-column" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="leavetype" 
                        DataValueField="leavetype" onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
                        <asp:ListItem>Vacation Leave</asp:ListItem>
                        <asp:ListItem>Sick Leave</asp:ListItem>
                        <asp:ListItem>Maternity/Paternity Leave</asp:ListItem>
                        <asp:ListItem>Parental Leave</asp:ListItem>
                        <asp:ListItem>Bereavement Leave</asp:ListItem>
                        <asp:ListItem>Personal Leave</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="label-column">
                    <asp:Label ID="Label3" runat="server" Text="From:" class="other"></asp:Label>
                </td>
                <td class="input-column">
                    <asp:TextBox ID="from" runat="server" OnTextChanged="from_TextChanged" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="input-column">
                    <asp:Calendar ID="fromcal" runat="server" SelectionMode="Day" OnSelectionChanged="fromcal_SelectionChanged" BackColor="White" BorderColor="#999999" CellPadding="4" Font-Size="9pt" ForeColor="Black" ShowGridLines="true" ShowNextPrevMonth="true">
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <WeekendDayStyle BackColor="#FFFFCC" Font-Size="Smaller" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" Font-Size="14pt" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="label-column">
                    <asp:Label ID="Label4" runat="server" Text="To:" class="other"></asp:Label>
                </td>
                <td class="input-column">
                    <asp:TextBox ID="to" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="input-column">
                    <asp:Calendar ID="tocal" runat="server" SelectionMode="Day" OnSelectionChanged="tocal_SelectionChanged" BackColor="White" BorderColor="#999999" Width="100%" CellPadding="4" Font-Size="9pt" ForeColor="Black" ShowGridLines="true" ShowNextPrevMonth="true">
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <WeekendDayStyle BackColor="#FFFFCC" Font-Size="Smaller" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" Font-Size="14pt" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="label-column">
                    <asp:Label ID="Label5" runat="server" Text="Reason:" class="other"></asp:Label>
                </td>
                <td class="input-column" colspan="2">
                    <asp:TextBox ID="reason" runat="server" CssClass="textbox" BorderColor="Black" 
                        BorderWidth="2px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="input-column" colspan="3">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" CssClass="registerbtn"/>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
