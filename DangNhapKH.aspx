<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" AutoEventWireup="true" CodeFile="DangNhapKH.aspx.cs" Inherits="DangNhapKH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .box {
            position: relative;
        }
        
        /*.box{
            margin:auto;
    position:relative;
    top:150px; left:50px; right:50px; bottom:150px;
        }*/
        #content {
            height: 387px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="all" class="box">
        <div id="content">
            <div class="container">
    <div class="col-md-6" runat="server" id="fdangnhap">
                    <div class="box1">
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
            </div>
        </div>
</asp:Content>

