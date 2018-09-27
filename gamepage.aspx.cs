using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static DataSet;
using DataSetTableAdapters;
public partial class gamepage :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["gameID"] != string.Empty)
        {
            string strID = Request.QueryString["gameID"];
        }
        else
        {
            Response.Redirect("~/home.aspx");
        }


    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {

        //Instantiate the CustomerCart object

        if (Session["CustomerCart"] == null)
        {
            Session["CustomerCart"] = new ShopCart();
        }

        //Access the ProductPK from the DataKeys collection of the DataList

        int intID = Convert.ToInt32(dlGame.DataKeys[0]);

        //Get details about the game from the database
        //Note: These details could have been obtained from the DataList too

        using (GameTableAdapter aAdapter = new GameTableAdapter())
        {
            GameDataTable aTable;

            aTable = aAdapter.GetDataByGameID(intID);

            if (aTable.Rows.Count == 1)
            {
                GameRow aRow = aTable.Rows[0] as GameRow;

                //Add the CartItem

                if (aRow.stock <= 0)
                    Response.Redirect("~/home.aspx");

                ShopCart aCart = Session["CustomerCart"] as ShopCart;

                aCart.AddCartItem(aRow.gameID, aRow.name, aRow.boxImage, 1, aRow.price, aRow.stock);
            }
        }
        Response.Redirect("~/ShoppingCart.aspx");
    }

    protected void btnSold_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }


    protected void dlGame_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        //https://forums.asp.net/t/1462485.aspx?How+to+use+Rangevalidator+in+GridView+row+and+Columns+

        Label theLabel = (Label)e.Item.FindControl("lblStock");
        int theStock = Convert.ToInt32(theLabel.Text);
        Button theButton = (Button)e.Item.FindControl("btnAdd");

        if (theStock <= 0)
        {

            //theButton.OnClientClick = "btnSold_Click";
            theButton.Text = "Sold Out";
        }
    }
}