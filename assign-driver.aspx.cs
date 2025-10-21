using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFS4420Labs
{
    public partial class assign_driver : System.Web.UI.Page
    {

        DatabaseConnection dbc = new DatabaseConnection();
        DatabaseOperations dbo = new DatabaseOperations();
        static int intRecordCounter;
        static int intRowIndex = 0;
        static DataTable tblDriver = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                dbc.strSql = "SELECT * FROM DRIVER";
                dbc.strTableName = "DRIVER";
                tblDriver = dbo.PopulateDataset(dbc.strSql, dbc.strTableName).Tables[0];
                intRecordCounter = tblDriver.Rows.Count;
                displayRecords(intRowIndex);
            }

        }

        private void displayRecords(int intRowIndex)
        {
            txtDriverID.Text = tblDriver.Rows[intRowIndex][0].ToString();
            txtDriverName.Text = tblDriver.Rows[intRowIndex][1].ToString();
            txtStatus.Text = tblDriver.Rows[intRowIndex][2].ToString();
            imgDriver.ImageUrl = "~/images/" + txtDriverID.Text + ".jpg";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (intRowIndex < intRecordCounter - 1)
            {
                lblMasege.Visible = false;
                intRowIndex += 1;
                displayRecords(intRowIndex);
            }

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            if (intRowIndex > 0)
            {
                lblMasege.Visible = false;

                intRowIndex -= 1;
                displayRecords(intRowIndex);

            }

        }

        protected void btnBack2_Click(object sender, EventArgs e)
        {
            intRowIndex = 0;
            displayRecords(intRowIndex);

            if (intRowIndex != 0)
            {
                lblMasege.Visible = false;
                intRowIndex = 0;
                displayRecords(intRowIndex);
            }
            else
            {
                lblMasege.Visible= true;
                lblMasege.Text = "You are already at the First record.";
            }
        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {
            intRowIndex = intRecordCounter - 1;
            displayRecords(intRowIndex);

            if (intRowIndex != intRecordCounter - 1)
            {
                lblMasege.Visible = false;
                intRowIndex = intRecordCounter - 1;
                displayRecords(intRowIndex);
            }
            else
            {
                lblMasege.Visible = true;

                lblMasege.Text = "You are already at the last record.";
            }

        }
    }
}