<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="LoaiSanPham.aspx.cs" Inherits="Admin_LoaiSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2>DANH SÁCH LOẠI SẢN PHẨM</h2>
    <a href="#">Thêm mới</a>
    <asp:GridView ID="GvLoaiSanPham" CssClass="table table-striped table-bordered table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MALOAI"    GridLines="None"  CellSpacing="10" CellPadding="1" HorizontalAlign="Center" Width="100%"  PageSize="5"   >
        <Columns>
            <asp:BoundField DataField="MALOAI" HeaderText="Mã Loại Sản Phẩm"  ReadOnly="True" SortExpression="MaSP" Visible="False" >
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="TENLOAI" HeaderText="Loại Sản Phẩm"  ReadOnly="True"  >
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Hình ảnh">
                <EditItemTemplate>
                    

                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# "~/Hinh/" + Eval("HinhLoaiSP") %>' Width="200px" ImageAlign="Middle" />
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" Width="120px" />
            </asp:TemplateField>
            <asp:CommandField  HeaderText="Công Cụ" ShowSelectButton="True" ShowDeleteButton="True" DeleteText="Xóa" SelectText="Chọn"  >
            <ControlStyle CssClass="vach" />
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            <ItemStyle Wrap="True" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
</asp:Content>

