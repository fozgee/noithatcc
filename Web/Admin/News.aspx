<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_layoutAdmin.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Admin_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../Scripts/common.js"></script> 
    <div class="childMenu">
        <ul>
            <li><a href="News_Add.aspx"> Thêm tin tức</a></li>
        </ul>
    </div>
    <div id="newszone">
        <table cellspacing="0">
            <thead>
                <tr>
                    <td>ID</td>
                    <td>Tiêu đề</td>
                    <td>Người đăng</td>
                    <td>Ngày tạo</td>
                    <td>Ngày đăng</td>
                    <td>...</td>
                </tr>
            </thead>
            <tbody data-bind="foreach:news">
                <tr>
                    <td data-bind="text:Id"></td>
                    <td data-bind="text:Title"></td>
                    <td data-bind="html:Author"></td>
                    <td data-bind="text: parseJsonDate(CreatedDate)"></td>
                    <td data-bind="text: parseJsonDate(PublishDate)"></td>
                    <td>...</td>
                </tr>
            </tbody>
        </table>
    </div>
     <script>
        $(function () {            
            $.getJSON("/FService.asmx/GetAllNews").done(function (res) {
                ko.applyBindings({ news: res }, $("#newszone")[0]);
            });            
        });
    </script>
</asp:Content>


