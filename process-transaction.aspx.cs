using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFS4420Labs
{
    public partial class process_transaction : System.Web.UI.Page
    {
        DatabaseConnection dbc = new DatabaseConnection();
        DatabaseOperations dbo = new DatabaseOperations();
        protected void Page_Load(object sender, EventArgs e)
        {
            dbc.strSql = "SELECT * FROM RequestedTrip ";
            dbc.strTableName = "RequestedTrip";
            dbc.tblMyTable = dbo.PopulateDataset(dbc.strSql , dbc.strTableName).Tables[0];
            grdTranscations.DataSource = dbc.tblMyTable;
            grdTranscations.DataBind();


        }

        protected void grdTranscations_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtRequestNo.Text = grdTranscations.SelectedRow.Cells[1].Text;
            txtStudentID.Text = grdTranscations.SelectedRow.Cells[2].Text;
            txtFrom.Text = grdTranscations.SelectedRow.Cells[3].Text;
            txtDestination.Text = grdTranscations.SelectedRow.Cells[4].Text;
            txtDeparture.Text = grdTranscations.SelectedRow.Cells[5].Text;
            txtReturn.Text = grdTranscations.SelectedRow.Cells[6].Text;
            txtDate.Text = grdTranscations.SelectedRow.Cells[7].Text;
            txtTime.Text = grdTranscations.SelectedRow.Cells[8].Text;
            txtApproved.Text = grdTranscations.SelectedRow.Cells[9].Text;
        }
    }
}