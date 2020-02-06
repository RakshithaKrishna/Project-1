using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = new UnobtrusiveValidationMode();
    }

    protected void Signupbtn_Click(object sender, EventArgs e)
    {
        SignUp1 cdl = new SignUp1();
        int check;
        check = cdl.signup(fname.Text, lname.Text, pno.Text, password.Text, email.Text, Address.Text, pincode.Text);
        if (check == 1)
        {
            lblMsg.Text = "Signup Successfull";
            Response.Redirect("Login.aspx");
       
        }
        else
        {
            lblMsg.Text = "Signup Failed";
         
        }
    }

}