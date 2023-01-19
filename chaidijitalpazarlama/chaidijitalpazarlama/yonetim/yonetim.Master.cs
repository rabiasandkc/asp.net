using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chaidijitalpazarlama.yonetim
{
    public partial class yonetim : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
             if(Session["yonetici_adi"].ToString()=="")
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

        protected void btnSayfaIslemleri_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void btnReferansIslemleri_Click(object sender, EventArgs e)
        {
            Response.Redirect("referansyonetimi.aspx");
        }

        protected void btnYorumIslemleri_Click(object sender, EventArgs e)
        {
            Response.Redirect("yorumislemleri.aspx");
        }

        protected void btnUyeIslemleri_Click(object sender, EventArgs e)
        {
            Response.Redirect("uyeislemleri.aspx");
        }

        protected void btnYoneticiIslemleri_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullaniciayarlari.aspx");
        }

        protected void btnYonetimCikis_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("../default.aspx");
        }
    }
}