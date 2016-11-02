using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fozg.DataController;
public partial class Admin_News_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    /// <summary>
    /// Add an account
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {        
        using (Fozg.DataController.NoiThatZimDataContext ctx = new Fozg.DataController.NoiThatZimDataContext())
        {
            New anew = new New();

            anew.Title = txtTitle.Text;
            anew.Link = txtLink.Text;
            anew.Body = CKEditor1.Text;                
            anew.CreatedDate = DateTime.Now;
            DateTime? nullDateTime = null;
            anew.PublishDate = txtPublishDate.Text != string.Empty ? DateTime.Parse(txtPublishDate.Text) : nullDateTime;
            anew.MetaDescrip = txtMetaDescription.Text;
            anew.MetaKeywords = txtMetaKeywords.Text;
            anew.MetaTitle = txtTitle.Text;
            anew.Thumbnail = txtLinkAnh.Text;
            anew.AccountID = int.Parse(Session["accountID"].ToString());

            ctx.News.InsertOnSubmit(anew);
            ctx.SubmitChanges();
            Response.Redirect("news.aspx");
        }
    }
}
