using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chaidijitalpazarlama.yonetim
{
    public partial class kullaniciayarlari : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["yonetici_adi"].ToString() == "")
                {
                    Session.RemoveAll();
                    Session.Abandon();
                    Response.Redirect("giris.aspx");
                }
            }
            catch
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("giris.aspx");
            }
        }
    }
}