using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class TrangWeb_TrangChiTiet : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Load_CTSP();
        }
    }
    public void Load_CTSP()
    {

        Repeater_CTSP.DataSource = x.getData("SELECT TOP 1 * FROM SanPham where MASP=" + Request.QueryString["MASP"].ToString());
        Repeater_CTSP.DataBind();
    }

}