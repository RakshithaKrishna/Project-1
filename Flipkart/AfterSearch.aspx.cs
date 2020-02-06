using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class AfterSearch : System.Web.UI.Page
{
    public int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        int scid;
        getcid obj = new getcid();
        scid = int.Parse(Session["sid"].ToString());

        if (!this.IsPostBack)
        {
            string constr = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("Select image1, product_name, product_Desc,product_price from Productdemo where product_id='" + scid + "'", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    dlProducts.DataSource = dt;
                    dlProducts.DataBind();
                }
            }
        }
    }
    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataTable dt;
        getcid gspobj = new getcid();
        id = gspobj.getsid(TextBox1.Text, out dt);
        Response.Write(id);
        Session["sid"] = id;
        if (id != 0)
        {
            Response.Redirect("AfterSearch.aspx");
        }
    }
}