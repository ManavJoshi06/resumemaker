using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace Resume_Maker
{
    public partial class Contact : System.Web.UI.Page
    {
        Entity.Contact objContact = new Entity.Contact();
        BAL.Contact oContactBAL = new BAL.Contact();
        protected int RegID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hdnId.Value = "0";
            }
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtName.Text.ToString() == "")
                {
                    AlertMessage("Please enter  Name.");
                    txtName.Text = "";
                    txtName.Focus();
                    return;

                }
                if (txtEmail.Text.ToString() == "")
                {
                    AlertMessage("Please enter  Name.");
                    txtEmail.Text = "";
                    txtEmail.Focus();
                    return;

                }

                if (txtSubject.Text.ToString() == "")
                {
                    AlertMessage("Please enter Subject.");
                    txtSubject.Text = "";
                    txtSubject.Focus();
                    return;

                }
                if (txtMessage.Text.ToString() == "")
                {
                    AlertMessage("Please enter  Confirm Message.");
                    txtMessage.Text = "";
                    txtMessage.Focus();
                    return;
                }

                int i = -2;
                
                AssignValues(objContact);
                try
                {
                    if (Convert.ToInt32(hdnId.Value) == 0)
                    {
                        i = oContactBAL.InserContact(objContact, "insert", 0);
                    }
                    else
                    {
                      i =  oContactBAL.InserContact(objContact, "Update", Convert.ToInt32(hdnId.Value));
                    }
                }
                catch (Exception ex)
                {
                }

                if (i >= 0)
                {
                    AlertMessage("Message Send  Successfully.");
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

        #region Assign Values
        public void AssignValues(Entity.Contact objContact)
        {
            objContact.Name = txtName.Text.ToString();
            objContact.EmailId = txtEmail.Text.ToString();
            objContact.ContacUsSubject = txtSubject.Text.ToString();
            objContact.ContacUsMessage = txtMessage.Text.ToString();
        }
        #endregion
        public void AlertMessage(string str)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('" + str + "')", true);
        }
    }
}