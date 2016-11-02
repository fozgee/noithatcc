using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fozg.DataController;
public partial class Admin_account_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using(Fozg.DataController.NoiThatZimDataContext ctx = new Fozg.DataController.NoiThatZimDataContext())
        {
            Account acc = new Account();

            acc.DisplayName = txtDisplayName.Text;
            acc.LoginName = txtLoginName.Text;
            acc.CreatedDate = DateTime.Now;
            acc.Password = "123456";

            ctx.Accounts.InsertOnSubmit(acc);
            ctx.SubmitChanges();
            Response.Redirect("accounts.aspx");
        }
    }
}