<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="TrangWeb_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="all">
        <div id="content">

            <div class="container">
                <div class="col-md-12">
                    <div id="main-slider">
                        <div class="item">
                            <a href="TrangSanPham.aspx?MaLoai=1">
                                <img class="img-responsive" src="../obajuCSS/img/img/01.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="TrangSanPham.aspx?MaLoai=2">
                                <img class="img-responsive" src="../obajuCSS/img/img/02.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="TrangSanPham.aspx?MaLoai=3">
                                <img class="img-responsive" src="../obajuCSS/img/img/03.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="TrangSanPham.aspx?MaLoai=4">
                                <img class="img-responsive" src="../obajuCSS/img/img/04.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="TrangSanPham.aspx?MaLoai=5">
                                <img class="img-responsive" src="../obajuCSS/img/img/05.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="TrangSanPham.aspx?MaLoai=6">
                                <img class="img-responsive" src="../obajuCSS/img/img/06.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="TrangSanPham.aspx?MaLoai=7">
                                <img class="img-responsive" src="../obajuCSS/img/img/07.jpg" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- /#main-slider -->
                </div>
            </div>

            <!-- *** ADVANTAGES HOMEPAGE ***
 _________________________________________________________ -->
            <%-- <div id="advantages">

                <div class="container">
                    <div class="same-height-row">
                        <div class="col-sm-4">
                            <div class="box same-height clickable">
                                <div class="icon">
                                    <i class="fa fa-heart"></i>
                                </div>

                                <h3><a href="#">We love our customers</a></h3>
                                <p>We are known to provide best possible service ever</p>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="box same-height clickable">
                                <div class="icon">
                                    <i class="fa fa-tags"></i>
                                </div>

                                <h3><a href="#">Best prices</a></h3>
                                <p>You can check that the height of the boxes adjust when longer text like this one is used in one of them.</p>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="box same-height clickable">
                                <div class="icon">
                                    <i class="fa fa-thumbs-up"></i>
                                </div>

                                <h3><a href="#">100% satisfaction guaranteed</a></h3>
                                <p>Free returns on everything for 3 months.</p>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.container -->

            </div>--%>
            <!-- /#advantages -->

            <!-- *** ADVANTAGES END *** -->

            <!-- *** HOT PRODUCT SLIDESHOW ***
 _________________________________________________________ -->
            <div id="hot">

                <div class="box">
                    <div class="container">
                        <div class="col-md-12">
                            <h2>Hot this week</h2>
                        </div>
                    </div>
                </div>

                <div class="container">

                    <%--                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="../Hinh/01.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="../Hinh/01.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="../Hinh/01.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Fur coat with very but very very long name</a></h3>
                                    <p class="price">$143.00</p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="/obajuCSS/img/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="/obajuCSS/img/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="/obajuCSS/img/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">White Blouse Armani</a></h3>
                                    <p class="price"><del>$280</del> $143.00</p>
                                </div>
                                <!-- /.text -->

                                <div class="ribbon sale">
                                    <div class="theribbon">SALE</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                                <div class="ribbon new">
                                    <div class="theribbon">NEW</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                                <div class="ribbon gift">
                                    <div class="theribbon">GIFT</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product3_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Black Blouse Versace</a></h3>
                                    <p class="price">$143.00</p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product3_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Black Blouse Versace</a></h3>
                                    <p class="price">$143.00</p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">White Blouse Versace</a></h3>
                                    <p class="price">$143.00</p>
                                </div>
                                <!-- /.text -->

                                <div class="ribbon new">
                                    <div class="theribbon">NEW</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product1_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Fur coat</a></h3>
                                    <p class="price">$143.00</p>
                                </div>
                                <!-- /.text -->

                                <div class="ribbon gift">
                                    <div class="theribbon">GIFT</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                            </div>
                            <!-- /.product -->
                        </div>
                        <!-- /.col-md-4 -->

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">White Blouse Armani</a></h3>
                                    <p class="price"><del>$280</del> $143.00</p>
                                </div>
                                <!-- /.text -->

                                <div class="ribbon sale">
                                    <div class="theribbon">SALE</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                                <div class="ribbon new">
                                    <div class="theribbon">NEW</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                                <div class="ribbon gift">
                                    <div class="theribbon">GIFT</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product3_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Black Blouse Versace</a></h3>
                                    <p class="price">$143.00</p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>--%>

                    <div class="product-slider">
                        <asp:Repeater ID="Repeater_SP" runat="server">
                            <ItemTemplate>
                                <div class="item">
                                    <div class="product">
                                        <div class="flip-container">
                                            <div class="flipper">
                                                <div class="front">
                                                    <%--<a href="detail.html">--%>
                                                    <%--<img src="../Hinh/01.jpg" alt="" class="img-responsive">--%>
                                                    <asp:HyperLink ID="HyperLink_SP1" runat="server" NavigateUrl='<%# "~/TrangWeb/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>'>
                                                        <asp:Image ID="Image_img1" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                                    </asp:HyperLink>
                                                    <%--</a>--%>
                                                </div>
                                                <div class="back">
                                                    <asp:HyperLink ID="HyperLink_SP2" runat="server" NavigateUrl='<%# "~/TrangWeb/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>'>
                                                        <asp:Image ID="Image_img2" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                                    </asp:HyperLink>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </div>
                                            </div>
                                        </div>
                                        <asp:HyperLink ID="HyperLink_SP3" runat="server" CssClass="invisible" NavigateUrl='<%# "~/TrangWeb/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>'>
                                            <asp:Image ID="Image_img3" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                        </asp:HyperLink>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="text">
                                            <h3>
                                                <asp:HyperLink ID="HyperLink_SP4" runat="server" NavigateUrl='<%# "~/TrangWeb/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>' Text='<%# Eval("TENSP") %>'></asp:HyperLink>
                                            </h3>
                                            <%--<p class="price">$143.00</p>--%>
                                        </div>
                                        <!-- /.text -->
                                    </div>
                                    <!-- /.product -->
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>




                        <!-- /.product-slider -->
                    </div>

                    <!-- /.container -->
                </div>

            </div>
        </div>

        <!-- /#hot -->

        <!-- *** HOT END *** -->

        <!-- *** GET INSPIRED ***
 _________________________________________________________ -->
        <%--  <div class="container" data-animate="fadeInUpBig">
            <div class="col-md-12">
                <div class="box slideshow">
                    <h3>Get Inspired   
                    </h3>
                    <p class="lead">Get the inspiration from our world class designers</p>
                    <div id="get-inspired" class="owl-carousel owl-theme">
                        <div class="item">
                            <a href="#">
                                <img src="img/getinspired1.jpg" alt="Get inspired" class="img-responsive">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="img/getinspired2.jpg" alt="Get inspired" class="img-responsive">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="img/getinspired3.jpg" alt="Get inspired" class="img-responsive">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- *** GET INSPIRED END *** -->

        <!-- *** BLOG HOMEPAGE ***
 _________________________________________________________ -->

        <div class="box text-center" data-animate="fadeInUp">
            <div class="container">
                <div class="col-md-12">
                    <h3 class="text-uppercase">From our blog</h3>

                    <p class="lead">
                        What's new in the world of fashion? 
                    </p>
                </div>
            </div>
        </div>

        <%--<div class="container">

            <div class="col-md-12" data-animate="fadeInUp">

                <div id="blog-homepage" class="row">
                    <div class="col-sm-6">
                        <div class="post">
                            <h4><a href="post.html">Fashion now</a></h4>
                            <p class="author-category">
                                By <a href="#">John Slim</a> in <a href="#">Fashion and style</a>
                            </p>
                            <hr>
                            <p class="intro">
                                Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo.
                            </p>
                            <p class="read-more">
                                <a href="post.html" class="btn btn-primary">Continue reading</a>
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="post">
                            <h4><a href="post.html">Who is who - example blog post</a></h4>
                            <p class="author-category">
                                By <a href="#">John Slim</a> in <a href="#">About Minimal</a>
                            </p>
                            <hr>
                            <p class="intro">
                                Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo.
                            </p>
                            <p class="read-more">
                                <a href="post.html" class="btn btn-primary">Continue reading</a>
                            </p>
                        </div>

                    </div>

                </div>
                <!-- /#blog-homepage -->
            </div>
        </div>--%>
        <!-- /.container -->

        <!-- *** BLOG HOMEPAGE END *** -->


    </div>
    <!-- /#content -->

    <!-- /#all -->
</asp:Content>

