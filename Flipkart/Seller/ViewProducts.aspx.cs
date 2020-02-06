using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Seller_ViewProducts : System.Web.UI.Page
{
    string squery;
    string imageControl;
    SqlConnection conn;
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    static int clickStatus = 0;//use session variables
    string eno;
    protected void Page_Load(object sender, EventArgs e)
    {


    }
}
