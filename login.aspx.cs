using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using DataSetTableAdapters;
using static DataSet;
using System.Collections;

public partial class login : System.Web.UI.Page
{

    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        Response.Redirect("~/login_success.aspx", false);
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

            using (usersTableAdapter anAdapter = new usersTableAdapter())
            {
                usersDataTable aTable;
                aTable = anAdapter.GetDataByCredentials(Login1.UserName, Login1.Password);

                if (aTable.Rows.Count == 1)
                {
                    usersRow aRow = aTable.Rows[0] as usersRow;
                    int userPK = aRow.userID;
                    string userName = aRow.name;

                    Hashtable aHash = new Hashtable()
                {
                    {"userID", userPK }, {"userName", userName}
                };

                Session.Add("UserInfo", aHash);
                Session.Add("userID", userPK);
                Session.Add("name", aRow.name);
                Session.Add("email", aRow.email);

                HttpCookie aCookie = new HttpCookie("user");
                aCookie["userID"] = aRow.userID.ToString();

                Response.Cookies.Add(aCookie);
                    if (Request.QueryString["ReturnUrl"] != string.Empty)
                    {
                        FormsAuthentication.RedirectFromLoginPage(userPK.ToString(), false);
                        FormsAuthentication.SetAuthCookie(userPK.ToString(), false);
                    
                    }
                }


            }
        
    }
}