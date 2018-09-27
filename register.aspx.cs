using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static DataSet;
using DataSetTableAdapters;

public partial class register :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        string aName = e.Values["username"].ToString();

        using (usersTableAdapter aAdapter = new usersTableAdapter())
        {
            usersDataTable aTable;
            aTable = aAdapter.GetDataByUserName(aName);

            if (aTable.Rows.Count > 0)
            {
                Label11.Text = "Pick Another User Name";
                DetailsView1.Rows[0].Cells[1].Controls[0].Focus();

                e.Cancel = true;
            }
        }
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}