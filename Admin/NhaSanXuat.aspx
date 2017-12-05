<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NhaSanXuat.aspx.cs" Inherits="Admin_LoaiSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2>DANH SÁCH NHÀ SẢN XUẤT</h2>
    <a href="ThemNSX.aspx">Thêm mới</a>
    <asp:GridView ID="GvNhaSanXuat" CssClass="table table-striped table-bordered table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MANSX"    GridLines="None"  CellSpacing="10" CellPadding="1" HorizontalAlign="Center" Width="100%"  PageSize="5" OnPageIndexChanging="GvNhaSanXuat_PageIndexChanging" OnSelectedIndexChanging="GvNhaSanXuat_SelectedIndexChanging" OnRowDataBound="GvNhaSanXuat_RowDataBound" OnRowDeleting="GvNhaSanXuat_RowDeleting"   >
        <Columns>
            <asp:BoundField DataField="MANSX" HeaderText="Mã nhà sản xuất"  ReadOnly="True" SortExpression="MaSP" Visible="False" >
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="TENNSX" HeaderText="Nhà sản xuất"  ReadOnly="True"  >
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Hình ảnh">
                <EditItemTemplate>
                    

                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~/Hinh/" + Eval("HinhNSX") %>' Width="150px" ImageAlign="Middle" />
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" Width="120px" />
            </asp:TemplateField>
            <asp:CommandField  HeaderText="Công Cụ" ShowSelectButton="True" ShowDeleteButton="True" DeleteText="Xóa" SelectText="Chọn"  >
            <ControlStyle CssClass="vach" />
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            <ItemStyle Wrap="True" />
            </asp:CommandField>
        </Columns>
        <PagerSettings FirstPageText="Trước" LastPageText="Sau" Mode="NumericFirstLast" PageButtonCount="4" />
    </asp:GridView>
</asp:Content>

