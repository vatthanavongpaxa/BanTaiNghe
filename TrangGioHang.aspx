<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" AutoEventWireup="true" CodeFile="TrangGioHang.aspx.cs" Inherits="TrangWeb_TrangGioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="all">

        <div id="content">
            <div class="container">

                <%--<div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>Shopping cart</li>
                    </ul>
                </div>--%>

                <div class="col-md-12" id="basket">

                    <div class="box">
                       <%-- <h1>Shopping cart</h1>
                        <p class="text-muted">You currently have 3 item(s) in your cart.</p>--%>
                        <div class="table-responsive">
                            <asp:GridView ID="GridView_GioHang" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" GridLines="None" DataKeyNames="MASP" OnRowCommand="GridView_GioHang_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="MASP" HeaderText="Mã Sản Phẩm"></asp:BoundField>
                                    <asp:BoundField DataField="TENSP" HeaderText="Tên Sản Phẩm">
                                        <ItemStyle CssClass="text-capitalize text-info" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Giá">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# string.Format("{0:#,##0 VNĐ}",Eval("GIA")) %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Số Lượng">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox_SoLuong" runat="server" CssClass="form-control form-horizontal" TextMode="Number" Width="100px" Text='<%# Eval("SOLUONG") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Thành Tiền">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# string.Format("{0:#,##0 VNĐ}",Eval("THANHTIEN")) %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:ButtonField CommandName="Xoa" ImageUrl="~/img/if_edit-delete_118920.ico"  Text="Xóa" ButtonType="Image" >
                                    
            
                                    <HeaderStyle BorderStyle="None" />
                                    </asp:ButtonField>
                                    
            
                                </Columns>
                                <HeaderStyle CssClass="bg-success" />

                            </asp:GridView>
                            <div class="box-footer">
                                <div class="pull-left">
                                    <asp:HyperLink ID="LinkButton_MuaTiep" runat="server" CssClass="btn btn-default" NavigateUrl="~/TrangSanPham.aspx"><i class="fa fa-chevron-left"></i> Mua tiếp</asp:HyperLink>
                                </div>
                                <div class="pull-right">

                                    <asp:LinkButton ID="LinkButton_CapNhat" runat="server" CssClass="btn btn-default" OnClick="LinkButton_CapNhat_Click"><i class="fa fa-refresh"></i> Cập nhật giỏ hàng</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton_ThanhToan" runat="server" CssClass="btn btn-primary" OnClick="LinkButton_ThanhToan_Click">Thanh toán <i class="fa fa-chevron-right"></i></asp:LinkButton>
                                    <a target="_blank" href="https://www.nganluong.vn/button_payment.php?receiver=baoanhle289@gmail.com&product_name=01&price=50000&return_url=(URL thanh toán thành công)&comments=(Ghi chú về đơn hàng)">
                                        <img src="https://www.nganluong.vn/css/newhome/img/button/pay-sm.png" border="0" /></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

