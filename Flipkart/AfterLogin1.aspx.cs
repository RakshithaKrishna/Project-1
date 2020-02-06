using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Customer_AfterLogin1 : System.Web.UI.Page
{
    string squery;
    string imageControl;
    SqlConnection conn;
    public int id;
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text = "Welcome" +" "+ Session["Username"].ToString();
        if (!this.IsPostBack)
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



    protected void Button1_Click(object sender, EventArgs e)
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