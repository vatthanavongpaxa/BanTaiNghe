<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ThongTinKH.aspx.cs" Inherits="Admin_ThongTinKH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-horizontal">
        <div class="form-group">
        <asp:Label ID="Label2" runat="server" CssClass="control-label col-md-2" Text="Họ tên khách hàng: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Vui lòng nhập họ tên !">(*)</asp:RequiredFieldValidator>--%>
            </div>
        </div>
        <div class="form-group">
        <asp:Label ID="Label3" runat="server" CssClass="control-label col-md-2" Text="Giới tính: "></asp:Label>
            <div class="col-md-10">
                <asp:CheckBox ID="chkGioiTinh" runat="server" Text="Nam" />
            </div>
        </div>
        <div class="form-group">
        <asp:Label ID="Label4" runat="server" CssClass="control-label col-md-2" Text="Ngày sinh: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtNgay" runat="server" OnPreRender="txtMatKhau_PreRender"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Vui lòng nhập mật khẩu !">(*)</asp:RequiredFieldValidator>--%>
            </div>
        </div>
        <div class="form-group">
        <asp:Label ID="Label6" runat="server" CssClass="control-label col-md-2" Text="Số điện thoại: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSDT" ErrorMessage="Vui lòng nhập số điện thoại !">(*)</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSDT" ErrorMessage="Số điện thoại gồm 10 số hoặc 11 số" ValidationExpression="\d{10,11}">(*)</asp:RegularExpressionValidator>--%>
            </div>
        </div>
        <div class="form-group">
        <asp:Label ID="Label1" runat="server" CssClass="control-label col-md-2" Text="Địa chỉ: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Vui lòng nhập email !">(*)</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không đúng định dạng" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>--%>
            </div>
        </div>
        <div class="form-group">
        <asp:Label ID="Label7" runat="server" CssClass="control-label col-md-2" Text="Email: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmail" ErrorMessage="Vui lòng nhập email !">(*)</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không đúng định dạng" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>--%>
            </div>
        </div>
        <div class="form-group">
        <asp:Label ID="Label5" runat="server" CssClass="control-label col-md-2" Text="Mật khẩu: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" OnPreRender="txtMatKhau_PreRender"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Vui lòng nhập mật khẩu !">(*)</asp:RequiredFieldValidator>--%>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <%--<input type="button" id="btTraLoi" value="Thêm mới" runat="server"  class="btn btn-default" />--%>
                <a href="KhachHang.aspx">Quay lại</a>
            </div>
        </div>
    </div>
<div>
   
    <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />--%>
   
</div>
</asp:Content>

