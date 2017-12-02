<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KhachHang.master" EnableEventValidation="false" ValidateRequest="false"  AutoEventWireup="true" CodeFile="QuenMK.aspx.cs" Inherits="QuenMK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css" >
        .form-gap {
    padding-top: 70px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <div class="form-gap"></div>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Quên mật khẩu?</h2>
                  <p>Bạn có thể lấy lại mật khẩu tại đây.</p>
                  <div class="panel-body">
                    <form id="register-form" role="form" autocomplete="off" class="form" method="post">
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i>
                   
                    </span>
                     <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                    </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Vui lòng nhập email" style="font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <input name="recover-submit" id="btGui" runat="server" onserverclick="btGui_ServerClick" class="btn btn-lg btn-primary btn-block" value="Gửi yêu cầu" type="button">
            </div>
            <input type="hidden" class="hide" name="token" id="token" value="">
        </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
</asp:Content>

