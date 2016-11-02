<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_layoutAdmin.master" AutoEventWireup="true" CodeFile="News_Add.aspx.cs" Inherits="Admin_News_Add" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../Scripts/jquery-ui-1.10.3.min.js"></script>
    <script src="js/utils.js"></script>

    <script src="js/jquery.ui.widget.js"></script>
    <script src="js/jquery.iframe-transport.js"></script>
    <script src="js/jquery.fileupload.js"></script>    

    <link href="../Content/custom.jqueryUI.css" rel="stylesheet" />
    <div class="childTitle">Thêm tin tức</div>
    <div class="content100">
        <div class="control w500">
            <label>Tiêu đề</label>            
            <asp:TextBox ID="txtTitle" runat="server"  placeholder="Nhập nội dung" class="txtTitle"></asp:TextBox>
            <label>Link</label>            
             <asp:TextBox ID="txtLink" runat="server"  placeholder=""  CssClass="txtLink"></asp:TextBox>
        </div>
        <div class="control w500">
            <label>Ảnh</label>            
                 <div class="customUpload">
                    <div class="text">
                        Upload ảnh
                        </div>
                      <input type="file" name="file" id="btnFileUpload" />
                 </div>
            <asp:TextBox ID="txtLinkAnh" runat="server"  placeholder="Link ảnh" CssClass="txtLinkAnh" ></asp:TextBox>
        </div>
        
        <div class="control">
            <label>Nội dung</label>
            <CKEditor:CKEditorControl ID="CKEditor1" runat="server"></CKEditor:CKEditorControl>
        </div>
    </div>
    <div class="control w500">
    <div id="btnShowMore">Nâng cao</div>
          </div>
    <div id="showMorePanel">
        <div class="content100">
            <div class="control w500">
                <label>Tiêu đề (meta: Title)</label>            
                <asp:TextBox ID="txtMetaTitle" runat="server"  placeholder="Nhập nội dung" ></asp:TextBox>
            </div>
            <div class="control w500">
                <label>Từ khóa (meta:Keywords)</label>            
                <asp:TextBox ID="txtMetaKeywords" runat="server"  placeholder="Nhập nội dung" ></asp:TextBox>
            </div>
            <div class="control w500">
                <label>Giới thiệu (meta: Description)</label>            
                <asp:TextBox ID="txtMetaDescription" runat="server"  placeholder="Nhập nội dung" ></asp:TextBox>
            </div>    
             <div class="control w500">
                <label>Ngày đăng (Hẹn giờ đăng bài)</label>            
                <asp:TextBox ID="txtPublishDate" runat="server"  placeholder="Nhập nội dung" class="dtpicker"></asp:TextBox>
            </div>           
        </div>

    </div>
    <div class="buttonZone">
        <asp:Button ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Thoát" />
    </div>

    <script>
        $(function () {
            var isShowMore = false;
            $("#showMorePanel").hide();
            $("#btnShowMore").click(function () {
                if (!isShowMore) {
                    $("#showMorePanel").show();                    
                } else {
                    $("#showMorePanel").hide();
                }
                isShowMore = !isShowMore;
            });

            //date time picker
            $(".dtpicker").datepicker({
                showOtherMonths: true,
                selectOtherMonths: true
            });

            $(".txtTitle").change(function () {
                $(".txtLink").val(bodauTiengViet($(this).val().trim()));
            });
        })

        $(function () {
            $('#btnFileUpload').fileupload({
                url: '/FileUploadHandler.ashx?upload=start',
                add: function (e, data) {
                    console.log('add', data);
                    $('#progressbar').show();
                    data.submit();
                },
                progress: function (e, data) {
                    var progress = parseInt(data.loaded / data.total * 100, 10);
                    $('#progressbar div').css('width', progress + '%');
                },
                success: function (response, status) {
                    $('#progressbar').hide();
                    $('#progressbar div').css('width', '0%');
                    console.log('success', response);
                    $(".customUpload").css("background-image", "url(" + response + ")")
                    $(".txtLinkAnh").val(response);
                },
                error: function (error) {
                    $('#progressbar').hide();
                    $('#progressbar div').css('width', '0%');
                    console.log('error', error);
                }
            });
        });
    </script>
 
</asp:Content>

