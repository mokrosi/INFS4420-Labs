using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFS4420Labs
{
    public partial class Student : System.Web.UI.Page
    {

        DatabaseConnection dbc = new DatabaseConnection();
        DatabaseOperations dbo = new DatabaseOperations();
        protected void Page_Load(object sender, EventArgs e)
        {
            dbc.strSql = "SELECT * FROM Student";
            dbc.strTableName = "Student";
            dbc.tblMyTable = dbo.PopulateDataset(dbc.strSql,dbc.strTableName).Tables[0];
            int intRowIndex = 0;
            displayRecords(intRowIndex);


        }

        private void displayRecords(int intRowIndex)
        {
            txtStudentID.Text = dbc.tblMyTable.Rows[intRowIndex][0].ToString();
            txtStudenName.Text = dbc.tblMyTable.Rows[intRowIndex][1].ToString();
            txtCollege.Text = dbc.tblMyTable.Rows[intRowIndex][2].ToString();
            txtPhoneNumber.Text = dbc.tblMyTable.Rows[intRowIndex][3].ToString();

        }
    }
}