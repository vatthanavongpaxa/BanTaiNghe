<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ThemTT.aspx.cs" Inherits="Admin_ThemTT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="LbNgay" runat="server" Visible="false" Text="Label"></asp:Label>
    <div class="form-horizontal">
        <div class="form-group">
        <asp:Label ID="Label2" runat="server" CssClass="control-label col-md-2" Text="Tiêu đề: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtTieuDe" runat="server" Height="39px" TextMode="MultiLine" Width="233px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTieuDe" ErrorMessage="Vui lòng nhập tiêu đề !">(*)</asp:RequiredFieldValidator>
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
                <input type="button" id="btThem" value="Thêm mới" runat="server" onserverclick="btThem_ServerClick"  class="btn btn-default" />
                 <a href="TinTuc.aspx">Quay lại</a>
            </div>
        </div>
    </div>
<div>
   
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
   
</div>
</asp:Content>

