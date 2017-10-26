<%@ Page Title="" Language="C#" MasterPageFile="~/Mau_ManHinh/HOMEPAGE.master" AutoEventWireup="true" CodeFile="LienHe.aspx.cs" Inherits="Trang_Web_LienHe" %>

<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tblienhe {
            width: 700px;
        }
        .tblienheleft {
            text-align: right;
            width: 150px;
        }
        .tblienheright {
            text-align: left;
            width: 550px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="tblienhe">
        <tr>
            <td class="tblienheleft">&nbsp;</td>
            <td class="tblienheright">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tblienheleft">Tên khách hàng </td>
            <td class="tblienheright">
                &nbsp;<asp:TextBox ID="txtTen" runat="server" Width="500px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tblienheleft">&nbsp;</td>
            <td class="tblienheright">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tblienheleft">Điên thoại </td>
            <td class="tblienheright">
                &nbsp;<asp:TextBox ID="txtDienThoai" runat="server" Width="500px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tblienheleft">&nbsp;</td>
            <td class="tblienheright">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tblienheleft">Email </td>
            <td class="tblienheright">
                &nbsp;<asp:TextBox ID="txtEmail" runat="server" Width="500px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tblienheleft">&nbsp;</td>
            <td class="tblienheright">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tblienheleft">Nọi dung </td>
            <td class="tblienheright">
                &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: left">
                <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Height="300px" Width="500px">
                </CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center">
                <asp:Label ID="lbThongBao" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center">
                <asp:ImageButton ID="ibtGui" runat="server" ImageUrl="~/icon/send.png" OnClick="ibtGui_Click" ToolTip="Send" />
            </td>
        </tr>
    </table>
</asp:Content>

