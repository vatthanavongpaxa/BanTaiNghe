using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class SuaTT : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Load_TinTuc();
        }
    }
    public void Load_TinTuc()
    {
        DataTable dt = x.getData("Select * from TinTuc where MaTT=" + Request.QueryString["MATT"].ToString());
        txtTieuDe.Text = dt.Rows[0][1].ToString();
        TextBox1.Text = dt.Rows[0][2].ToString();
        ckeNoiDung.Text = dt.Rows[0][3].ToString();
    }
}