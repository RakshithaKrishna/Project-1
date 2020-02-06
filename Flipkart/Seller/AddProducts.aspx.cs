using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class Seller_AddProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        sellerid.Text = Session["id"].ToString();
    }

    protected void Signupbtn_Click(object sender, EventArgs e)  
    {
        if (pname.Text != "" && pdesc.Text != "" && sellerid.Text != "" && pprice.Text != "" && pquantity.Text != "")
        {

            string path = "";
            if (imgupload.HasFile)
            {
                imgupload.SaveAs(Request.PhysicalApplicationPath + "/Images/" + imgupload.FileName);
                path = "/Images/" + imgupload.FileName;
                //lblmsg.Text = FileUpload1.FileName + " upload done";
            }
            string cs;
            cs = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
            using (SqlConnection mycon = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("insert into Productdemo values('" + sellerid.Text + "','" + pname.Text
            + "','" + pdesc.Text + "','" + pprice.Text + "','" + pquantity.Text + "','" + path + "')", mycon);
                mycon.Open();
                cmd.ExecuteNonQuery();

                lblMsg.Text = "Added Successfully";
              
            }
        }
        else
        {
            lblMsg.Text = "All fields are Mandatory";
        }
    }
}