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

public partial class Login : System.Web.UI.Page
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

    protected void tbEmail_TextChanged(object sender, EventArgs e)
    {

    }

    protected void tbPassword_TextChanged(object sender, EventArgs e)
    {

    }



    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        Login1 lObj = new Login1();
        DataTable d = new DataTable();
        int check;
        string Username;
        check = lObj.log_in(tbEmail.Text, tbPassword.Text, out d);
      
        if (check == 1)
        {


            SessionUserName s = new SessionUserName();
            Username = s.User(tbEmail.Text, out d);
            Session["Username"] = Username;
            Thread.Sleep(milliseconds);
            Response.Redirect("AfterLogin1.aspx");

          

        }
        else
        {
            Thread.Sleep(milliseconds);
            lblMsg.Text = "Username and Password is incorrect";
            
        }
       
    }

    protected void Cancelbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}