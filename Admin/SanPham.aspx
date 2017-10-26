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
    <a href="#">Thêm mới</a>
    <asp:GridView ID="GvSanPham" CssClass="table table-striped table-bordered table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MASP"    GridLines="None"  CellSpacing="10" CellPadding="1" HorizontalAlign="Center" Width="100%"  PageSize="5" OnPageIndexChanging="GvSanPham_PageIndexChanging" >
        <Columns>
            <asp:BoundField DataField="MASP" HeaderText="Mã Sản Phẩm"  ReadOnly="True" SortExpression="MaSP" Visible="False" >
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="TENSP" HeaderText="Tên Sản Phẩm"  ReadOnly="True"  >
            <HeaderStyle HorizontalAlign="Center" Width="50px" />
            </asp:BoundField>

            <asp:TemplateField HeaderText="Loại sản phẩm">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlLoaiSP" runat="server">
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenLoai") %>'></asp:Label>
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
    </asp:GridView>
                <%--<asp:GridView ID="GvXeBus"
CssClass="table table-striped table-bordered table-hover"
   runat="server"
   AllowPaging="True" AutoGenerateColumns="False" OnRowDeleting="GvXiNghiep_RowDeleting" DataKeyNames="MaXN"  Height="16px" GridLines="None" OnSelectedIndexChanging="GvXiNghiep_SelectedIndexChanging" >
       <Columns>
           <asp:TemplateField HeaderText="Mã xí nghiệp" Visible="False">
               <ItemTemplate>
                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaXe") %>'></asp:Label>
               </ItemTemplate>
           </asp:TemplateField>
           <asp:BoundField DataField="LoaiXe" HeaderText="Loại xe" >
           <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
           </asp:BoundField>
           <asp:BoundField DataField="NoiCungCap" HeaderText="Nơi cung cấp" />
           <asp:BoundField DataField="‪BienKiemSoat" HeaderText="Biển kiểm soát" />
           <asp:BoundField DataField="ThoiGianHoatDong" HeaderText="Thời gian hoạt động" />
           <asp:BoundField DataField="TuyenXeDi" HeaderText="Tuyến xe đi" />
           <asp:BoundField DataField="ThucTrangXe" HeaderText="Thực trạng xe" />
           <asp:CommandField DeleteImageUrl="~/Admin/Image/1497267994_Delete.png" DeleteText="Xóa" CausesValidation="false" EditImageUrl="~/Admin/Image/edit-validated.png" EditText="Chỉnh sửa" HeaderText="Công cụ" ShowDeleteButton="True" UpdateImageUrl="~/Admin/Image/available-updates-16.png" UpdateText="Cập nhật" CancelImageUrl="~/Admin/Image/1497464610_Cancel__Red.png" CancelText="Hủy" SelectText="Chỉnh sửa" ShowSelectButton="True" />
       </Columns>
        </asp:GridView>--%>
</asp:Content>
