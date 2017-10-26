<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="CapNhatSP.aspx.cs" Inherits="Admin_CapNhatSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tbCapNhat {
            width: 700px;
        }
        .tbCapNhatLeft {
            text-align: right;
            width: 200px;

        }
        .tbCapNhatCenter {
            text-align: left;
            padding-left: 20px;
            width: 350px;
        }
        .tbCapNhatRight {
            text-align: center;
            width: 150px;
            
        }
        #btLuu {
            text-align:center;
        }
        #tdGird {

        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="tbCapNhat">
        <tr>
            <td class="tbCapNhatLeft">&nbsp;</td>
            <td class="tbCapNhatCenter">
                &nbsp;</td>
            <td class="tbCapNhatCenter">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">Tên Sản phẩm :</td>
            <td class="tbCapNhatCenter">
                <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenSP" ForeColor="Red" ValidationGroup="saveSp" ErrorMessage="Nhập tên Sản phẩm" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td class="tbCapNhatRight" rowspan="5">
                            <asp:Image ID="ImageHinh" runat="server" Width="150px" />
                            <br />
                            <asp:Label ID="lbHinh" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">&nbsp;</td>
            <td class="tbCapNhatCenter">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">Giá</td>
            <td class="tbCapNhatCenter">
                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtGia" ForeColor="Red" ValidationGroup="saveSp" ErrorMessage="Nhập tên Giá">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">&nbsp;</td>
            <td class="tbCapNhatCenter">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">Hình</td>
            <td class="tbCapNhatCenter">
                <asp:FileUpload ID="FileUploadHinh"  runat="server" />
            </td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">&nbsp;</td>
            <td class="tbCapNhatCenter" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">Loai Sản phẩm</td>
            <td class="tbCapNhatCenter" colspan="2">
                <asp:DropDownList ID="DropDownListLoai" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">&nbsp;</td>
            <td class="tbCapNhatCenter" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">Chi tiết</td>
            <td class="tbCapNhatCenter" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">&nbsp;</td>
            <td class="tbCapNhatCenter" colspan="2">
                <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Width="500px"></CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">&nbsp;</td>
            <td class="tbCapNhatCenter" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td id="btLuu" colspan="2">
                <asp:ImageButton ID="ibtSave" runat="server" ImageUrl="~/icon/save.png" ToolTip="Save" OnClick="ibtSave_Click" ValidationGroup="saveSp" />
                &emsp;&emsp;
                <asp:ImageButton ID="ibtCanCel" runat="server" ImageUrl="~/icon/cancel.png" ToolTip="Cancel" OnClick="ibtCanCel_Click" Visible="False" />
            </td>
        </tr>
        <tr>
            <td class="tbCapNhatLeft">&nbsp;</td>
            <td id="btLuu" colspan="2">
                <asp:Label ID="lbThongBao" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td id="tdGird" colspan="3">
                <asp:GridView ID="GridViewSP" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridViewSP_SelectedIndexChanged" OnRowDeleting="GridViewSP_RowDeleting" OnRowDataBound="GridViewSP_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="MASP" HeaderText="MaSP" />
                        <asp:BoundField DataField="TENSP" HeaderText="Tên Sản phẩm" >
                        <ItemStyle Font-Size="Smaller" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Gia" DataFormatString="{0:0,0 vnđ}" HeaderText="Giá" />
                        <asp:TemplateField HeaderText="Hình">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~/Hinh/" + Eval("HINH") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="MALOAI" HeaderText="Loại Sản phẩm" />
                        <asp:CommandField ButtonType="Button" SelectText="Chọn" ShowSelectButton="True" />
                        <asp:CommandField ButtonType="Button" DeleteText="Xóa" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

