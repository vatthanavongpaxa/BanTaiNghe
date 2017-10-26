<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="XemCTDonDH.aspx.cs" Inherits="Admin_XemCTDonDH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>

        <asp:GridView ID="GridViewDDH" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridViewDDH_RowCancelingEdit" OnRowUpdating="GridViewDDH_RowUpdating" DataKeyNames="SOHD" OnRowEditing="GridViewDDH_RowEditing" OnSelectedIndexChanging="GridViewDDH_SelectedIndexChanging" OnRowDeleting="GridViewDDH_RowDeleting">
            <Columns>
                <asp:BoundField DataField="SOHD" HeaderText="SoHD" ReadOnly="True" />
                <asp:BoundField DataField="NGAYDH" HeaderText="Ngày đặt hàng" ReadOnly="True" />
                <asp:BoundField DataField="NGAYGIAOHANG" HeaderText="Ngày giao hàng" ReadOnly="True" />
                <asp:BoundField DataField="TENNGUOINHAN" HeaderText="Tên người nhận" ReadOnly="True" />
                <asp:BoundField DataField="DIACHINHAN" HeaderText="Địa chỉ nhận" ReadOnly="True" />
                <asp:BoundField DataField="DIENTHOAINHAN" HeaderText="Điện thoại nhận" ReadOnly="True" />
                <asp:TemplateField HeaderText="Đã duyệt">
                    <ItemTemplate>
                        <asp:CheckBox ID="ckbGiaoHang" runat="server" Checked='<%# Eval("THANHCONG").ToString() == "True" %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowSelectButton="True" HeaderText="Chọn" />
                <asp:CommandField ShowEditButton="True" HeaderText="Sửa" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <div>
            <asp:GridView ID="GridViewCT" runat="server" AutoGenerateColumns="False" DataKeyNames="SOHD">
                <Columns>
                    <asp:BoundField DataField="SOHD" HeaderText="SOHD" />
                    <asp:BoundField DataField="MASP" HeaderText="MASP" />
                    <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" />
                    <asp:BoundField DataField="GIA" HeaderText="Đơn giá" />
                    <asp:BoundField DataField="THANHTIEN" HeaderText="Thành tiền" />
                </Columns>
            </asp:GridView>
        </div>
        <div style="text-align: center;">
            <asp:Label ID="lblTongBao" runat="server" Visible="False"></asp:Label>
        </div>
    </div>
</asp:Content>

