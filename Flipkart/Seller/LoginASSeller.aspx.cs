using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Threading;
public partial class Seller_LoginASSeller : System.Web.UI.Page
{

    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
   
    int milliseconds = 2000;

    static int clickStatus = 0;//use session variables
    string eno;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = new UnobtrusiveValidationMode();
    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {

        SellerLogin lObj = new SellerLogin();
        DataTable d = new DataTable();
        int check;
        string Username;
        int id;
        check = lObj.log_in(tbEmail1.Text, tbPassword1.Text, out d);

        if (check == 1)
        {
            SessionUNSELLER s = new SessionUNSELLER();
            Username = s.User(tbEmail1.Text, out d);
            Session["Username"] = Username;
            SessionIDSeller s1 = new SessionIDSeller();
            id = s1.User(tbEmail1.Text, out d);
            Session["id"] = id;
            lblMsg.Text = "Login Successful";
            Response.Redirect("~/SellerAfterLogin.aspx");

        }
        else
        {
           
            lblMsg.Text = "User account does not exist";
         
        }

    }

    protected void Cancelbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}