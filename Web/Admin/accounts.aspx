<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_layoutAdmin.master" AutoEventWireup="true" CodeFile="accounts.aspx.cs" Inherits="Admin_accounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="childMenu">
        <ul>
            <li><a href="account_add.aspx"> Thêm tài khoản</a></li>
        </ul>
    </div>
    <div id="accZone">
        <table cellspacing="0">
            <thead>
                <tr>
                    <td>ID</td>
                    <td>Tên đăng nhập</td>
                    <td>Tên hiển thị</td>
                    <td>Giới thiệu</td>
                    <td>Vai trò</td>
                    <td>...</td>
                </tr>
            </thead>
            <tbody data-bind="foreach:accounts"> 
                <tr>
                    <td data-bind="text:Id"></td>
                    <td data-bind="text: LoginName"></td>
                    <td data-bind="text: DisplayName"></td>
                    <td data-bind="text: Description"></td>
                    <td data-bind="text: Role"></td>
                  
                    <td>...</td>
                </tr>
            </tbody>
        </table>
    </div>
    <script>
        $(function () {            
            $.getJSON("/FService.asmx/GetAllAccounts").done(function (res) {
                ko.applyBindings({ accounts: res }, $("#accZone")[0]);
            });            
        });
    </script>
</asp:Content>

