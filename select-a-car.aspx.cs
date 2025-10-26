using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFS4420Labs
{
    public partial class select_a_car : System.Web.UI.Page
    {

        DatabaseConnection dbc = new DatabaseConnection();
        DatabaseOperations dbo = new DatabaseOperations();
        static DataTable tblCar = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            int intRowcounter;
            dbc.strSql = "SELECT * FROM CAR";
            dbc.strTableName = "CAR";
            tblCar = dbo.PopulateDataset(dbc.strSql, dbc.strTableName).Tables[0];
            intRowcounter = tblCar.Rows.Count;
            grdCar.DataSource = tblCar;
            grdCar.DataBind();
            int intCarIndex;
            intCarIndex = 0;
                
                List<String> StrCarName = new List<String>();
                while (intCarIndex < intRowcounter)
                {
                if (StrCarName.Contains(tblCar.Rows[intCarIndex][1].ToString()))
                {
                    intCarIndex++;
                    continue;
                }
                else
                {
                    ddlcarList.Items.Add(tblCar.Rows[intCarIndex][1].ToString());
                    StrCarName.Add(tblCar.Rows[intCarIndex][1].ToString());
                    intCarIndex++;
                }
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {




        }

        protected void ddlCar_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void ddlcarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            grdCar.DataSource = null;
            grdCar.DataBind();
            int intRowcounter;
            dbc.strSql = "SELECT * FROM CAR WHERE [Car_Name] = '" + ddlcarList.Text + "'";
            dbc.strTableName = "CAR";
            tblCar = dbo.PopulateDataset(dbc.strSql, dbc.strTableName).Tables[0];
            intRowcounter = tblCar.Rows.Count;
            grdCar.DataSource = tblCar;
            grdCar.DataBind();

        }
    }
}