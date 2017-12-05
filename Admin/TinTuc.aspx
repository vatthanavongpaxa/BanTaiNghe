<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="TinTuc.aspx.cs" Inherits="Admin_TinTuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>DANH SÁCH TIN TỨC</h2>
    <a href="ThemTT.aspx">Thêm mới</a>
    <asp:GridView ID="Gvtintuc" CssClass="table table-striped table-bordered table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MATT"    GridLines="None"  CellSpacing="10" CellPadding="1" HorizontalAlign="Center" Width="100%"  PageSize="5" OnPageIndexChanging="Gvtintuc_PageIndexChanging" OnRowDataBound="Gvtintuc_RowDataBound" OnRowDeleting="Gvtintuc_RowDeleting" OnSelectedIndexChanging="Gvtintuc_SelectedIndexChanging">
        <Columns>
            <asp:BoundField DataField="MATT" HeaderText="Mã tin tức"  ReadOnly="True" SortExpression="MaTT" Visible="False" >
            </asp:BoundField>
            <asp:BoundField DataField="TieuDe" HeaderText="Tiêu đề" />
            <asp:BoundField DataField="Ngay" HeaderText="Ngày đăng bài"  ReadOnly="True" DataFormatString="{0:dd/MM/yyyy HH:mm:ss}"  >
            </asp:BoundField>
            <asp:BoundField DataField="NoiDung" HeaderText="Nội dung" Visible="False"/>
            <asp:CommandField  HeaderText="Công Cụ" ShowSelectButton="True" ShowDeleteButton="True" DeleteText="Xóa" SelectText="Chọn"  >
            <ControlStyle CssClass="vach" />
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            <ItemStyle Wrap="True" />
            </asp:CommandField>
        </Columns>
        <PagerSettings FirstPageText="Trước" LastPageText="Sau" Mode="NumericFirstLast" PageButtonCount="4" />
    </asp:GridView>
</asp:Content>

