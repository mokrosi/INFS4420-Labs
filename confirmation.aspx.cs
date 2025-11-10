using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFS4420Labs
{
    public partial class confirmation : System.Web.UI.Page
    {

        DatabaseConnection dbc = new DatabaseConnection();
        DatabaseOperations dbo = new DatabaseOperations();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtReferenceNO.Text = DatabaseConnection.strReferenceNo;
            txtStudentID.Text = DatabaseConnection.strStudentID;
            txtCarRegsterationNO.Text = DatabaseConnection.strCarPlateNo;
            txtDriverID.Text = DatabaseConnection.strDriverID;
        }

        protected void btnConfirmation_Click(object sender, EventArgs e)
        {

            dbc.strSql = "UPDATE REQUESTEDTRIP ";
            dbc.strSql = dbc.strSql + " SET RequestedStatus = 'Yes' ";
            dbc.strSql = dbc.strSql + " WHERE StudentID = '" + txtStudentID.Text + "'";
            dbo.dbOperations(dbc.strSql, "");
        }
    }
}