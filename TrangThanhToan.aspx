<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" AutoEventWireup="true" CodeFile="TrangThanhToan.aspx.cs" Inherits="TrangWeb_TrangThanhToan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="all">

        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb">
                            <li><a href="#">Home</a>
                            </li>
                            <li>Checkout - Address</li>
                        </ul>
                    </div>
                    <div class="col-md-12">
                        <div class="box">
                            <h3>Thông tin khách hàng</h3>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="TextBox_NameKH">Tên khách hàng</label>
                                        <asp:TextBox ID="TextBox_NameKH" runat="server" CssClass="form-control" ValidationGroup="TTCN" placeholder="Tên khách hàng" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="TextBox_NgaySinh">Ngày sinh</label>
                                        <asp:TextBox ID="TextBox_NgaySinh" runat="server" CssClass="form-control" placeholder="Ngày sinh" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-6">

                                    <label for="TextBox_SDT">Số điện thoại</label>

                                    <asp:TextBox ID="TextBox_SDT" runat="server" CssClass="form-control" placeholder="Số điện thoại" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>

                                <div class="col-sm-6">

                                    <label for="TextBox_PassDK">Giới tính</label>
                                    <asp:TextBox ID="TextBox_GioiTinh" runat="server" CssClass="form-control" placeholder="Giới tính" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <!-- /.row -->
                            <br />
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="TextBox_DiaChi">Địa chỉ</label>
                                        <asp:TextBox ID="TextBox_DiaChi" runat="server" CssClass="form-control" placeholder="Địa chỉ" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <h3>Bảng sản phẩm</h3>
                            <div class="table-responsive">
                                <asp:GridView ID="GridView_GioHang" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" GridLines="None" DataKeyNames="MASP">
                                    <Columns>
                                        <asp:BoundField DataField="MASP" HeaderText="Mã Sản Phẩm"></asp:BoundField>
                                        <asp:BoundField DataField="TENSP" HeaderText="Tên Sản Phẩm">
                                            <ItemStyle CssClass="text-capitalize text-info" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="GIA" HeaderText="Giá" />
                                        <asp:BoundField DataField="SOLUONG" />
                                        <asp:BoundField DataField="THANHTIEN" />
                                    </Columns>
                                    <HeaderStyle CssClass="bg-success" />

                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <h3>Thông tin người nhận hàng</h3>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="TextBox_NameKH">Tên người nhận</label>
                                        <asp:TextBox ID="TextBox_TenNG" runat="server" CssClass="form-control" ValidationGroup="TTCN" placeholder="Tên khách hàng"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="TextBox_NgaySinh">Ngày sinh</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Ngày sinh" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-6">

                                    <label for="TextBox_SDT">Số điện thoại</label>

                                    <asp:TextBox ID="TextBox_SDTNG" runat="server" CssClass="form-control" placeholder="Số điện thoại" TextMode="Number"></asp:TextBox>
                                </div>

                                <div class="col-sm-6">

                                    <label for="DropDownList_GioiTinh">Giới tính</label>
                                    <asp:DropDownList ID="DropDownList_GioiTinh" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="True">Nam</asp:ListItem>
                                        <asp:ListItem Value="False">Nữ</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <!-- /.row -->
                            <br />
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="TextBox_DiaChi">Địa chỉ</label>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Địa chỉ" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="box">
                        <form method="post" action="checkout2.html">
                            <h1>Checkout</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li class="active"><a href="#"><i class="fa fa-map-marker"></i>
                                    <br>
                                    Address</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-truck"></i>
                                    <br>
                                    Delivery Method</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-money"></i>
                                    <br>
                                    Payment Method</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-eye"></i>
                                    <br>
                                    Order Review</a>
                                </li>
                            </ul>

                            <div class="content">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">Firstname</label>
                                            <input type="text" class="form-control" id="firstname">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">Lastname</label>
                                            <input type="text" class="form-control" id="lastname">
                                        </div>
                                    </div>
                                </div>
                                <!-- /.row -->

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="company">Company</label>
                                            <input type="text" class="form-control" id="company">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="street">Street</label>
                                            <input type="text" class="form-control" id="street">
                                        </div>
                                    </div>
                                </div>
                                <!-- /.row -->

                                <div class="row">
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label for="city">Company</label>
                                            <input type="text" class="form-control" id="city">
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label for="zip">ZIP</label>
                                            <input type="text" class="form-control" id="zip">
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label for="state">State</label>
                                            <select class="form-control" id="state"></select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label for="country">Country</label>
                                            <select class="form-control" id="country"></select>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="phone">Telephone</label>
                                            <input type="text" class="form-control" id="phone">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="text" class="form-control" id="email">
                                        </div>
                                    </div>

                                </div>
                                <!-- /.row -->
                            </div>

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="basket.html" class="btn btn-default"><i class="fa fa-chevron-left"></i>Back to basket</a>
                                </div>
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-primary">
                                        Continue to Delivery Method<i class="fa fa-chevron-right"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- /.box -->--%>
    </div>
    <!-- /.col-md-12 -->

    <!-- /.container -->

    <!-- /#content -->
</asp:Content>

