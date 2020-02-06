using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for SessionIDSeller
/// </summary>
public class SessionIDSeller
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    string user_query;
    int id;
    public SessionIDSeller()
    {
        squery = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
        mycon = new SqlConnection(squery);
    }
    public int User(string email, out DataTable dt)
    {
        user_query = "select seller_id from seller where email_Id = '" + email + "'";
        myadapter = new SqlDataAdapter(user_query, mycon);
        myds = new DataSet();
        myadapter.Fill(myds, "getUserName");

        dt = myds.Tables["getUserName"];

        if (dt.Rows.Count != 0)
        {
            foreach (DataRow row in dt.Rows)
            {
                id =int.Parse( row[0].ToString());

            }
            return id;

        }
        else
        {
            return id;
        }
    }
}