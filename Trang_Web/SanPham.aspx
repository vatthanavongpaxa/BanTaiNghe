<%@ Page Title="" Language="C#" MasterPageFile="~/Mau_ManHinh/HOMEPAGE.master" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="Trang_Web_SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tablecontent{
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            width: 175px;
            height: 300px;
            padding: 2px;
            
        }
        .tablegiamgia {
            
            width: 75px;
        }
        .divtable {
            box-shadow: 2px 2px 5px #888888;
        }
        .button {
            display: block;
            text-align:center;
            padding: 5px 5px;
            margin: 0px 5px;
            color: white;
            transition: 300ms ease-in-out;
            font-size: 12px;
            background: gray;
            border-radius: 5px;
            float:left;
        }
        .button:hover {
            transform: translateY(-3px);
            box-shadow: 0px 2px 5px #000;
        }
        .textSeach {
            display: block;
            padding: 5px 5px;
            float: right;
            font-size: 12px;
            margin: 0px 2px;
            color: black;
            border-radius: 5px;
        }
        .btSearch {
            float: right;
            padding: 5px 5px;
            display:block;
            font-size: 12px;
            background-color: gray;
            border-radius: 5px;
            margin: 0px 2px;
            color: white;
            transition: 300ms ease-in-out;
        }
        .btSearch:hover {
            transform: translateY(-3px);
            box-shadow: 0px 2px 5px #000;
        }
 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left; width:auto;">
        <asp:Button ID="btGiaCao" runat="server" Text="Giá cao nhất" CssClass="button " OnClick="btGiaCao_Click" />&ensp;<asp:Button ID="btGiaThap" runat="server" Text="Giá thấp nhất" CssClass="button " OnClick="btGiaThap_Click" />&ensp;
        <asp:Button ID="btMoi" runat="server" Text="Mới nhất" CssClass="button " OnClick="btMoi_Click" />&ensp;
        <asp:Button ID="btCu" runat="server" Text="Cũ nhất" CssClass="button " OnClick="btCu_Click" />
        <asp:Button ID="btTim" runat="server" Text="Search" CssClass="btSearch" OnClick="btTim_Click" />
        <asp:TextBox ID="txtTim" runat="server" CssClass="textSeach" ToolTip="Tìm theo tên tai nghe"></asp:TextBox>
    </div>
    <asp:DataList ID="DataListSP" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataListSP_ItemCommand">
        <ItemTemplate>
            <div class="divtable">
            <table align="center" cellpadding="0" cellspacing="0" class="tablecontent">
                <tr>
                    <td colspan="2" style="width: 175px; height: 175px">
                        <asp:HyperLink ID="hlHinh" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' ImageWidth="100%" NavigateUrl='<%# "~/Trang_Web/ChiTiet.aspx?MASP="+Eval("MASP") %>'>[hlHinh]</asp:HyperLink>
                    </td>
                </tr>
                <tr style="font-size:small; font-weight:bold;">
                    <td colspan="2">
                        <asp:HyperLink ID="hlTenSP" runat="server" Text='<%# Eval("TENSP") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #e6e6e6; height: 40px;">
                        <asp:Label ID="Label1" runat="server" Text="Giá :" ForeColor="#333333"></asp:Label>
                        <asp:Label ID="lbGiaSP" runat="server" Text='<%# Eval("GIA","{0:0,0 VNĐ}")%>' ForeColor="#333333"></asp:Label>
                    </td>
                    <td style="background-color: #636363; height: 40px;">
                        <asp:HyperLink ID="hplMua" runat="server" ImageUrl="~/icon/buy.png" ImageWidth="32px" NavigateUrl='<%# "~/Trang_Web/GioHang.aspx?MASP=" + Eval("MASP") %>'></asp:HyperLink>
                    </td>
                </tr>
            </table>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

