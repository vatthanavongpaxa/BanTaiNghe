using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public class XLDL
{
    public static SqlConnection conn;
    public static SqlCommand cmd;
    public static string str = ConfigurationManager.ConnectionStrings["conn"].ConnectionString.ToString();
    public DataTable getData(string Lenhsql)
    {
        SqlConnection sqlcon = new SqlConnection(str);
        {
            SqlDataAdapter sqlDA = new SqlDataAdapter(Lenhsql, sqlcon);
            DataTable dt = new DataTable();
            sqlDA.Fill(dt);
            return dt;
        }

    }
    public void thuchienlenh(string LenhSQL)
    {
        using (SqlConnection cnn = new SqlConnection(str))
        {
            cnn.Open();
            SqlCommand bolenh = new SqlCommand(LenhSQL, cnn);
            bolenh.ExecuteNonQuery();
            cnn.Close();
        }
    }
  
    


    public static SqlConnection Connection()
    {

        conn = new SqlConnection(str);
        conn.Open();
        return conn;
    }

    public DataTable DataTable(string sql)
    {
        SqlConnection conn = Connection();
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];
        conn.Close();

    }

    public void ReadSP(String Sql)
    {
        Connection();
        cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = Sql;
    }



    public SqlDataReader getDataReader(string sql)
    {

        SqlConnection con = Connection();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader rd = cmd.ExecuteReader();
        return rd;
        cmd.Dispose();
        rd.Close();

        con.Close();

        SqlConnection.ClearPool(con);
    }
    public void ASPXComboBox(string sql, DropDownList cmbx, string iText, string ivalue)
    {
        cmbx.Items.Clear();
        cmbx.DataSource = DataTable(sql);
        cmbx.DataTextField = iText;
        cmbx.DataValueField = ivalue;
        cmbx.DataBind();
    }

    //==============================================================

    private static DataTable GetParameter(string procedureName)
    {
        SqlConnection conn = null;
        SqlDataAdapter dataAdapter = null;
        DataTable dt = new DataTable();

        try
        {
            conn = new SqlConnection(str);

            SqlCommand command = new SqlCommand();
            InitSqlCommand(command, "A_GETMETAPROC_SP1", conn);

            SqlParameter para = new SqlParameter();
            para.ParameterName = "@V_PROCNAME";
            para.Value = procedureName;
            command.Parameters.Add(para);

            dataAdapter = new SqlDataAdapter(command);
            dataAdapter.Fill(dt);

        }
        catch (Exception ex)
        {
            return new DataTable();
        }

        return dt;
    }

    private static void InitSqlCommand(SqlCommand command, string procedureName, SqlConnection connection)
    {
        command.Connection = connection;
        command.CommandType = CommandType.StoredProcedure;
        command.CommandText = procedureName;
    }

    private static void AddParameters(string procudureName, SqlCommand command, object[] paraValue)
    {
        DataTable dt_para = new DataTable();
        dt_para = GetParameter(procudureName);

        for (int index = 0; index <= dt_para.Rows.Count - 1; index += 1)
        {
            SqlParameter para = new SqlParameter();
            para.ParameterName = dt_para.Rows[index]["PARAMETER_NAME"].ToString();
            para.Value = paraValue[index];
            command.Parameters.Add(para);
        }
    }

    public DataTable GetDataTable(string procudureName, object[] paraValue)
    {
        SqlConnection conn = null;
        SqlDataAdapter dataAdapter = null;
        DataTable dt = new DataTable();

        try
        {
            conn = new SqlConnection(str);

            SqlCommand command = new SqlCommand();
            command.CommandTimeout = 0;
            InitSqlCommand(command, procudureName, conn);

            AddParameters(procudureName, command, paraValue);

            dataAdapter = new SqlDataAdapter(command);
            dataAdapter.Fill(dt);

            return dt;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally { conn.Close(); }
    }

    public string GetValue(string procudureName, object[] paraValue, string columnName)
    {
        SqlConnection conn = null;
        SqlDataAdapter dataAdapter = null;
        DataTable dt = new DataTable();
        string value = "";

        try
        {
            conn = new SqlConnection(str);

            SqlCommand command = new SqlCommand();
            InitSqlCommand(command, procudureName, conn);

            AddParameters(procudureName, command, paraValue);

            dataAdapter = new SqlDataAdapter(command);
            dataAdapter.Fill(dt);

        }
        catch (Exception ex)
        {
            return "";
        }

        if (dt.Rows.Count > 0)
        {
            value = dt.Rows[0][columnName].ToString();
        }

        return value;
    }
    public string GetValue_function(string sql, string columnName)
    {
        SqlConnection conn = Connection();
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0].Rows[0][columnName].ToString();
        conn.Close();
    }
    public DataSet GetDataSet(string procudureName, object[] paraValue)
    {
        SqlConnection conn = null;
        SqlDataAdapter dataAdapter = null;
        DataSet ds = new DataSet();

        try
        {
            conn = new SqlConnection(str);

            SqlCommand command = new SqlCommand();
            InitSqlCommand(command, procudureName, conn);

            AddParameters(procudureName, command, paraValue);

            dataAdapter = new SqlDataAdapter(command);
            dataAdapter.Fill(ds);

        }
        catch (Exception ex)
        {
            return null;
        }

        return ds;
    }

    public void ExecuteQuery(string procudureName, object[] paraValue)
    {
        SqlConnection conn = null;
        try
        {
            conn = new SqlConnection(str);
            conn.Open();

            SqlCommand command = new SqlCommand();
            InitSqlCommand(command, procudureName, conn);
            AddParameters(procudureName, command, paraValue);
            command.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public string chuoilink(string chuoi_link)
    {
        string chuoira = "";
        foreach (char kiTu in chuoi_link)
        {

            if (kiTu.ToString() == " " || kiTu.ToString() == "_")
            {
                chuoira += "-";
            }
            else
            {
                chuoira += kiTu.ToString();
            }
        }


        return chuoira;
    }
}