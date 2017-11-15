<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="SuaSanPham.aspx.cs" Inherits="Admin_SuaSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<script src="http://code.jquery.cm/jquery-latest.min.js" type="text/javascript"></script>
    <script type="text/javascript">
            function readURL(input){
                if(input.files && input.files[0])
                {
                    var r = new FileReader();
                    r.onload = function (e) {
                        $('#Image1')
                        .attr('src', e.target.result)
                        .width(100)
                        .height(100);
                    };
                    r.readAsDataURL(input.files[0]);
                }
                var i = document.getElementById("Image1");
                i.src = e.target.result;
                i.style.width = 100;
                i.style.height = 100;


}
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-horizontal">
        
        <div class="form-group">
        <asp:Label ID="Label2" runat="server" CssClass="control-label col-md-2" Text="Tên sản phẩm: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenSP" ErrorMessage="Vui lòng nhập tên sản phẩm !">(*)</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
        <asp:Label ID="Label3" runat="server" CssClass="control-label col-md-2" Text="Loại sản phẩm: "></asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="ddlLoaiSP" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlLoaiSP" ErrorMessage="Vui lòng nhập số điện thoại !">(*)</asp:RequiredFieldValidator>
                
            </div>
        </div>
<div class="form-group">
        <asp:Label ID="Label4" runat="server" CssClass="control-label col-md-2" Text="Đơn giá: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtDonGia" TextMode="Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDonGia" ErrorMessage="Vui lòng nhập đơn giá !">(*)</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
        <asp:Label ID="Label5" runat="server" CssClass="control-label col-md-2" Text="Minh họa: "></asp:Label>
            <div class="col-md-10">
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />                       
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-10">  
                <asp:Label ID="Label6" runat="server" CssClass="control-label col-md-2" Text="Hình ảnh: "></asp:Label>                         
                <asp:FileUpload ID="FileUploadHinh" runat="server"/>
            </div>
        </div>
         <div class="form-group">
        <asp:Label ID="Label1" runat="server" CssClass="control-label col-md-2" Text="Chi tiết: "></asp:Label>
            <div class="col-md-10">
                 <CKEditor:CKEditorControl ID="ckeChitiet" runat="server">
                </CKEditor:CKEditorControl>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ckeChitiet" ErrorMessage="Vui lòng nhập chi tiết !">(*)</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input type="button" value="Cập nhật" runat="server" onserverclick="btCapNhat_ServerClick"   class="btn btn-default" />
                 <a href="SanPham.aspx">Quay lại</a>
            </div>
        </div>
    </div>
<div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
   
</div>

</asp:Content>

