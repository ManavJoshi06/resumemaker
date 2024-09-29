using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Information
{
    public partial class information1 : System.Web.UI.Page
    {
        Entity.Information objInformation = new Entity.Information();
        BAL.Information ObjInformation = new BAL.Information();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hdnId.Value = "0";
                FillGridview();
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {


            try
            {
                AssignValues(objInformation);
                if (Convert.ToInt32(hdnId.Value) == 0)
                {
                    ds = ObjInformation.GetInformation(objInformation, "insert", Convert.ToInt32(hdnId.Value));

                }
                else
                {
                    ds = ObjInformation.GetInformation(objInformation, "update", Convert.ToInt32(hdnId.Value));

                }

                dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {
                    Clear();
                    if (dt.Rows[0]["MSG"].ToString() == "Record Inserted")
                    {
                        AlertMessage("Record Inserted Successfully.");
                        FillGridview();
                    }
                    else if (dt.Rows[0]["MSG"].ToString() == "Record updated")
                    {
                        AlertMessage("Record updated Successfully.");
                        FillGridview();
                    }

                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void AssignValues(Entity.Information objInformation)
        {
            objInformation.FullName = txtFullName.Text.ToString();
            objInformation.EmailID = txtEmailID.Text.ToString();
            objInformation.Phone_Number = txtPhone_Number.Text.ToString();
            objInformation.AddressInResume = txtFullName.Text.ToString();
            objInformation.DateOfBirth = txtFullName.Text.ToString();
            objInformation.Gender = txtFullName.Text.ToString();

            objInformation.IsDisable = Convert.ToInt32(rdobtnStatus.SelectedValue.ToString());

        }

        public void AlertMessage(string str)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('" + str + "')", true);
        }

        private void FillGridview()
        {
            try
            {
                ds = ObjInformation.GetInformation(objInformation, "SelectDesignation", 0);
                dt = ds.Tables[0];
                GVInformation.DataSource = dt;
                GVInformation.DataBind();

            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void GVDesignation_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                GVInformation.PageIndex = e.NewPageIndex;
                FillGridview();

            }
            catch (Exception)
            {

                throw;
            }
        }

        private void Clear()
        {
            hdnId.Value = "0";
            txtInformation.Text = "";

        }

        protected void GVDesignation_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "lnkEdit")
                {
                    string[] commandargs = e.CommandArgument.ToString().Split(new char[] { ',' });
                    Int32 Id = Convert.ToInt32(commandargs[0]);
                    ds = ObjInformation.GetInformation(objInformation, "SelectDesignationbyId", Id);
                    dt = ds.Tables[0];
                    if (dt.Rows.Count > 0)
                    {
                        Clear();
                        hdnId.Value = dt.Rows[0]["ID"].ToString();
                        txtInformation.Text = dt.Rows[0]["Designation_Name"].ToString();
                    }



                }
                if (e.CommandName == "lnkDelete")
                {
                    string[] commandargs = e.CommandArgument.ToString().Split(new char[] { ',' });
                    Int32 Id = Convert.ToInt32(commandargs[0]);
                    ds = ObjInformation.GetInformation(objInformation, "Delete", Id);
                    dt = ds.Tables[0];
                    if (dt.Rows[0]["MSG"].ToString() == "Record Deleted")
                    {
                        AlertMessage("Record Deleted Successfully.");
                        Clear();
                        FillGridview();
                    }

                }

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
