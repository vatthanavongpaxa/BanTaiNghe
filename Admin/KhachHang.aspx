<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="KhachHang.aspx.cs" Inherits="Admin_KhachHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>DANH SÁCH KHÁCH HÀNG</h2>
    <%--<a href="ThemKH.aspx">Thêm mới</a>--%>
    <asp:GridView ID="GvKhachHang" runat="server" CssClass="table table-striped table-bordered table-hover" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MAKH"    GridLines="None"  CellSpacing="10" CellPadding="1" HorizontalAlign="Center" Width="100%"  PageSize="5" OnPageIndexChanging="GvKhachHang_PageIndexChanging" OnRowDataBound="GvKhachHang_RowDataBound" OnRowDeleting="GvKhachHang_RowDeleting" OnSelectedIndexChanging="GvKhachHang_SelectedIndexChanging">
        <Columns>
            <asp:BoundField DataField="MAKH" HeaderText="Mã khách hàng" Visible="False" />
            <asp:BoundField DataField="HoTenKH" HeaderText="Họ tên khách hàng" />
            <asp:TemplateField HeaderText="Giới tính" Visible="False">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# (Eval("GioiTinh").ToString())=="True"?"Nam":"Nữ" %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" DataFormatString="{0:dd/MM/yyyy}" Visible="False" />
            <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" Visible="False" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" Visible="False" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="MatKhau" HeaderText="Mật khẩu" Visible="False" />
            <asp:CommandField DeleteText="Xóa" SelectText="Chọn" ShowDeleteButton="True" ShowSelectButton="True" HeaderText="Công cụ" />
        </Columns>

    </asp:GridView>
</asp:Content>

