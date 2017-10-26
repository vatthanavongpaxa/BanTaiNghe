<%@ Page Title="" Language="C#" MasterPageFile="~/Mau_ManHinh/HOMEPAGE.master" AutoEventWireup="true" CodeFile="ChiTiet.aspx.cs" Inherits="Trang_Web_ChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tbItemview {
            width: 700px;
            text-align:left;
        }
        .tbleft {
            
        }
        .tbright {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="tbItemview">
        <tr>
            <td rowspan="5" style="width: 300px">
                <asp:HyperLink ID="hlHinh" runat="server" ImageWidth="300px">HyperLink</asp:HyperLink>
            </td>
            <td style="width: 300px" class="tbright">Tên :
                </td>
        </tr>
        <tr>
            <td style="width: 300px" class="tbright">&nbsp;<asp:Label ID="lbTen" runat="server" Font-Names="Lucida Sans" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 300px" class="tbright">Gia :</td>
        </tr>
        <tr>
            <td style="width: 300px" class="tbright">
                <asp:Label ID="lbGia" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 300px" class="tbright">
                <asp:ImageButton ID="imgbtMua" runat="server" ImageUrl="~/icon/creditcard.png" OnClick="imgbtMua_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="tbleft">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="tbleft">&ensp;Thông tin sản phẩm</td>
        </tr>
        <tr>
            <td colspan="2" class="tbleft">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="tbleft">
                &ensp;<asp:Label ID="lbChiTiet" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

