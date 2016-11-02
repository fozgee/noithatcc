using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fozg.DataController;
public partial class Admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (Fozg.DataController.NoiThatZimDataContext ctx = new Fozg.DataController.NoiThatZimDataContext())
        {
            Account acc = ctx.Accounts.SingleOrDefault(x => x.LoginName.Equals(txtUser.Text.ToLower()));
            if (acc != null)
            {
                if (acc.Password.Equals(txtPass.Text))
                {
                    Session["account"] = acc.DisplayName;
                    Session["accountID"] = acc.Id;
                    Response.Redirect("default.aspx");
                    return;
                }
            }
            Label1.Text = "Sai tên đăng nhập hoặc mật khẩu";
        }

        //if (txtUser.Text.ToLower().Equals("admin") && txtPass.Text.Equals("123456"))
        //{
        //    Session["account"] = "admin";
        //    Response.Redirect("default.aspx");
        //}
        //else
        //{
        //    Label1.Text = "Sai tên đăng nhập hoặc mật khẩu";
        //}
    }
}