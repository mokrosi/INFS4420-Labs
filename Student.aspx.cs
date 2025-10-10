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
            if (DatabaseConnection.strStudentID == "" )
            {
                Response.Redirect("~/student-login.aspx");
            }


            dbc.strSql = "SELECT * FROM Student WHERE StudentID = '" +DatabaseConnection.strStudentID + "'";
            dbc.strTableName = "Student";
            dbc.tblMyTable = dbo.PopulateDataset(dbc.strSql,dbc.strTableName).Tables[0];
            int intRowIndex = 0;
            displayRecords(intRowIndex);



            ddlDepartureTime.Items.Add("08:00");
            ddlDepartureTime.Items.Add("09:00");
            ddlDepartureTime.Items.Add("10:00");
            ddlDepartureTime.Items.Add("11:00");
            ddlDepartureTime.Items.Add("12:00");
            ddlDepartureTime.Items.Add("13:00"); 
            ddlDepartureTime.Items.Add("14:00");
            ddlDepartureTime.Items.Add("15:00"); 
            ddlDepartureTime.Items.Add("16:00"); 
            ddlDepartureTime.Items.Add("17:00");
            ddlDepartureTime.Items.Add("18:00"); 
            ddlReturnTime.Items.Add("08:00");
            ddlReturnTime.Items.Add("09:00");
            ddlReturnTime.Items.Add("10:00"); 
            ddlReturnTime.Items.Add("11:00");
            ddlReturnTime.Items.Add("12:00");
            ddlReturnTime.Items.Add("13:00");
            ddlReturnTime.Items.Add("14:00");
            ddlReturnTime.Items.Add("15:00");
            ddlReturnTime.Items.Add("16:00"); 
            ddlReturnTime.Items.Add("17:00"); 
            ddlReturnTime.Items.Add("18:00");


        }

        private void displayRecords(int intRowIndex)
        {
            txtStudentID.Text = dbc.tblMyTable.Rows[intRowIndex][0].ToString();
            txtStudenName.Text = dbc.tblMyTable.Rows[intRowIndex][1].ToString();
            txtCollege.Text = dbc.tblMyTable.Rows[intRowIndex][2].ToString();
            txtPhoneNumber.Text = dbc.tblMyTable.Rows[intRowIndex][3].ToString();

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string strDate; 
            string strTime; 
            strDate = DateTime.Now.ToShortDateString(); 
            strTime = DateTime.Now.ToShortTimeString();

            dbc.strSql = "SELECT * FROM RequestedTrip ";
            dbc.strTableName = "RequestedTrip";
            dbc.tblMyTable = dbo.PopulateDataset(dbc.strSql, dbc.strTableName).Tables[0];

            int intRowCount = dbc.tblMyTable.Rows.Count;
            string strRequestedID ;
            strRequestedID =  (intRowCount + 1) + "";

            dbc.strSql = "INSERT INTO RequestedTrip ([RequestedID],[StudentID], [MoveFrom], MoveTo, ";
            dbc.strSql += " DepartureTime, ReturnTime, DateIssue, TimeIssue, RequestedStatus) ";
            dbc.strSql += " VALUES('"+ strRequestedID + "', ";
            dbc.strSql += "'" + txtStudentID.Text + "', ";
            dbc.strSql += "'" + txtFrom.Text + "', ";
            dbc.strSql += "'" + txtTo.Text + "', ";
            dbc.strSql += "'" + ddlDepartureTime.Text + "', ";
            dbc.strSql += "'" + ddlReturnTime.Text + "', ";
            dbc.strSql += "'" + strDate + "', ";
            dbc.strSql += "'" + strTime + "', ";
            dbc.strSql += "'No')";
            dbo.dbOperations(dbc.strSql, "");
        }
    }
}