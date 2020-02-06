using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.ClientServices;
using System.Configuration;

public class getcid
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    string user_query;
    public int id = 0;
    public getcid()
    {
        squery = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
        mycon = new SqlConnection(squery);
    }
    public int getsid(string search, out DataTable dt)
    {
        user_query = "select product_id from productdemo where product_name = '" + search + "'";
        myadapter = new SqlDataAdapter(user_query, mycon);
        myds = new DataSet();
        myadapter.Fill(myds, "searchvalue");

        dt = myds.Tables["searchvalue"];

        if (dt.Rows.Count != 0)
        {
            foreach (DataRow row in dt.Rows)
            {
                id = int.Parse(row[0].ToString());
            }
            return id;

        }
        else
        {
            return 0;
        }

    }
}