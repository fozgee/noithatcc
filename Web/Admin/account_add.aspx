<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_layoutAdmin.master" AutoEventWireup="true" CodeFile="account_add.aspx.cs" Inherits="Admin_account_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="childTitle">Thêm tài khoản</div>
    <div class="content100">
        <div class="control w500">
            <label>Tên đăng nhập</label>            
            <asp:TextBox ID="txtLoginName" runat="server" placeholder="Nhập nội dung"></asp:TextBox>
        </div>
        <div class="control w500">
            <label>Tên hiển thị</label>           
             <asp:TextBox ID="txtDisplayName" runat="server" placeholder="Nhập nội dung"></asp:TextBox>
        </div>
        <div class="control w500">
            <label>Quyền</label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Đăng bài</asp:ListItem>
                <asp:ListItem>Quản trị</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="buttonZone">
        <asp:Button ID="btnAdd" runat="server" Text="Thêm" OnClick="btnAdd_Click" />
        <asp:Button ID="btnExit" runat="server" Text="Thoát" />
        
    </div>
</asp:Content>

