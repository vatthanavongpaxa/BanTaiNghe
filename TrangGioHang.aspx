<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" AutoEventWireup="true" CodeFile="TrangGioHang.aspx.cs" Inherits="TrangWeb_TrangGioHang" %>

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
                        <li>Shopping cart</li>
                    </ul>
                </div>

                <div class="col-md-12" id="basket">

                    <div class="box">
                        <h1>Shopping cart</h1>
                        <p class="text-muted">You currently have 3 item(s) in your cart.</p>
                        <div class="table-responsive">
                            <asp:GridView ID="GridView_GioHang" runat="server" CssClass="table table-condensed table-bordered table-hover " AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="MASP" HeaderText="Mã Sản Phẩm" />
                                    <asp:BoundField DataField="TENSP" HeaderText="Tên Sản Phẩm" />
                                    <asp:BoundField DataField="GIA" HeaderText="Giá" />
                                </Columns>
                            </asp:GridView>
                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="category.html" class="btn btn-default"><i class="fa fa-chevron-left"></i>Continue shopping</a>
                                </div>
                                <div class="pull-right">
                                    <button class="btn btn-default"><i class="fa fa-refresh"></i>Update basket</button>
                                    <button type="submit" class="btn btn-primary">
                                        Proceed to checkout <i class="fa fa-chevron-right"></i>
                                    </button>
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

