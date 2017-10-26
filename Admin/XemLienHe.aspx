<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="XemLienHe.aspx.cs" Inherits="Admin_XemLienHe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tbLienHe {
            text-align: center;
            width: 700px;
        }
        .trLienHe {
            width: 175px;
            background-color:#808080;
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataListLienHe" runat="server">
        <ItemTemplate>
            <table align="center" cellpadding="0" cellspacing="0" class="tbLienHe">
                <tr class="trLienHe">
                    <td>MaLH</td>
                    <td>Tên khách hàng</td>
                    <td>Điện thoại</td>
                    <td>Email</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbMaLH" runat="server" Text='<%# Eval("MALH") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbTenKhachHang" runat="server" Text='<%# Eval("TENKH") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbDThoai" runat="server" Text='<%# Eval("DTHOAI") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbEmail" runat="server" Text='<%# Eval("EMAIL") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lbNoiDung" runat="server" Text='<%# Eval("NOIDUNG") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

