using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class TrangWeb_Default : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Load_SanPham();
            Load_TinTuc();
        }
    }
    public void Load_SanPham()
    {
        Repeater_SP.DataSource = x.getData("Select * from SanPham");
        Repeater_SP.DataBind();
    }
    public void Load_TinTuc()
    {
        DtNoiDung .DataSource = x.getData("Select * from TinTuc");
        DtNoiDung.DataBind();
    }
}