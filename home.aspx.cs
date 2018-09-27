using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String mechID;
        int temp;

        if(Request.QueryString.Count>0)
        {
            mechID = Request.QueryString["mechID"];
            if(mechID=="All" || !Int32.TryParse(mechID,out temp))
            {
                
            }
        }

    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}