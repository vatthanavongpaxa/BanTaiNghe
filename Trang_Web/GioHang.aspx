<%@ Page Title="" Language="C#" MasterPageFile="~/Mau_ManHinh/HOMEPAGE.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="Trang_Web_GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .divGioHang{
            text-align: center;
            margin: auto;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="divGioHang">
        <asp:GridView ID="GridViewSP" runat="server" AutoGenerateColumns="False" DataKeyNames="MASP" OnRowDeleting="GridViewSP_RowDeleting" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="MASP" HeaderText="Mã SP" />
                <asp:BoundField DataField="TENSP" HeaderText="Tên SP" />
                <asp:BoundField DataField="GIA" HeaderText="Giá SP" />
                <asp:TemplateField HeaderText="Số lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("SOLUONG") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="THANHTIEN" HeaderText="Thành tiền" DataFormatString="{0:0,0 VNĐ}" />
                <asp:CommandField HeaderText="Xóa" ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/icon/delete.png" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
    <div>
        &ensp;
    </div>
    <div style="text-align: right;">
        Cổng thành tiền :&ensp;<asp:Label ID="lbTongThanhTien" runat="server" ForeColor="Red"></asp:Label>
    </div>
    <div>
        <asp:Button ID="BtTT" runat="server" Text="Tiếp tục mua" OnClick="BtTT_Click" CssClass="btn" Height="25px" />&ensp;
        <asp:Button ID="Btxoa" runat="server" Text="Xóa giỏ hàng" OnClick="Btxoa_Click" CssClass="btn" Height="25px" />&ensp;
        <asp:Button ID="btCapNhat" runat="server" Text="Cập nhật" OnClick="btCapNhat_Click" CssClass="btn" Height="25px" />&ensp;
        <asp:Button ID="btThanhToan" runat="server" Text="Thành toàn" OnClick="btThanhToan_Click" CssClass="btn" Height="25px" />
    </div>
    <div>
        <asp:Label ID="lbBaoloi" runat="server" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>

