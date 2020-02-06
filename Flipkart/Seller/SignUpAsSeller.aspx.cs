using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Seller_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = new UnobtrusiveValidationMode();

    }

    protected void Signupbtn_Click(object sender, EventArgs e)
    {
        SellerSignUp cdl = new SellerSignUp();
        int check;
        check = cdl.signup(fname.Text, password.Text, pno.Text, email.Text, Accnumber.Text, Ifsccode.Text, GSTIN.Text);
        if (check == 1)
        {
            lblMsg.Text = "Signup Successfull";
         
        }
        else
        {
            lblMsg.Text = "Signup Failed";
          
        }
    }
}