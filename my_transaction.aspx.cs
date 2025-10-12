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
            dbc.strSql = "SELECT * FROM RequestedTrip";
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