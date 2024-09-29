using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ResumeMaker
{
    public partial class Information : System.Web.UI.Page
    {
        Entity.Information objInformation = new Entity.Information();
        BAL.Information ObjInformation = new BAL.Information();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                hdnId.Value = "0";
            }
        }

        protected void btnSelectTemplate_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtFullName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Full Name.");
                    txtFullName.Text = "";
                    txtFullName.Focus();
                    return;

                }
                if (txtPhone_Number.Text.ToString() == "")
                {
                    AlertMessage("Please enter Phone Number.");
                    txtPhone_Number.Text = "";
                    txtPhone_Number.Focus();
                    return;

                }
                if (TextDOB.Text.ToString() == "")
                {
                    AlertMessage("Please enter Date  Of Birth.");
                    TextDOB.Text = "";
                    TextDOB.Focus();
                    return;

                }
                if (txtEmailID.Text.ToString() == "")
                {
                    AlertMessage("Please enter Email-ID.");
                    txtEmailID.Text = "";
                    txtEmailID.Focus();
                    return;

                }
                if (txtAddess.Text.ToString() == "")
                {
                    AlertMessage("Please enter Address.");
                    txtAddess.Text = "";
                    txtAddess.Focus();
                    return;

                }
                if (rdobtnlistGender.Text.ToString() == "")
                {
                    AlertMessage("Please select Gender.");
                    rdobtnlistGender.Text = "";
                    rdobtnlistGender.Focus();
                    return;

                }
                if (txtObjective.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Objective for  Your Resume.");
                    txtObjective.Text = "";
                    txtObjective.Focus();
                    return;

                }
                if (txtHDUniversityName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Higher Degree University Name.");
                    txtHDUniversityName.Text = "";
                    txtHDUniversityName.Focus();
                    return;

                }
                if (txtHDInstituteName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Higher Degree Institute Name");
                    txtHDInstituteName.Text = "";
                    txtHDInstituteName.Focus();
                    return;

                }
                if (txHDtPassingYear.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Higher Degree Passing Year");
                    txHDtPassingYear.Text = "";
                    txHDtPassingYear.Focus();
                    return;

                }
                if (txtHDPercentage.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Higher Degree Percentage");
                    txtHDPercentage.Text = "";
                    txtHDPercentage.Focus();
                    return;

                }
                if (txtPGUUniversityName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Post Graduation University Name.");
                    txtPGUUniversityName.Text = "";
                    txtPGUUniversityName.Focus();
                    return;

                }
                if (txtPGInstituteName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Post Graduation Institute Name.");
                    txtPGInstituteName.Text = "";
                    txtPGInstituteName.Focus();
                    return;

                }
                if (txtPPassingYear.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Post Graduation Passing Year.");
                    txtPPassingYear.Text = "";
                    txtPPassingYear.Focus();
                    return;

                }
                if (txtPGPercentage.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Post Graduation Percentage.");
                    txtPGPercentage.Text = "";
                    txtPGPercentage.Focus();
                    return;

                }
                if (txtGiversityName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Graduation University Name.");
                    txtGiversityName.Text = "";
                    txtGiversityName.Focus();
                    return;

                }
                if (txtPInstituteName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your  Graduation Institute Name.");
                    txtPInstituteName.Text = "";
                    txtPInstituteName.Focus();
                    return;

                }
                if (txtGRPassingYear.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Graduation Passing Year.");
                    txtGRPassingYear.Text = "";
                    txtGRPassingYear.Focus();
                    return;

                }
                if (txtGPercentage.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Graduation Percentage.");
                    txtGPercentage.Text = "";
                    txtGPercentage.Focus();
                    return;

                }
                if (txtHSCUniversityName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Higher Secondary Certificate University Name.");
                    txtHSCUniversityName.Text = "";
                    txtHSCUniversityName.Focus();
                    return;

                }
                if (txtHSCInstituteName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Higher Secondary Certificate Institute Name.");
                    txtHSCInstituteName.Text = "";
                    txtHSCInstituteName.Focus();
                    return;

                }
                if (textHSCPassingYear.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Higher Secondary Certificate Passing Year.");
                    textHSCPassingYear.Text = "";
                    textHSCPassingYear.Focus();
                    return;

                }
                if (txtHSCPercentage.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Higher Secondary Certificate Percentage.");
                    txtHSCPercentage.Text = "";
                    txtHSCPercentage.Focus();
                    return;

                }
                if (txtSSCUniversityName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Secondary School Certificate University Name.");
                    txtSSCUniversityName.Text = "";
                    txtSSCUniversityName.Focus();
                    return;

                }
                if (txtSSCInstituteName.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Secondary School Certificate Institute Name.");
                    txtSSCInstituteName.Text = "";
                    txtSSCInstituteName.Focus();
                    return;

                }
                if (textSSCPassingYear.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Secondary School Certificate Passing Year.");
                    textSSCPassingYear.Text = "";
                    textSSCPassingYear.Focus();
                    return;

                }
                if (txtSSCPercentage.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Secondary School Certificate Percentage.");
                    txtSSCPercentage.Text = "";
                    txtSSCPercentage.Focus();
                    return;

                }
                if (txtInterpersanolSkill.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Interpersanol Skill.");
                    txtInterpersanolSkill.Text = "";
                    txtInterpersanolSkill.Focus();
                    return;

                }
                if (txtComputerSkill.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Computer Skill.");
                    txtComputerSkill.Text = "";
                    txtComputerSkill.Focus();
                    return;

                }
                if (txtExtraCurricularActivities.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Extra Curricular Activities.");
                    txtExtraCurricularActivities.Text = "";
                    txtExtraCurricularActivities.Focus();
                    return;

                }
                if (txtExperience.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Experience.");
                    txtExperience.Text = "";
                    txtExperience.Focus();
                    return;

                }
                if (txtAchivements.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Achivements.");
                    txtAchivements.Text = "";
                    txtAchivements.Focus();
                    return;

                }
                if (txtHobbies.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Hobbies.");
                    txtHobbies.Text = "";
                    txtHobbies.Focus();
                    return;

                }
                if (txtCast.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Cast.");
                    txtCast.Text = "";
                    txtCast.Focus();
                    return;

                }
                if (txtNationality.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Nationality.");
                    txtNationality.Text = "";
                    txtNationality.Focus();
                    return;

                }
                if (txtLanguageknown.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Language known.");
                    txtLanguageknown.Text = "";
                    txtLanguageknown.Focus();
                    return;

                }
                if (txtUserStatus.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your  Status.");
                    txtUserStatus.Text = "";
                    txtUserStatus.Focus();
                    return;

                }
                if (txtProject.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Project Detail.");
                    txtProject.Text = "";
                    txtProject.Focus();
                    return;

                }
                if (txtDeclarationSkills.Text.ToString() == "")
                {
                    AlertMessage("Please enter Your Declaration Skills.");
                    txtDeclarationSkills.Text = "";
                    txtDeclarationSkills.Focus();
                    return;

                }

                AssignValues(objInformation);
                if (Convert.ToInt32(hdnId.Value) == 0)
                {
                    ds = ObjInformation.InsertUpdateInformation(objInformation, "insert", Convert.ToInt32(hdnId.Value));

                }
                else
                {
                    ds = ObjInformation.InsertUpdateInformation(objInformation, "update", Convert.ToInt32(hdnId.Value));

                }

                dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {
                    Clear();
                    if (dt.Rows[0]["MSG"].ToString() == "Record Inserted")
                    {
                        AlertMessage("Record Inserted Successfully.");
                        Int32 ID = Convert.ToInt32(dt.Rows[0]["Id"].ToString());
                        //FillGridview();
                    }
                    else if (dt.Rows[0]["MSG"].ToString() == "Record updated")
                    {
                        AlertMessage("Record updated Successfully.");
                        //FillGridview();
                    }

                }

            }
            catch (Exception ex)
            {

                throw;
                Response.Redirect("~/userLogout.html", false);
            }
        }
        private void AssignValues(Entity.Information objDesignation)
        {

            objInformation.FullName = txtFullName.Text.ToString();
            objInformation.EmailID = txtEmailID.Text.ToString();
            objInformation.Phone_Number = txtPhone_Number.Text.ToString();
            objInformation.AddressInResume = txtAddess.Text.ToString();

            objInformation.DateOfBirth = Convert.ToDateTime(TextDOB.Text);

            objInformation.Gender = rdobtnlistGender.SelectedItem.ToString();
            objInformation.Objective = txtObjective.Text.ToString();

            objInformation.HDUniversityName = txtHDUniversityName.Text.ToString();
            objInformation.HDInstituteName = txtHDInstituteName.Text.ToString();

            objInformation.HDPassingYear = Convert.ToDateTime(txHDtPassingYear.Text);
            objInformation.HDPercentage = Convert.ToInt32(txtHDPercentage.Text);

            objInformation.PGUniversityName = txtPGUUniversityName.Text.ToString();
            objInformation.PGInstituteName = txtPGInstituteName.Text.ToString();
            objInformation.PGPassingYear = Convert.ToDateTime(txtPPassingYear.Text);
            objInformation.PGPercentage = Convert.ToInt32(txtPGPercentage.Text);

            objInformation.GUniversityName = txtGiversityName.Text.ToString();
            objInformation.GInstituteName = txtPInstituteName.Text.ToString();
            objInformation.GPassingYear = Convert.ToDateTime(txtGRPassingYear.Text);
            objInformation.GPercentage = Convert.ToInt32(txtGPercentage.Text);

            objInformation.HSCUniversityName = txtHSCUniversityName.Text.ToString();
            objInformation.HSCInstituteName = txtHSCInstituteName.Text.ToString();
            objInformation.HSCPassingYear = Convert.ToDateTime(textHSCPassingYear.Text);
            objInformation.HSCPercentage = Convert.ToInt32(txtHSCPercentage.Text);

            objInformation.SSCUniversityName = txtSSCUniversityName.Text.ToString();
            objInformation.SSCInstituteName = txtSSCInstituteName.Text.ToString();
            objInformation.SSCPassingYear = Convert.ToDateTime(textSSCPassingYear.Text);
            objInformation.SSCPercentage = Convert.ToInt32(txtSSCPercentage.Text);

            objInformation.InterpersonalSkill = txtInterpersanolSkill.Text.ToString();
            objInformation.ComputerSkill = txtComputerSkill.Text.ToString();
            objInformation.ExtraCurricularActivities = txtExtraCurricularActivities.Text.ToString();
            objInformation.Achievement = txtAchivements.Text.ToString();
            objInformation.Experience = txtExperience.Text.ToString();
            objInformation.Hobbies = txtHobbies.Text.ToString();
            objInformation.Caste = txtCast.Text.ToString();
            objInformation.KnownLanguage = txtLanguageknown.Text.ToString();
            objInformation.UserStatus = txtUserStatus.Text.ToString();
            objInformation.Nationality = txtNationality.Text.ToString();
            objInformation.Project = txtProject.Text.ToString();
            objInformation.Declaration = txtDeclarationSkills.Text.ToString();

            objInformation.CreatedBy = 1;
            objInformation.ModifiedBy = 1;
        }

        private void Clear()
        {
            txtFullName.Text = "";
            txtEmailID.Text = "";
            txtPhone_Number.Text = "";
            txtAddess.Text = "";
            TextDOB.Text = DateTime.Now.ToString();
            rdobtnlistGender.SelectedValue = "1";
            txtObjective.Text = "";
            txtHDUniversityName.Text = "";
            txtHDInstituteName.Text = "";
            txHDtPassingYear.Text = "";
            txtHDPercentage.Text = "";

            txtPGUUniversityName.Text = "";
            txtPGInstituteName.Text = "";
            txtPPassingYear.Text = DateTime.Now.ToString();
            txtPGPercentage.Text = "";

            txtGiversityName.Text = "";
            txtPInstituteName.Text = "";
            txtGRPassingYear.Text = DateTime.Now.ToString();
            txtGPercentage.Text = "";

            txtHSCUniversityName.Text = "";
            txtHSCInstituteName.Text = "";
            textHSCPassingYear.Text = DateTime.Now.ToString();
            txtHSCPercentage.Text = "";

            txtSSCUniversityName.Text = "";
            txtSSCInstituteName.Text = "";
            textSSCPassingYear.Text = DateTime.Now.ToString();
            txtSSCPercentage.Text = "";

            txtInterpersanolSkill.Text = "";
            txtComputerSkill.Text = "";
            txtExtraCurricularActivities.Text = "";
            txtAchivements.Text = "";
            txtExperience.Text = "";
            txtHobbies.Text = "";
            txtCast.Text = "";
            txtLanguageknown.Text = "";
            txtUserStatus.Text = "";
            txtNationality.Text = "";
            txtProject.Text = "";
            txtDeclarationSkills.Text = "";
        }

        public void AlertMessage(string str)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('" + str + "')", true);
        }

    }
}
