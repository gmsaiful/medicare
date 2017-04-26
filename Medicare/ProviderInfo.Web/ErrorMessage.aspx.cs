using System;
using System.Web.UI;

namespace ProviderInfo.Web
{
    public partial class ErrorMessage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["ErrorMessage"] != null) && !string.IsNullOrEmpty(Session["ErrorMessage"].ToString()))
            {
                lblErrorMessage.Text = Session["ErrorMessage"].ToString();
                Session["ErrorMessage"] = null;
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}