<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="TrangWeb_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 379px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="all">
        <div id="content">

            <div class="container">
                <div class="col-md-12">
                    <div id="main-slider">
                        <div class="item">
                            <img class="img-responsive" src="../obajuCSS/img/img/01.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="../obajuCSS/img/img/02.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="../obajuCSS/img/img/03.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="../obajuCSS/img/img/04.jpg" alt="">
                        </div>
                    </div>
                    <!-- /#main-slider -->
                </div>
            </div>

            <!-- *** ADVANTAGES HOMEPAGE ***
 _________________________________________________________ -->
            <div id="advantages">

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

            </div>
            <!-- /#advantages -->

            <!-- *** ADVANTAGES END *** -->

            <!-- *** HOT PRODUCT SLIDESHOW ***
 _________________________________________________________ -->
            <div id="hot">

                <div class="box">
                    <div class="container">
                        <div class="col-md-12">
                            <h2>Hot nhất tuần này</h2>
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
                                                    <asp:HyperLink ID="HyperLink_SP1" runat="server" NavigateUrl='<%# "~/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>'>
                                                        <asp:Image ID="Image_img1" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                                    </asp:HyperLink>
                                                    <%--</a>--%>
                                                </div>
                                                <div class="back">
                                                    <asp:HyperLink ID="HyperLink_SP2" runat="server" NavigateUrl='<%# "~/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>'>
                                                        <asp:Image ID="Image_img2" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                                    </asp:HyperLink>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </div>
                                            </div>
                                        </div>
                                        <asp:HyperLink ID="HyperLink_SP3" runat="server" CssClass="invisible" NavigateUrl='<%# "~/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>'>
                                            <asp:Image ID="Image_img3" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                        </asp:HyperLink>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="text">
                                            <h3>
                                                <asp:HyperLink ID="HyperLink_SP4" runat="server" NavigateUrl='<%# "~/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>' Text='<%# Eval("TENSP") %>'></asp:HyperLink>
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
        <div class="container" data-animate="fadeInUpBig">
            <div class="col-md-12">
                <div class="box slideshow">
                    <h3>Tin tức công nghệ
                    </h3>
                    <%--<div id="get-inspired" class="owl-carousel owl-theme">
                        <div class="item">
                           
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
        
        <!-- *** GET INSPIRED END *** -->

        <!-- *** BLOG HOMEPAGE ***
 _________________________________________________________ -->

    <%--    <div class="box text-center" data-animate="fadeInUp">
            <div class="container">
                <div class="col-md-12">
                    <h3 class="text-uppercase">From our blog</h3>

                    <p class="lead">
                        What's new in the world of fashion? <a href="blog.html">Check our blog!</a>
                    </p>
                </div>
            </div>
        </div>--%>

        <div class="container">

            <div class="col-md-12" data-animate="fadeInUp">

                <div id="blog-homepage" class="row" style=" overflow:scroll">
                     <asp:DataList ID="DtNoiDung" cssClass="table table-hover table-striped" runat="server">
        <ItemTemplate>
            
                   <table class="nav-justified">
                <tr>
                    <td class="auto-style1">
                        <%--<asp:Label ID="Label2" runat="server" style="color: #0000FF; font-weight: 700; font-size: large; text-align: center" Text='<%# Eval("TieuDe") %>'></asp:Label>--%>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/TrangTinTuc.aspx?MaTT=" + Eval("MaTT") %>' Text='<%# Eval("TieuDe") %>'></asp:HyperLink>
                    </td>
                    <td class="text-right">
                        <asp:Label ID="Label1" runat="server" style="text-align: left" Text='<%# Eval("Ngay") %>'></asp:Label>
                    </td>
                </tr>
            </table>
               
        </ItemTemplate>
    </asp:DataList>
                    <asp:GridView ID="GvTinTuc" CssClass="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="MaTT" Visible="False" />
                            <asp:BoundField DataField="TieuDe" >
                            <HeaderStyle BorderStyle="None" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ngay" DataFormatString="{0:dd/MM/yyyy HH:mm:ss}" />
                        </Columns>
                    </asp:GridView>
                </div>
                <!-- /#blog-homepage -->
            </div>
        </div>
        <!-- /.container -->

        <!-- *** BLOG HOMEPAGE END *** -->


    </div>
    <!-- /#content -->

    <!-- /#all -->
</asp:Content>

