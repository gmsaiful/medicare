using System;
using System.Net;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;

namespace ProviderInfo.Web
{
    public class Global : HttpApplication
    {
        private void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            var lastErrorInfo = Server.GetLastError();
            Exception errorInfo = null;

            var isNotFuund = false;
            if (lastErrorInfo != null)
            {
                errorInfo = lastErrorInfo.GetBaseException();
                var error = errorInfo as HttpException;
                if (error != null)
                    isNotFuund = error.GetHttpCode() == (int) HttpStatusCode.NotFound;
            }
            if (isNotFuund)
            {
                Server.ClearError();
                Response.Redirect("~/PageNotFound.aspx");
            }
            else if ((errorInfo != null) && !string.IsNullOrEmpty(errorInfo.Message))
            {
                Session["ErrorMessage"] = errorInfo.Message;
                Response.Redirect("~/ErrorMessage.aspx");
            }
        }
    }
}