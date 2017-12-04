<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" AutoEventWireup="true" CodeFile="TrangSanPham.aspx.cs" Inherits="TrangWeb_TrangSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<style type="text/css">
        .col-lg-12 {
            margin-top: 25px;
            margin-left:20px;
        }
      .col-sm-6{
          height:500px;
          
          
      }
        .product-name {
            color: black;
            
        }
         .glyphicon-shopping-cart{
            color:white;
        }
         .glyphicon-shopping-cart:hover{
            color:#66CD00;
        }
            .product-name:hover {
                text-decoration: none;
                color: red;
            }

        .show {
            -webkit-transition-duration: 0.5s; /*Webkit: Animation duration*/
            -moz-transition-duration: 0.5s; /*Mozilla duration version*/
            -o-transition-duration: 0.5s; /*Opera duration version*/
            margin: 0 10px 5px 0; /*margin between images*/
        }

            .show:hover {
                -webkit-transform: scale(1.1); /*Webkit: Scale up image to 1.2x original size*/
                -moz-transform: scale(1.1); /*Mozilla scale version*/
                -o-transform: scale(1.1); /*Opera scale version*/
            }
           .buy{
               height:33px;
               width:45px;
               border-radius:7px ;
               background-color:rgba(102, 205, 0,0.5);
               border:1px solid #66CD00;
               
           }
           .buy:hover{
                background-color:rgba(255, 185, 15,0.5);
           }
           .line{           
            color:#F7931E;
             
        }
    </style>
    
           <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js"></script>
    
<script>
    
   jQuery(function($) {
   $('.buy').click(function(){
           var str =$(this).attr('data');
      
        $.ajax({
            type: "get",
            url: "TrangGioHang.aspx",
            data: 'MaSP=' + str,
            contentType: "application/json; charset=utf-8",
            success: function () { // Required Callback Function
                $.notify("Thêm Thành Công!", { autoHideDelay: 1000, className: 'success' });
},
     error:function(){
         $.notify("Thêm Thất Bại!", { autoHideDelay: 1000 });
       }
        });
            });
                    });
    
  
</script> 
    <script src="obajuCSS/js/bootstrap.min.js"></script>
    <link href="obajuCSS/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>--%>
    <link href="../css/Style.css" rel="stylesheet" type="text/css" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="all">

        <div id="content">
            <div class="container">

               <%-- <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li><a href="#">Ladies</a>
                        </li>
                        <li><a href="#">Tops</a>
                        </li>
                        <li>White Blouse Armani</li>
                    </ul>

                </div>--%>

                <div class="col-md-3">
                    <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">DANH MỤC</h3>
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

                    <%--                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Brands <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i>Clear</a></h3>
                        </div>

                        <div class="panel-body">

                            <form>
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Armani (10)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Versace (12)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Carlo Bruni (15)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Jack Honey (14)
                                        </label>
                                    </div>
                                </div>

                                <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i>Apply</button>

                            </form>

                        </div>
                    </div>

                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Colours <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i>Clear</a></h3>
                        </div>

                        <div class="panel-body">

                            <form>
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">
                                            <span class="colour white"></span>White (14)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">
                                            <span class="colour blue"></span>Blue (10)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">
                                            <span class="colour green"></span>Green (20)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">
                                            <span class="colour yellow"></span>Yellow (13)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">
                                            <span class="colour red"></span>Red (10)
                                        </label>
                                    </div>
                                </div>

                                <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i>Apply</button>

                            </form>

                        </div>
                    </div>--%>

                    <!-- *** MENUS AND FILTERS END *** -->

                    <div class="banner">
                        <a href="#">
                           <%-- <img src="img/banner.jpg" alt="sales 2014" class="img-responsive">--%>
                        </a>
                    </div>
                </div>

                <div class="col-md-9">
                    <div class="row same-height-row">
                        <asp:Repeater ID="Repeater_SP" runat="server">
                            <ItemTemplate>
                                <div class="col-md-3 col-sm-6">
                                    <div class="product same-height">
                                        <div class="flip-container">
                                            <div class="flipper">
                                                <div class="front">
                                                    <asp:HyperLink ID="HyperLink_SP1" runat="server" NavigateUrl='<%# "~/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>'>
                                                        <asp:Image ID="Image_img1" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                                    </asp:HyperLink>
                                                    &nbsp;&nbsp;
                                                </div>
                                                <div class="back">
                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>'>
                                                        <asp:Image ID="Image_img2" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                                    </asp:HyperLink>
                                                    &nbsp;&nbsp;
                                                </div>
                                            </div>
                                        </div>
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>'>
                                            <asp:Image ID="Image_img3" runat="server" ImageUrl='<%# "~/HINH/"+Eval("HINH") %>' CssClass="img-responsive" />
                                        </asp:HyperLink>
                                        &nbsp;&nbsp;<div class="text">
                                            <h3>
                                                <asp:HyperLink ID="HyperLink_SP4" runat="server" NavigateUrl='<%# "~/TrangChiTiet.aspx?MASP=" + Eval("MaSP") %>' Text='<%# Eval("TENSP") %>'></asp:HyperLink></h3>
                                            <p class="price">
                                                <asp:Label ID="Label_Gia" runat="server" Text='<%# string.Format("{0:#,##0 VNĐ}",Eval("GIA")) %>'></asp:Label>
                                            </p>

                                        </div>
                                    </div>
                                    <!-- /.product -->

                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                </div>


                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->

    </div>
    <!-- /#all -->
</asp:Content>

