<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="Admin_SanPham" MasterPageFile="~/Admin/Admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Admin/CSS/Table.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .gv{
            width:1000px;
            color:black;
            height:300px;
            text-align: left;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h2>DANH SÁCH SẢN PHẨM</h2>
    <a href="ThemSanPham.aspx">Thêm mới</a>
    <asp:GridView ID="GvSanPham" CssClass="table table-striped table-bordered table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MASP"    GridLines="None"  CellSpacing="10" CellPadding="1" HorizontalAlign="Center" Width="100%"  PageSize="5" OnPageIndexChanging="GvSanPham_PageIndexChanging" OnRowDataBound="GvSanPham_RowDataBound" OnRowDeleting="GvSanPham_RowDeleting" OnSelectedIndexChanging="GvSanPham_SelectedIndexChanging1" >
        <Columns>
            <asp:BoundField DataField="MASP" HeaderText="Mã Sản Phẩm"  ReadOnly="True" SortExpression="MaSP" Visible="False" >
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="TENSP" HeaderText="Tên Sản Phẩm"  ReadOnly="True"  >
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            </asp:BoundField>

            <asp:TemplateField HeaderText="Nhà sản xuất">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlLoaiSP" runat="server">
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenNSX") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" Width="120px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn Giá">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIA","{0:#,##0 VNĐ}") %>'></asp:Label>
                </ItemTemplate>
                 <HeaderStyle HorizontalAlign="Center" Width="50px" />
            </asp:TemplateField>
         <asp:TemplateField HeaderText="Hình ảnh">
                <EditItemTemplate>
                    

                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~/Hinh/" + Eval("HINH") %>' Width="100px" ImageAlign="Middle" />
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" Width="120px" />
            </asp:TemplateField>
            <asp:CommandField  HeaderText="Công Cụ" ShowSelectButton="True" ShowDeleteButton="True" DeleteText="Xóa" SelectText="Chọn"  >
            <ControlStyle CssClass="vach" />
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            <ItemStyle Wrap="True" />
            </asp:CommandField>
        </Columns>
       
        <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" FirstPageText="Trước" LastPageText="Sau" /> 
       
    </asp:GridView>
</asp:Content>
