<%@ Page Title="" Language="C#" MasterPageFile="~/Mau_ManHinh/HOMEPAGE.master" AutoEventWireup="true" CodeFile="ThanhToan.aspx.cs" Inherits="Trang_Web_ThanhToan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .tb-ttddh {
            width: 665px;
            text-align: center;
            font-family:'Times New Roman', Times, serif;
        }
        .tb-left-ttddh {
            text-align: right;
        }
        .tb-right-ttddh {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="tb-ttddh">
        <tr>
            <td colspan="2" style="text-align: center;">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; font-size: x-large;">Thông tin Đơn dặt hàng</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; font-size: large; font-weight: bold; background-color: #999999;">Thông tin tài khoẩn</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">&nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">Họ tên :&emsp;</td>
            <td class="tb-right-ttddh">
                &emsp;<asp:Label ID="lblHoTen" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">Địa chỉ :&emsp;</td>
            <td class="tb-right-ttddh">
                &emsp;<asp:Label ID="lblDiaChi" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">Điện thoại :&emsp;</td>
            <td class="tb-right-ttddh">
                &emsp;<asp:Label ID="lblDienthoai" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">Email :&emsp;</td>
            <td class="tb-right-ttddh">
                &emsp;<asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">&nbsp;</td>
            <td class="tb-right-ttddh">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; font-size: large; font-weight: bold; background-color: #999999;">Thông tin giỏ hàng</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; margin: auto;">
        <asp:GridView ID="GridViewSP" runat="server" AutoGenerateColumns="False" DataKeyNames="MASP" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="MASP" HeaderText="Mã SP" />
                <asp:BoundField DataField="TENSP" HeaderText="Tên SP" />
                <asp:BoundField DataField="GIA" HeaderText="Giá SP" />
                <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" />
                <asp:BoundField DataField="THANHTIEN" HeaderText="Thành tiền" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">Tổng tiền :
                <asp:Label ID="lblTongTien" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; font-size: large; font-weight: bold;">Thông tin giao hàng</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">&nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">Ngày giao :</td>
            <td class="tb-right-ttddh">
                <asp:TextBox ID="txtNgayGiao" runat="server" TextMode="Date"></asp:TextBox>&ensp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Nhập ngày giao" ForeColor="Red" ControlToValidate="txtNgayGiao" ValidationGroup="DongY">Nhập ngày giao</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">&nbsp;</td>
            <td class="tb-right-ttddh">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">Người nhận :</td>
            <td class="tb-right-ttddh">
                <asp:TextBox ID="txtNguoiN" runat="server"></asp:TextBox>&ensp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Nhập tên người nhận" ForeColor="Red" ControlToValidate="txtNguoiN" ValidationGroup="DongY">Nhập tên người nhận</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">&nbsp;</td>
            <td class="tb-right-ttddh">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">Địa chỉ :</td>
            <td class="tb-right-ttddh">
                <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>&ensp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Nhập địa chỉ" ForeColor="Red" ControlToValidate="txtDiaChi" ValidationGroup="DongY">Nhập địa chỉ</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">&nbsp;</td>
            <td class="tb-right-ttddh">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tb-left-ttddh">Điện thoại :</td>
            <td class="tb-right-ttddh">
                <asp:TextBox ID="txtDThoai" runat="server"></asp:TextBox>&ensp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Nhập số điện thoại" ForeColor="Red" ControlToValidate="txtDThoai" ValidationGroup="DongY">Nhập số điện thoại</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnDongY" runat="server" Text="Dồng ý" OnClick="btnDongY_Click" CssClass="btn" Height="25px" ValidationGroup="DongY" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblBaoloi" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

