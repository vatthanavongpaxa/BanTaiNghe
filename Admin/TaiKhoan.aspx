<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="TaiKhoan.aspx.cs" Inherits="Admin_TaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2>DANH SÁCH TÀI KHOẢN</h2>
    <a href="ThemTaiKhoan.aspx">Thêm mới</a>
    <asp:GridView ID="GvTaiKhoan" CssClass="table table-striped table-bordered table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MATK"    GridLines="None"  CellSpacing="10" CellPadding="1" HorizontalAlign="Center" Width="100%"  PageSize="5" >
        <Columns>
           
            <asp:BoundField DataField="MaTK" HeaderText="Mã tài khoản" Visible="False" />
            <asp:BoundField DataField="HoTen" HeaderText="Họ tên" />
            <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="TaiKhoan" HeaderText="Tài khoản" />
           
            <asp:CommandField  HeaderText="Công Cụ" ShowSelectButton="True" ShowDeleteButton="True" DeleteText="Xóa" SelectText="Chọn"  >
            <ControlStyle CssClass="vach" />
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            <ItemStyle Wrap="True" />
            </asp:CommandField>
        </Columns>
       
        <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" FirstPageText="Trước" LastPageText="Sau" /> 
       
    </asp:GridView>
</asp:Content>

