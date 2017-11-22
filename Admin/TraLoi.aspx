<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="TraLoi.aspx.cs" Inherits="Admin_TraLoi" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-horizontal">
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" CssClass="control-label col-md-2" Text="Email: "></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtEmail" ReadOnly="true" runat="server" Width="197px"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" CssClass="control-label col-md-2" Text="Nội dung trả lời: "></asp:Label>
            <div class="col-md-10">
                <CKEditor:CKEditorControl ID="ckeNoiDung" runat="server"></CKEditor:CKEditorControl>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ckeNoiDung" ErrorMessage="Vui lòng nhập nội dung !">(*)</asp:RequiredFieldValidator>
            </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input type="button" value="Trả lời" runat="server" id="btsend" onserverclick="btsend_ServerClick" class="btn btn-default" />
                 <a href="PhanHoi.aspx">Quay lại</a>
                </div>
        </div>
    </div>
    <div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" /> 
</div>
        </div>
</asp:Content>

