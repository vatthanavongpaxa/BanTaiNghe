<%@ Page Title="" Language="C#" MasterPageFile="~/Mau_ManHinh/HOMEPAGE.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="Trang_Web_DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tb-dangKy {
            width: 700px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }

        .tb-left-dangKy {
            text-align: right;
        }

        .tb-right-dangKy {
            text-align: left;
        }

        .btn {
            background-color: #303030;
            border-radius: 5px;
            color: white;
            width: initial;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="tb-dangKy">
        <tr>
            <td colspan="2" style="text-align: center; font-size: large; font-weight: bold; padding-top: 10px; padding-right: 10px;">ĐĂNG KÝ THÀNH VIÊN</td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">&nbsp;</td>
            <td class="tb-right-dangKy">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">Họ và tên :&ensp;</td>
            <td class="tb-right-dangKy">
                <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoten" ErrorMessage="Nhập họ tên" ForeColor="Red" ValidationGroup="Dangky">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">&nbsp;</td>
            <td class="tb-right-dangKy">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">Giới tính :&ensp;</td>
            <td class="tb-right-dangKy">
                <asp:RadioButtonList ID="rdlGioiTinh" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" ValidationGroup="Dangky">
                    <asp:ListItem Value="1" Selected="True">Nam</asp:ListItem>
                    <asp:ListItem Value="0">Nữ</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">&nbsp;</td>
            <td class="tb-right-dangKy">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">Địa chỉ:&ensp;</td>
            <td class="tb-right-dangKy">
                <asp:TextBox ID="txtDiachi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDiachi" ErrorMessage="Nhập địa chỉ" ForeColor="Red" ValidationGroup="Dangky">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">&nbsp;</td>
            <td class="tb-right-dangKy">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">Điện thoại :&ensp;</td>
            <td class="tb-right-dangKy">
                <asp:TextBox ID="txtDThoai" runat="server" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDThoai" ErrorMessage="Nhập điện thoại" ForeColor="Red" ValidationGroup="Dangky">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtDThoai" ErrorMessage="Nhập số" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Dangky">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">&nbsp;</td>
            <td class="tb-right-dangKy">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">Email:&ensp;</td>
            <td class="tb-right-dangKy">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" EnableTheming="True" ErrorMessage="Nhập Email" ForeColor="Red" ValidationGroup="Dangky">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" EnableTheming="True" ErrorMessage="Email không đúng" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="Dangky">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">&nbsp;</td>
            <td class="tb-right-dangKy">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">Ngày sinh :&ensp;</td>
            <td class="tb-right-dangKy">
                <asp:TextBox ID="txtNgaysinh" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNgaysinh" ErrorMessage="Nhập ngày sinh" ForeColor="Red" ValidationGroup="Dangky">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">&nbsp;</td>
            <td class="tb-right-dangKy">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">Tên đăng nhập :&ensp;</td>
            <td class="tb-right-dangKy">
                <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Nhập tên đăng nhập" ForeColor="Red" ValidationGroup="Dangky">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">&nbsp;</td>
            <td class="tb-right-dangKy">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">Mật khẩu :&ensp;</td>
            <td class="tb-right-dangKy">
                <asp:TextBox ID="txtMatkhau" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMatkhau" ErrorMessage="Nhập mật khẩu" ForeColor="Red" ValidationGroup="Dangky">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tb-left-dangKy">&nbsp;</td>
            <td class="tb-right-dangKy">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" ValidationGroup="Dangky" OnClick="btnDangky_Click" CssClass="btn" Height="25px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="Dangky" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblBaoloi" runat="server" Visible="False" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

