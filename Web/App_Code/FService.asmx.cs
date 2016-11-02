using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Data.Linq;
using Fozg.DataController;

namespace FService
{
    /// <summary>
    /// Summary description for FService
    /// </summary>
    [WebService]
    [System.Web.Script.Services.ScriptService]

    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class FService : System.Web.Services.WebService
    {


        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public void GetAllAccounts()
        {
            using (Fozg.DataController.NoiThatZimDataContext ctx = new Fozg.DataController.NoiThatZimDataContext())
            {
                var accounts = ctx.Accounts.Select(a => new { Id = a.Id, LoginName = a.LoginName, DisplayName = a.DisplayName, Description = a.Description, Role = a.Role }).ToArray();
                Context.Response.Write(new JavaScriptSerializer().Serialize(accounts));
            }
           
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public void GetAllNews()
        {
            using (Fozg.DataController.NoiThatZimDataContext ctx = new Fozg.DataController.NoiThatZimDataContext())
            {
                var news = ctx.News.Select(a => new {
                    Id = a.Id,
                    Title = a.Title,
                    Author = a.Account.DisplayName,
                    CreatedDate = a.CreatedDate,
                    PublishDate = a.PublishDate
                }).ToArray();
                Context.Response.Write(new JavaScriptSerializer().Serialize(news));
            }
        }
    }

}
