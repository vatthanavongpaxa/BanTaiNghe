<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="PhanHoi.aspx.cs" Inherits="Admin_PhanHoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>DANH SÁCH PHẢN HỒI</h2>
    <asp:GridView ID="GvPhanHoi"  CssClass="table table-striped table-bordered table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MAPH"    GridLines="None"  CellSpacing="10" CellPadding="1" HorizontalAlign="Center" Width="100%"  PageSize="5" OnSelectedIndexChanging="GvPhanHoi_SelectedIndexChanging">
        <Columns>
            <asp:BoundField DataField="MaPH" HeaderText="Mã phản hồi" Visible="False" />
            <asp:BoundField DataField="HoTen" HeaderText="Họ tên khách hàng" />
            <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="NoiDung" HeaderText="Nội dung phản hồi" />
            <asp:CommandField  HeaderText="Công Cụ" ShowSelectButton="True" ShowDeleteButton="True" DeleteText="Xóa" SelectText="Chọn"  >
            <ControlStyle CssClass="vach" />
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            <ItemStyle Wrap="True" />
            </asp:CommandField>
        </Columns>

    </asp:GridView>
</asp:Content>

