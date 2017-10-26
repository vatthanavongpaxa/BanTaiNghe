<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LogInLogOut.ascx.cs" Inherits="UserControl_LogInLogOut" %>
<style type="text/css">
    .tablelogin {
        width: 300px;
        text-align: center;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    }

    .tablelogout {
        width: 300px;
        text-align: center;
    }

    .tableloginout {
        width: 300px;
    }

    .btn {
        background-color: #303030;
        border-radius: 5px;
        color:white;
        width: initial;
    }
</style>

<table align="center" cellpadding="0" cellspacing="0" class="tableloginout">
    <tr>
        <td>
            <asp:Panel ID="pnLogin" runat="server">
                <table align="center" cellpadding="0" cellspacing="0" class="tablelogin">
                    <tr>
                        <td style="background-color: #808080; height: 50px;">LOGIN</td>
                    </tr>
                    <tr>
                        <td>&nbsp;Username</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtUser" runat="server" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;Password</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" Height="25px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbThongBao" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btLogin" runat="server" Text="Login" Height="25px" OnClick="btLogin_Click" CssClass="btn" />&emsp;
                                            <asp:Button ID="btDangky" runat="server" Text="Register" CssClass="btn" OnClick="btDangky_Click" Height="25px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="ibtRePage" runat="server" ImageUrl="~/icon/restorepage.png" OnClick="ibtRePage_Click" Visible="False" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Panel ID="pnLogOut" runat="server" Visible="False">
                <table align="center" cellpadding="0" cellspacing="0" class="tablelogout">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Hello !!
                            <asp:Label ID="lbUsername" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btLogOut" runat="server" CssClass="btn" Height="25px" OnClick="btLogOut_Click" Text="LogOut" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
</table>

