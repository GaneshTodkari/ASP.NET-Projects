<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div>
          <div style="width: 50%">
 <h2 style="background-color: #009688">Update</h2>
 <h3 style="color:#FFFFFF; background-color: #808080; height: 35px;">Search Employee:</h3>
 
</div> 
            <div>
                <asp:RadioButtonList ID="search" runat="server" AutoPostBack="True"
                    Height="27px" RepeatDirection="Horizontal"
                    style="z-index: 1; left: 59px; top: 210px; height: 27px; width: 445px"
                    OnSelectedIndexChanged="search_SelectedIndexChanged" BackColor="#999999"
                    ForeColor="Black">
                    <asp:ListItem Value="name">By Name</asp:ListItem>
                    <asp:ListItem Value="id">By Id</asp:ListItem>
                </asp:RadioButtonList>

                <br />

                <asp:TextBox ID="TextBox1" runat="server"
                    style="top: 264px; left: 59px; width: 174px;"></asp:TextBox>
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Search"
                    style="z-index: 1; left: 102px; top: 312px" OnClick="Button1_Click" />
                <br />
                <br />
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
    OnRowCancelingEdit="GridView1_RowCancelingEdit" AutoGenerateEditButton="True"
    ForeColor="#333333" CellPadding="4" DataKeyNames="empid" GridLines="None" 
                    EmptyDataText="Not Found">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

    <Columns>
        <asp:BoundField DataField="empid" HeaderText="Employee ID" ReadOnly="True" />

        <asp:TemplateField HeaderText="Name">
            <EditItemTemplate>
                <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="lblName" runat="server" Text='<%# Bind("name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Email">
            <EditItemTemplate>
                <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Role">
            <EditItemTemplate>
                <asp:DropDownList ID="ddlRole" runat="server" DataTextField="role" DataValueField="roleid">
                    <asp:ListItem Value="3">Employee</asp:ListItem>
                    <asp:ListItem Value="1">HR</asp:ListItem>
                </asp:DropDownList>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="lblRole" runat="server" Text='<%# Bind("role") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>


                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataRowStyle BackColor="White" BorderColor="Black" />
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

        </div>
    </center>
</asp:Content>

