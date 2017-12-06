<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" AutoEventWireup="true" CodeFile="TrangChiTiet.aspx.cs" Inherits="TrangWeb_TrangChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
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
               font-weight: normal;
               font-family: "Roboto", Helvetica, Arial, sans-serif;
               padding: 6px 12px;
               font-size: 14px;
               line-height: 1.42857143;
               border-radius: 3px;   
           }
           .buy:hover{
                
                color: #ffffff;
                background-color: #4fbfa8;
                border-color: #41b39c;
           }

           .comment{
               font-weight: normal;
               font-family: "Roboto", Helvetica, Arial, sans-serif;
               padding: 6px 12px;
               font-size: 14px;
               line-height: 1.42857143;
               border-radius: 3px;   
           }
           .comment:hover{
                
                color: #ffffff;
                background-color: #4fbfa8;
                border-color: #41b39c;
           }
           .line{           
            color:#F7931E;
             
        }
    </style>
    
           <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js"></script>
    
<script>
    
   jQuery(function($) {
       $('.buy').click(function () {
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
    <%--<script src="obajuCSS/js/bootstrap.min.js"></script>
    <link href="obajuCSS/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>--%>
    <%--<link href="../css/Style.css" rel="stylesheet" type="text/css" />--%--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="all">

        <div id="content">
            <div class="container">

                <%--<div class="col-md-12">
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
                            <h3 class="panel-title">Danh mục sản phẩm</h3>
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
                                            <a href="#details" class="scroll-to">Bấm vào để xem chi tiết</a>
                                        </p>
                                        <p class="price">
                                            <asp:Label ID="Label1" runat="server" Text='<%# string.Format("{0:#,##0 VNĐ}",Eval("GIA"))%>'></asp:Label>
                                        </p>

                                        <p class="text-center buttons">
                                            <%--<asp:HyperLink ID="HyperLink_Mua" runat="server" CssClass="btn btn-primary" NavigateUrl='<%# "~/TrangGioHang.aspx?MASP="+Eval("MaSP") %>'><i class="fa fa-shopping-cart"></i> Thêm giỏ hàng</asp:HyperLink>--%>
                                
                                <button type="button" runat="server" class="buy" data='<%# Eval("MaSP") %>'>
                                    <span class="fa fa-shopping-cart"></span> Thêm vào giỏ hàng
                                </button>
                                            <button type="button" data-toggle="modal" data-target="#comment-modal" class="comment" runat="server">
                                    <span class="fa fa-comments-o"></span> Bình luận của bạn
                                </button>
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
                                <h4>Thông tin chi tiết</h4> 
                                <p>
                                    <asp:Label ID="Label_ChiTiet" runat="server" Text='<%# Eval("CHITIET") %>'></asp:Label>
                                </p>
                                <hr>
                              
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="box" id="details">
                    <div class="social">
                                    <h4>Bình luận gần đây</h4>
                        <asp:DataList ID="ddlBinhLuan" runat="server">
                            <ItemTemplate>
           <asp:Label ID="Label7" runat="server" Text='<%# Eval("HoTenKH") %>' style="color: #0000FF"></asp:Label>
            :
  <asp:Label ID="Label8" runat="server"  Text='<%# (Eval("NoiDung").ToString()).Replace("\n","<br>") %>'></asp:Label>
     
        </ItemTemplate>
                        </asp:DataList>
                                   <%-- <asp:Label ID="Label7" runat="server" Text='<%# Eval("TaiKhoan") %>' style="color: #0000FF"></asp:Label>
                                            :
                                        <asp:Label ID="Label8" runat="server"  Text='<%# (Eval("NoiDung").ToString()).Replace("\n","<br>") %>'></asp:Label>--%>
                                </div>
                        </div>
                    <div class="modal fade center-block" id="comment-modal" tabindex="-1" role="dialog" aria-labelledby="LienHe" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="Comment"></h4>
                        </div>
                        <div class="modal-body">
                             <div class="box">
                                <div>
                                    <div class="container">
                                        <div class="col-md-6" runat="server" id="fdangnhap">
                                             <div class="box1">
                                                 <h1>Bình luận của bạn</h1>
                                            <div class="form-group">
                                                <asp:TextBox id="txtNoiDung" runat="server" TextMode="MultiLine" Width="650px" Height="70px" class="form-control" placeholder="Nhập bình luận của bạn.."></asp:TextBox>
                                                <span class="text-danger">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_NoiDung" runat="server" ErrorMessage="Nhập bình luận của bạn" ControlToValidate="txtNoiDung" Style="font-style: italic"></asp:RequiredFieldValidator>
                                                </span>
                                            </div>
                                            <div class="text-center">
                                                <asp:LinkButton ID="LinkButton_Gui" CssClass="btn btn-primary" runat="server" OnClick="LinkButton_Gui_Click"><i class="fa fa-sign-in"></i> Gửi bình luận</asp:LinkButton>
                                            </div>
                                                 </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
                    <!-- /.col-md-9 -->
                </div>
                <!-- /.container -->
            </div>
            <!-- /#content -->

        </div>
    </div>
    <!-- /#all -->

</asp:Content>

