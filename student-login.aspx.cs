using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFS4420Labs
{
    public partial class student_login : System.Web.UI.Page
    {
        DatabaseConnection dbc = new DatabaseConnection();
        DatabaseOperations dbo = new DatabaseOperations();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        //protected void btnSave_Click(object sender, EventArgs e)
        //{


        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //}

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            dbc.strSql = "SELECT * FROM AppLogin WHERE ID = '" + txtID + "'";
            dbc.strSql += "AND Password = '" + txtPassword + "'";
            dbc.strTableName = "AppLogin";
            dbc.tblMyTable = dbo.PopulateDataset(dbc.strSql, dbc.strTableName).Tables[0];
            int intRecordCounter;
            intRecordCounter = dbc.tblMyTable.Rows.Count;
            if (intRecordCounter == 0)
            {
                lblErrorMsg.Visible = false;
                DatabaseConnection.strStudentID = txtID.Text;
                Response.Redirect("~/student.aspx");
            }
            else
            {
                lblErrorMsg.Visible = true;
            }
        }
    }
}