using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace Resume_Maker
{
    public partial class registration : System.Web.UI.Page
    {
        Entity.Registration objRegistration = new Entity.Registration();
        BAL.Registration oRegistrationBAL = new BAL.Registration();
        protected int RegID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                hdnId.Value = "0";
            }
        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            try
            {
                if(txtFirstName.Text.ToString() == "")
                {
                    AlertMessage("Please enter First Name.");
                    txtFirstName.Text = "";
                    txtFirstName.Focus();
                    return;

                }
                if (txtLastName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Last Name.");
                    txtLastName.Text = "";
                    txtLastName.Focus();
                    return;

                }

                if (txtEmail.Text.ToString() == "")
                {
                    AlertMessage("Please enter Email-ID.");
                    txtEmail.Text = "";
                    txtEmail.Focus();
                    return;

                }

                if (txtPassword.Text.ToString() == "")
                {
                    AlertMessage("Please enter Password.");
                    txtPassword.Text = "";
                    txtPassword.Focus();
                    return;

                }
                if (txtConfirmPassword.Text.ToString() == "")
                {
                    AlertMessage("Please enter  Confirm Password.");
                    txtConfirmPassword.Text = "";
                    txtConfirmPassword.Focus();
                    return;

                }

                int i = -2;
                AssignValues(objRegistration);
                try
                {
                    if (Convert.ToInt32(hdnId.Value) == 0)
                    {
                        i = oRegistrationBAL.InsertUpdateRegistration(objRegistration, "insert", 0);
                    }
                    else
                    {
                        i = oRegistrationBAL.InsertUpdateRegistration(objRegistration, "Update", Convert.ToInt32(hdnId.Value));
                    }

                }
                catch (Exception ex)
                {
                }

                if (i >= 0)
                {
                    AlertMessage("Registered Successfully.");

                    //Clear();
                    Response.Redirect("~/login.aspx", false);
                }
                else if (i == -1)
                {
                    AlertMessage("User Already Exist .");
                }
                else
                {
                    AlertMessage("Error Saving Data");
                }

            }
            catch (Exception)
            {

                throw;
            }
            
        }
        //private void Clear()
        //{

        //    txtFirstName.Text = "";
        //    txtLastName.Text = "";
        //    txtEmail.Text = "";
        //    //txtVoterID.Text = "";
        //    txtPassword.Text = "";
        //    txtConfirmPassword.Text = "";
        //}

        #region Assign Values
        public void AssignValues(Entity.Registration objRegistration)
        {
            objRegistration.First_Name = txtFirstName.Text.ToString();
            objRegistration.Last_Name = txtLastName.Text.ToString();
            objRegistration.Email_ID = txtEmail.Text.ToString();
            //objRegistration.Occupation = "";
            objRegistration.Create_Password = txtPassword.Text.ToString();
            objRegistration.Confirm_Password = txtConfirmPassword.Text.ToString();
        }
        #endregion


        public void AlertMessage(string str)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('" + str + "')", true);
        }
    }
}