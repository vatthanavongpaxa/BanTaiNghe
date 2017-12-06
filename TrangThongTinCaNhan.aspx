<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="TrangThongTinCaNhan.aspx.cs" Inherits="TrangWeb_TrangThongTinCaNhan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="all">

        <div id="content">
            <div class="container">

                <%--<div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>My account</li>
                    </ul>

                </div>--%>

                <div class="col-md-3">
                    <!-- *** CUSTOMER MENU ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Chức năng khách hàng</h3>
                        </div>

                        <div class="panel-body">

                            <ul class="nav nav-pills nav-stacked">
                                <li>
                                    <a href="TrangThongTinCaNhan.aspx"><i class="fa fa-user"></i>Tài khoản của tôi</a>
                                </li>
                                <li>
                                    <%--<a href="index.html"><i class="fa fa-sign-out"></i>Logout</a>--%>
                                    <asp:LinkButton ID="LinkButton_DangXuat" OnClick="LinkButton_DangXuat_Click" runat="server"><i class="fa fa-sign-out"></i> Đăng Xuất</asp:LinkButton>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- /.col-md-3 -->

                    <!-- *** CUSTOMER MENU END *** -->
                </div>

                <div class="col-md-9">
                    <div class="box">
                        <h1>Tài khoản khách hàng</h1>
                       <%-- <p class="lead">Change your personal details or your password here.</p>
                        <p class="text-muted">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>--%>

                        <h3>Đổi mật khẩu</h3>


                        <div class="row">
                            <div class="col-sm-6">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="TextBox_PassNew">Mật khẩu mới</label>
                                    <asp:TextBox ID="TextBox_PassNew" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <em class="text-danger">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_PassNew" runat="server" ErrorMessage="Nhập Mật khẩu" ControlToValidate="TextBox_PassNew" ValidationGroup="DoiMK"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator_New" runat="server" ErrorMessage="Tối thiểu là 8 kí tự và tối đa là 20 kí tự" ControlToValidate="TextBox_PassNew" ValidationExpression="^[a-zA-Z0-9]{8,20}$" ValidationGroup="DoiMK"></asp:RegularExpressionValidator>
                                    </em>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="TextBox_PassNew">Nhập lại mật khẩu</label>
                                    <asp:TextBox ID="TextBox_PassOld" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <em class="text-danger">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_PassOld" runat="server" ErrorMessage="Nhập Mật khẩu" ControlToValidate="TextBox_PassOld" ValidationGroup="DoiMK"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_PassNew" ControlToValidate="TextBox_PassOld" ErrorMessage="Mật khẩu không trùng khớp" ValidationGroup="DoiMK"></asp:CompareValidator>
                                    </em>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->

                        <div class="col-sm-12 text-center">
                            <asp:Button ID="Button_DoiMK" runat="server" Text="Cập nhật mật khẩu" CssClass="btn btn-primary" ValidationGroup="DoiMK" OnClick="Button_DoiMK_Click" />
                        </div>


                        <hr>

                        <h3>Thông tin cá nhân</h3>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="TextBox_NameKH">Tên khách hàng</label>
                                    <asp:TextBox ID="TextBox_NameKH" runat="server" CssClass="form-control" ValidationGroup="TTCN" placeholder="Tên khách hàng"></asp:TextBox>
                                    <em class="text-danger">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_NameKH" runat="server" ErrorMessage="Nhập tên khách hàng" ValidationGroup="TTCN" ControlToValidate="TextBox_NameKH"></asp:RequiredFieldValidator>&ensp;
                                    </em>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="TextBox_NgaySinh">Ngày sinh</label>
                                    <asp:TextBox ID="TextBox_NgaySinh" runat="server" CssClass="form-control" placeholder="Ngày sinh" TextMode="DateTime" OnPreRender="TextBox_NgaySinh_PreRender"></asp:TextBox>
                                    <em class="text-danger">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_NgaySinh" runat="server" ErrorMessage="Nhập ngày sinh" ValidationGroup="TTCN" ControlToValidate="TextBox_NgaySinh"></asp:RequiredFieldValidator>
                                    </em>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="TextBox_SDT">Số điện thoại</label>

                                    <asp:TextBox ID="TextBox_SDT" runat="server" CssClass="form-control" placeholder="Số điện thoại" TextMode="Number"></asp:TextBox>
                                    <em class="text-danger">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_SDT" runat="server" ErrorMessage="Nhập Mật khẩu" ControlToValidate="TextBox_SDT" ValidationGroup="TTCN"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator_SDT" runat="server" ErrorMessage="Số điện thoại gồm 10 hoặc 11 số" ControlToValidate="TextBox_SDT" ValidationExpression="\d{10,11}" ValidationGroup="TTCN"></asp:RegularExpressionValidator>
                                    </em>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="TextBox_PassDK">Giới tính</label>
                                    <asp:DropDownList ID="DropDownList_GioiTinh" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="True">Nam</asp:ListItem>
                                        <asp:ListItem Value="False">Nữ</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="TextBox_DiaChi">Địa chỉ</label>
                                    <asp:TextBox ID="TextBox_DiaChi" runat="server" CssClass="form-control" placeholder="Địa chỉ" TextMode="MultiLine"></asp:TextBox>

                                    <em class="text-danger">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_DiaChi" runat="server" ErrorMessage="Nhập Địa chỉ" ValidationGroup="TTCN" ControlToValidate="TextBox_DiaChi"></asp:RequiredFieldValidator>
                                    </em>
                                </div>
                            </div>
                            <div class="col-sm-12 text-center">
                                <%--<button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>Save changes</button>--%>
                                <asp:LinkButton ID="LinkButton_TTCN" runat="server" CssClass="btn btn-primary" OnClick="LinkButton_TTCN_Click"  ValidationGroup="TTCN"><i class="fa fa-save"></i>Lưu thông tin</asp:LinkButton>

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

