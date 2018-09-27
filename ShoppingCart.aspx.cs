using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //instantiate a shopcart object, if it doesn't exist

        if (Session["CustomerCart"] == null)
        {
            Session["CustomerCart"] = new ShopCart();
        }

        //if the shopcart doesn't have any items, hide the checkout button

        ShopCart aCart = Session["CustomerCart"] as ShopCart;

        if (aCart.GetCartItems().Count == 0)
        {
            btnCheckOut.Visible = false;
        }

        //if it is not a postback, call the BindGrid method

        if (!Page.IsPostBack)
        {
            BindGrid();
        }

    }

    private void BindGrid()
    {
        //Bind the contents of the cart to the GridView

        gvCart.DataSource = (Session["CustomerCart"] as ShopCart).GetCartItems().Values;
        gvCart.DataBind();
    }

    protected void gvCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //cancel edit

        gvCart.EditIndex = -1;
        BindGrid();
    }

    protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //get the key for the item to be deleted and delete it from the shopcart
        //e.RowIndex is used to identify the row that is to be deleted

        int aKey = Convert.ToInt32(gvCart.DataKeys[e.RowIndex].Value);

        (Session["CustomerCart"] as ShopCart).DeleteCartItem(aKey);
        BindGrid();
    }

    protected void gvCart_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //Get the row ready for editing

        gvCart.EditIndex = e.NewEditIndex;
        BindGrid();

    }

    protected void gvCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //Find the new value for quantity in the GridView

        //e.RowIndex is used to identify the row that is being updated

        TextBox aTextBox = gvCart.Rows[e.RowIndex].FindControl("txtQuantity") as TextBox;

        int intNewQuantity = Convert.ToInt32(aTextBox.Text);

        int aKey = Convert.ToInt32(gvCart.DataKeys[e.RowIndex].Value);


        (Session["CustomerCart"] as ShopCart).UpdateCartItem(aKey, intNewQuantity);

        gvCart.EditIndex = -1;
        BindGrid();
    }

    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Secure/CheckOut.aspx");
    }

    protected string OrderTotal()
    {
        ShopCart aCart = Session["CustomerCart"] as ShopCart;

        return string.Format("Your Order Total is: {0:c}", aCart.TotalForCartItems());
    }



    protected void gvCart_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //https://forums.asp.net/t/1462485.aspx?How+to+use+Rangevalidator+in+GridView+row+and+Columns+


        //if ((e.Row.RowType == DataControlRowType.DataRow || e.Row.RowType == DataControlRowType.Footer) && e.Row.RowState == DataControlRowState.Edit)
        if ((e.Row.RowState & DataControlRowState.Edit) > 0)
        
        {
            RangeValidator rng = (RangeValidator)e.Row.FindControl("rvPurchaseQty");
            Label lblStock = (Label)e.Row.FindControl("lblStock");

            rng.MinimumValue = "0";
            rng.MaximumValue = lblStock.Text;
            rng.ErrorMessage = "Value should be between 0 and " + lblStock.Text + ".";

        }
    }
    
}