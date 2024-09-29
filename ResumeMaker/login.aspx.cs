using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Maker
{
    public partial class login : System.Web.UI.Page
    {
        #region VAREABLE
        Entity.Registration objRegistration = new Entity.Registration();

        BAL.Registration oRegistrationBAL = new BAL.Registration();

        Int64 UserTypeId;
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string param = string.Empty;
            int n = 0;
            objRegistration = oRegistrationBAL.AuthenticateUser(txtEmail.Text, txtPassword.Text);
            
            //Response.Write(oLoginUserEntity.UserID);
            //Response.End();


            if (objRegistration.Email_ID != "" && objRegistration.Email_ID != null)
            {
                //UserSession.UserId = oLoginUserEntity.UserID;
                //UserSession.UserName = oLoginUserEntity.UserName;
                //UserSession.UserType = oLoginUserEntity.UserTypeID;
                //UserSession.LoginName = oLoginUserEntity.StaffName;
                //UserSession.StaffId = oLoginUserEntity.StaffId;
                ////  UserSession.LoginType = LoginTypeId;
                //UserSession.BranchId = oLoginUserEntity.BranchId;
                //UserSession.IsHeadOffice = Convert.ToInt16(oLoginUserEntity.IsHeadOffice);

                //if (UserTypeId == Convert.ToInt16(Enums.UserType.Telecaller))
                //    UserSession.TelecallerId = oLoginUserEntity.UserID;
                //else if (UserTypeId == Convert.ToInt16(Enums.UserType.Sales))
                //    UserSession.SalesId = oLoginUserEntity.UserID;

                Response.Redirect("information.aspx");

                

            }
            else
            {
                // lblMessage.Text = "Invalid login name or password. ";
                AlertMessage("Invalid login name or password.");
            }
        }

        public void AlertMessage(string str)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('" + str + "')", true);
        }
    }
}