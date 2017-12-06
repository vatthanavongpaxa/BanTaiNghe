<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" AutoEventWireup="true" CodeFile="TrangDangKy.aspx.cs" Inherits="TrangWeb_TrangDangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .box
        {
            position: relative;
        top: 0px;
        left: 0px;
    }
        .box box1{
              margin:auto;
    position:absolute;
    top:0; left:0; right:0; bottom:0;
        }
         #content {
            height: 1150px;
        }
    .auto-style1 {
        text-align: justify;
        width: 872px;
    }
    .auto-style2 {
        color: #777;
        text-align: justify;
    }
    .auto-style3 {
        font-size: 21px;
        font-weight: 300;
        line-height: 1.4;
        text-align: justify;
        margin-bottom: 20px;
    }
    .auto-style4 {
        text-align: justify;
        width: 872px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">

        $(document).ready(function () {

            $(".selectpicker").selectpicker();

        });

    </script>
    <div id="all" class="box">
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
                    <div class="box1">
                        <h1 class="auto-style4">ĐĂNG KÝ TÀI KHOẢN</h1>

                        <p class="auto-style3">Bạn đã đăng ký tài khoản của chúng tôi chưa ?</p>
                        <p class="auto-style1">Hãy đăng ký ngay để nhận được những ưu đãi và tiện ích chúng tôi mang lại dành cho bạn</p>
                        <p class="auto-style2">Nếu bạn có thắc mắc vui lòng<span class="text-info"><a href="#" >liên hệ với chúng tôi</a></span>, phục vụ 24/7.</p>

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
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
    </div>
</asp:Content>

