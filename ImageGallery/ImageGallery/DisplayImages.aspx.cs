using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageGallery
{
    public partial class DisplayImages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["_Pic"] != null)
            {
                displayImage.ImageUrl = Request.QueryString["_Pic"];
                
            }
            else
            {
                Server.Transfer("~/ImageGallery.aspx");
            }
        }

        protected void btnUpLoad_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ImageGallery.aspx");
        }
    }
}