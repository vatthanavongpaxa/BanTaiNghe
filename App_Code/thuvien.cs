using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for thuvien
/// </summary>
public class thuvien
{
    private string chuoiketnoi;
    private string tentable;
    private string lenhselect;
    private SqlDataAdapter bodocghi;
    private SqlCommandBuilder bophatsinh;
    private SqlConnection ketnoi;
    private DataTable dt;
    //private int sodong;
    public thuvien(string ptentable,string plenhselect)
    {

        chuoiketnoi = "server =.\\SQLEXPRESS; database = QUANLY_BANHANG; Integrated security = true";
        //chuoiketnoi = WebConfigurationManager.ConnectionStrings["ConnStringDb1"].ToString();
        tentable = ptentable;

        if(tentable != "")
        {
            lenhselect = "SELECT * FROM " + tentable;
        }
        else
        {
            lenhselect = plenhselect;
        }
        ketnoi = new SqlConnection(chuoiketnoi);
        bodocghi = new SqlDataAdapter(lenhselect, ketnoi);
        bophatsinh = new SqlCommandBuilder(bodocghi);
        dt = new DataTable();
    }

    public string Chuoiketnoi
    {
        get
        {
            return chuoiketnoi;
        }

        set
        {
            chuoiketnoi = value;
        }
    }

    public SqlConnection Ketnoi
    {
        get
        {
            return ketnoi;
        }

        set
        {
            ketnoi = value;
        }
    }

    public string Tentable
    {
        get
        {
            return tentable;
        }

        set
        {
            tentable = value;
        }
    }

    public string Lenhselect
    {
        get
        {
            return lenhselect;
        }

        set
        {
            lenhselect = value;
        }
    }

    public SqlDataAdapter Bodocghi
    {
        get
        {
            return bodocghi;
        }

        set
        {
            bodocghi = value;
        }
    }

    public SqlCommandBuilder Bophatsinh
    {
        get
        {
            return bophatsinh;
        }

        set
        {
            bophatsinh = value;
        }
    }

    public DataTable Dt
    {
        get
        {
            return dt;
        }

        set
        {
            dt = value;
        }
    }

    public int Sodong
    {
        get
        {
            return dt.DefaultView.Count;
        }

 
    }

    public DataTable docbang()
    {
        bodocghi.Fill(dt);
        bodocghi.FillSchema(dt, SchemaType.Mapped);
        return dt;
    }

    public string capnhat()
    {
        string kq = "";
        try
        {
            bodocghi.Update(dt);
            dt.AcceptChanges();
        }
        catch(Exception ex)
        {
            kq = ex.Message;
            dt.RejectChanges();
        }
        return kq;
    }
    public thuvien()
    {

    }
}