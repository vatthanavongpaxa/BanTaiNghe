<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" AutoEventWireup="true" CodeFile="TrangChiTiet.aspx.cs" Inherits="TrangWeb_TrangChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li><a href="#">Ladies</a>
                        </li>
                        <li><a href="#">Tops</a>
                        </li>
                        <li>White Blouse Armani</li>
                    </ul>

                </div>

                <div class="col-md-3">
                    <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Categories</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked category-menu">
                                <li>
                                    <a href="TrangSanPham.aspx?MaLoai=1">APPLE <span class="badge pull-right"></span></a>
                                </li>
                                <li>
                                    <a href="TrangSanPham.aspx?MaLoai=2">BOSE  <span class="badge pull-right"></span></a>

                                </li>
                                <li>
                                    <a href="TrangSanPham.aspx?MaLoai=3">GRADO  <span class="badge pull-right"></span></a>
                                </li>
                                <li>
                                    <a href="TrangSanPham.aspx?MaLoai=4">MARSHALL <span class="badge pull-right"></span></a>
                                </li>
                                <li>
                                    <a href="TrangSanPham.aspx?MaLoai=5">HARMAN KARDON <span class="badge pull-right"></span></a>
                                </li>
                                <li>
                                    <a href="TrangSanPham.aspx?MaLoai=6">SKULLCANDY <span class="badge pull-right"></span></a>
                                </li>
                                <li>
                                    <a href="TrangSanPham.aspx?MaLoai=7">SONY <span class="badge pull-right"></span></a>
                                </li>

                            </ul>

                        </div>
                    </div>

                    <!-- *** MENUS AND FILTERS END *** -->

                    <div class="banner">
                        <a href="#">
                            <img src="img/banner.jpg" alt="sales 2014" class="img-responsive">
                        </a>
                    </div>
                </div>

                <div class="col-md-9">
                    <asp:Repeater ID="Repeater_CTSP" runat="server">
                        <ItemTemplate>

                            <div class="row" id="productMain">
                                <div class="col-sm-6">
                                    <div id="mainImage">
                                        <%--<img src="../Hinh/04.jpg" alt="" class="img-responsive">--%>
                                        <asp:Image ID="Image_img1" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                    </div>

                                    <%--<div class="ribbon sale">
                                        <div class="theribbon">SALE</div>
                                        <div class="ribbon-background"></div>
                                    </div>
                                    <!-- /.ribbon -->

                                    <div class="ribbon new">
                                        <div class="theribbon">NEW</div>
                                        <div class="ribbon-background"></div>
                                    </div>
                                    <!-- /.ribbon -->--%>
                                </div>
                                <div class="col-sm-6">
                                    <div class="box">
                                        <h1 class="text-center">
                                            <asp:Label ID="Label_SanPham" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label></h1>
                                        <p class="goToDescription">
                                            <a href="#details" class="scroll-to">Scroll to product details, material & care and sizing</a>
                                        </p>
                                        <p class="price">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("GIA") %>'></asp:Label>
                                        </p>

                                        <p class="text-center buttons">
                                            <asp:HyperLink ID="HyperLink_Mua" runat="server" CssClass="btn btn-primary" NavigateUrl='<%# "~/TrangWeb/TrangGioHang.aspx?MASP="+Eval("MaSP") %>'><i class="fa fa-shopping-cart"></i> Thêm giỏ hàng</asp:HyperLink>
                                        </p>


                                    </div>

                                    <div class="row" id="thumbs">
                                        <div class="col-xs-4">
                                            <asp:HyperLink ID="HyperLink_SP1" runat="server" NavigateUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="thumb">
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                            </asp:HyperLink>
                                        </div>
                                        <div class="col-xs-4">
                                            <asp:HyperLink ID="HyperLink_SP2" runat="server" NavigateUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="thumb">
                                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                            </asp:HyperLink>
                                        </div>
                                        <div class="col-xs-4">
                                            <asp:HyperLink ID="HyperLink_SP3" runat="server" NavigateUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="thumb">
                                                <asp:Image ID="Image3" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                            </asp:HyperLink>
                                        </div>
                                    </div>
                                </div>

                            </div>


                            <div class="box" id="details">
                                <h4>Product details</h4>
                                <p>
                                    <asp:Label ID="Label_ChiTiet" runat="server" Text='<%# Eval("CHITIET") %>'></asp:Label>

                                </p>


                                <hr>
                                <div class="social">
                                    <h4>Show it to your friends</h4>
                                    <p>
                                        <a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                        <a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                        <a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                        <a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                                    </p>
                                </div>
                            </div>

                        </ItemTemplate>

                    </asp:Repeater>

                    <!-- /.col-md-9 -->
                </div>
                <!-- /.container -->
            </div>
            <!-- /#content -->

        </div>
    </div>
    <!-- /#all -->

</asp:Content>

