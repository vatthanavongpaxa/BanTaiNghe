<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="SuaTT.aspx.cs" Inherits="SuaTT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-horizontal">
        <div class="form-group">
        <asp:Label ID="Label2" runat="server" CssClass="control-label col-md-2" Text="Tiêu đề: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtTieuDe" runat="server" Height="39px" TextMode="MultiLine" Width="233px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTieuDe" ErrorMessage="Vui lòng nhập tiêu đề !">(*)</asp:RequiredFieldValidator>
            </div>
        </div>
          <div class="form-group">
        <asp:Label ID="Label3" runat="server" CssClass="control-label col-md-2" Text="Ngày đăng: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" TextMode="SingleLine" ReadOnly="true" ></asp:TextBox>
            </div>
        </div>
         <div class="form-group">
        <asp:Label ID="Label1" runat="server" CssClass="control-label col-md-2" Text="Nội dung: "></asp:Label>
            <div class="col-md-10">
                <CKEditor:CKEditorControl ID="ckeNoiDung"  runat="server"></CKEditor:CKEditorControl>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ckeNoiDung" ErrorMessage="Vui lòng nhập nội dung !">(*)</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input type="button" id="btCapNhat" value="Cập nhật" runat="server" class="btn btn-default" />
                 <a href="TinTuc.aspx">Quay lại</a>
            </div>
        </div>
    </div>
<div>
   
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
   
</div>
</asp:Content>

