<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThemSanPham.aspx.cs" MasterPageFile="~/Admin/Admin.master" Inherits="Admin_ThemSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        <asp:Label ID="Label3" runat="server" CssClass="control-label col-md-2" Text="Nhà sản xuất: "></asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="ddlNSX" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlNSX" ErrorMessage="Vui lòng chọn nhà sản xuất !">(*)</asp:RequiredFieldValidator>
                
            </div>
        </div>
<div class="form-group">
        <asp:Label ID="Label4" runat="server" CssClass="control-label col-md-2" Text="Đơn giá: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtDonGia" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDonGia" ErrorMessage="Vui lòng nhập đơn giá !">(*)</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
        <asp:Label ID="Label5" runat="server" CssClass="control-label col-md-2" Text="Hình ảnh: "></asp:Label>
            <div class="col-md-10">
                <asp:FileUpload ID="FileUploadHinh"  runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUploadHinh" ErrorMessage="Vui lòng nhập hình ảnh !">(*)</asp:RequiredFieldValidator>
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
                <input type="button" value="Thêm mới" runat="server" onserverclick="btThem_ServerClick"  class="btn btn-default" />
                 <a href="SanPham.aspx">Quay lại</a>
            </div>
        </div>
    </div>
<div>
   
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
   
</div>
</asp:Content>
