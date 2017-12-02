<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" AutoEventWireup="true" CodeFile="TrangDangKy.aspx.cs" Inherits="TrangWeb_TrangDangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">

        $(document).ready(function () {

            $(".selectpicker").selectpicker();

        });

    </script>
    <div id="all">

        <div id="content">
            <div class="container">

               <%-- <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#">Trang chủ</a>
                        </li>
                        <li>New account / Sign in</li>
                    </ul>

                </div>--%>

                <div class="col-md-6">
                    <div class="box">
                        <h1>ĐĂNG KÝ TÀI KHOẢN</h1>

                        <p class="lead">Bạn đã đăng ký tài khoản của chúng tôi chưa ?</p>
                        <p>Hãy đăng ký ngay để nhận được những ưu đãi và tiện ích chúng tôi mang lại dành cho bạn</p>
                        <p class="text-muted">Nếu bạn có thắc mắc vui lòng<a href="contact.html"> liên hệ với chúng tôi</a>, phục vụ 24/7.</p>

                        <hr>
                        <div class="form-group">

                            <div class="form-group">
                                <label for="TextBox_NameDK">Họ tên</label>
                                <asp:TextBox ID="TextBox_NameDK" runat="server" CssClass="form-control" placeholder="Tên khách hàng"></asp:TextBox>

                                <em class="text-danger">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_NameDK" runat="server" ErrorMessage="Nhập tên khách hàng" ValidationGroup="DangKy" ControlToValidate="TextBox_NameDK"></asp:RequiredFieldValidator>&ensp;
                                </em>
                            </div>
                            <div class="form-group">
                                <label for="TextBox_EmailDK">Tên đăng nhập</label>
                                <asp:TextBox ID="TextBox_EmailDK" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                                <em class="text-danger">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_EmailDK" runat="server" ErrorMessage="Nhập Tên đăng nhập" ControlToValidate="TextBox_EmailDK" ValidationGroup="DangKy"></asp:RequiredFieldValidator>&ensp;
                                </em>
                            </div>
                            <div class="form-group">
                                <label for="TextBox_PassDK">Mật khẩu</label>
                                <asp:TextBox ID="TextBox_PassDK" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>

                                <em class="text-danger">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_PassDK" runat="server" ErrorMessage="Nhập Mật khẩu" ControlToValidate="TextBox_PassDK" ValidationGroup="DangKy"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_PassDK" runat="server" ErrorMessage="Mật khẩu tối thiểu là 8 kí tự và tối đa là 20 kí tự" ControlToValidate="TextBox_PassDK" ValidationExpression="^[a-zA-Z0-9]{8,20}$" ValidationGroup="DangKy"></asp:RegularExpressionValidator>
                                </em>
                            </div>
                            <div class="form-group">
                                <label for="TextBox_NgaySinh">Ngày sinh</label>
                                <asp:TextBox ID="TextBox_NgaySinh" runat="server" CssClass="form-control" placeholder="Ngày sinh" TextMode="Date"></asp:TextBox>
                                <em class="text-danger">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_NgaySinh" runat="server" ErrorMessage="Nhập ngày sinh" ValidationGroup="DangKy" ControlToValidate="TextBox_NgaySinh"></asp:RequiredFieldValidator>
                                </em>
                            </div>
                            <div class="form-group">
                                <label for="TextBox_SDT">Số điện thoại</label>

                                <asp:TextBox ID="TextBox_SDT" runat="server" CssClass="form-control" placeholder="Số điện thoại" TextMode="Number"></asp:TextBox>
                                <em class="text-danger">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_SDT" runat="server" ErrorMessage="Nhập Mật khẩu" ControlToValidate="TextBox_SDT" ValidationGroup="DangKy"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_SDT" runat="server" ErrorMessage="Số điện thoại gồm 10 hoặc 11 số" ControlToValidate="TextBox_SDT" ValidationExpression="\d{10,11}" ValidationGroup="DangKy"></asp:RegularExpressionValidator>
                                </em>
                            </div>
                            <div class="form-group">
                                <label for="TextBox_PassDK">Giới tính</label>
                                <asp:DropDownList ID="DropDownList_GioiTinh" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="true">Nam</asp:ListItem>
                                    <asp:ListItem Value="false">Nữ</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label for="TextBox_DiaChi">Địa chỉ</label>
                                <asp:TextBox ID="TextBox_DiaChi" runat="server" CssClass="form-control" placeholder="Địa chỉ" TextMode="MultiLine"></asp:TextBox>

                                <em class="text-danger">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_DiaChi" runat="server" ErrorMessage="Nhập Địa chỉ" ValidationGroup="DangKy" ControlToValidate="TextBox_DiaChi"></asp:RequiredFieldValidator>
                                </em>
                            </div>

                            <div class="text-center">
                                <%--<button type="submit" class="btn btn-primary" role="button" runat="server" id="btn_DangKy" onserverclick="btn_DangKy_ServerClick"><i class="fa fa-user-md"></i>Register</button>--%>
                                <asp:Button ID="Button_DangKy" runat="server" Text="Đăng ký" ValidationGroup="DangKy" CssClass="btn btn-primary" OnClick="Button_DangKy_Click" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" runat="server" id="fdangnhap">
                    <div class="box">
                        <h1>ĐĂNG NHẬP TÀI KHOẢN</h1>
                        <div class="form-group">
                            <label for="TextBox_EmailDN">Tên đăng nhập</label>
                            <asp:TextBox ID="TextBox_EmailDN" runat="server" placeholder="Email" CssClass="form-control" TextMode="Email"></asp:TextBox>
                            <span class="text-danger">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator_EmailDN" runat="server" ErrorMessage="Nhập tên đăng nhập" ControlToValidate="TextBox_EmailDN" ValidationGroup="DangNhap" style="font-style: italic"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="TextBox_PassDN">Mật khẩu</label>
                            <asp:TextBox ID="TextBox_PassDN" runat="server" placeholder="Mật khẩu" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            <span class="text-danger">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator_PassDN" runat="server" ErrorMessage="Nhập mật khẩu" ControlToValidate="TextBox_PassDN" ValidationGroup="DangNhap" style="font-style: italic"></asp:RequiredFieldValidator>
                            </span>
                        </div>

                        <div class="text-center">
                            
                            <asp:LinkButton ID="LinkButton_DangNhap" CssClass="btn btn-primary" runat="server" OnClick="LinkButton_DangNhap_Click" ValidationGroup="DangNhap"><i class="fa fa-sign-in"></i> Đăng nhập</asp:LinkButton>
                           &nbsp;&nbsp;&nbsp;
                             <asp:HyperLink ID="HyperLink1" NavigateUrl="~/QuenMK.aspx" runat="server" Font-Italic="True">Quên mật khẩu ?</asp:HyperLink>
                        </div>

                    </div>
                </div>


            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
    </div>
</asp:Content>

