<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ThemNSX.aspx.cs" Inherits="Admin_ThemNSX" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-horizontal">
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" CssClass="control-label col-md-2" Text="Nhà sản xuất: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtNSX" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNSX" ErrorMessage="Vui lòng nhập nhà sản xuất !">(*)</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-10">  
                <asp:Label ID="Label6" runat="server" CssClass="control-label col-md-2" Text="Hình ảnh: "></asp:Label>                         
                <asp:FileUpload ID="FileUploadHinh" runat="server"/>
            </div>
        </div>
     <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input type="button" value="Thêm mới" runat="server" onserverclick="BtThem_ServerClick"  class="btn btn-default" />
                 <a href="NhaSanXuat.aspx">Quay lại</a>
            </div>
        </div>
    </div>
    <div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
   
</div>
</asp:Content>

