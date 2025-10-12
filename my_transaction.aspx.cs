using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFS4420Labs
{
    public partial class my_transaction : System.Web.UI.Page
    {

        DatabaseConnection dbc = new DatabaseConnection();
        DatabaseOperations dbo = new DatabaseOperations();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (DatabaseConnection.strStudentID == "")
            {
                Response.Redirect("~/student-login.aspx");
            }

            dbc.strSql = "SELECT [RequestedID] As [Reference No], [StudentID] As [ID] , [MoveFrom] AS [From], ";
            dbc.strSql += " [MoveTo] As [Destination], [DepartureTime] As [Departure Time], [ReturnTime] As [Return Time], ";
            dbc.strSql += " [DateIssue] As [Date], [TimeIssue] As [Time], [RequestedStatus] AS [Approved] ";
            dbc.strSql += " FROM RequestedTrip";
            dbc.strSql += " WHERE StudentID = '" + DatabaseConnection.strStudentID + "'";
            dbc.strTableName = "RequestedTrip";
            dbc.tblMyTable =dbo.PopulateDataset(dbc.strSql,dbc.strTableName).Tables[0];
            grdMyTranscations.DataSource = dbc.tblMyTable;
            grdMyTranscations.DataBind();



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}