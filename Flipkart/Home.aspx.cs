using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Home : System.Web.UI.Page
{
    string squery;
    string imageControl;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
         string constr = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("Select image1, product_name, product_Desc,product_price from Productdemo", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    dlProducts.DataSource = dt;
                    dlProducts.DataBind();
                }
            }
        }
    }
