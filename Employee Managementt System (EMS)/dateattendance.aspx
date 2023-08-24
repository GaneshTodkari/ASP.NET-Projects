<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="dateattendance.aspx.cs" Inherits="dateattendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center> 
 <div style="width: 50%">
 <h2 style="background-color: #009688">Employee Attendance</h2>
 <h3 style="color:#FFFFFF; background-color: #808080; height: 35px;">Select Date:</h3>
 
</div>  
                    <asp:Calendar ID="cal" runat="server" SelectionMode="Day" 
                        onselectionchanged="cal_SelectionChanged" Width="20%" BackColor="White" BorderColor="#999999" 
                       CellPadding="4" Font-Size="9pt" ForeColor="Black" ShowGridLines="true" ShowNextPrevMonth="true">
                         <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                         <SelectorStyle BackColor="#CCCCCC" />
                         <WeekendDayStyle BackColor="#FFFFCC"  Font-Size="Smaller"/>
                         <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                         <OtherMonthDayStyle ForeColor="#808080" />
                         <NextPrevStyle VerticalAlign="Bottom" />
                         <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" Font-Size="14pt" />
                    </asp:Calendar>
                    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
        ForeColor="Black" />
        <br />
           <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Vertical" OnRowDataBound="GridView1_RowDataBound"
            style="z-index: 1;  top: 239px;  height: 133px; width: 402px" 
             onselectedindexchanged="GridView1_SelectedIndexChanged" 
             EmptyDataText="No Data Found" EmptyDataRowStyle-BackColor="White">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    </center>
</asp:Content>

