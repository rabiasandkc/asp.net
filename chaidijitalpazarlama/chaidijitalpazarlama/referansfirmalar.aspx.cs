using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chaidijitalpazarlama
{
    public partial class referansfirmalar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["id"].ToString()!="")
                {
                    pnlSeciliReferans.Visible = true;
                    pnlTumReferanslar.Visible = false;
                }
                else
                {
                    pnlSeciliReferans.Visible = false;
                    pnlTumReferanslar.Visible = true;
                }
            }
            catch
            {
                pnlSeciliReferans.Visible = false;
                pnlTumReferanslar.Visible = true;

            }


            try
            {
                if (Session["uye_id"].ToString() != "")
                {
                    
                    pnlYorumYap.Visible = true;
                }
            }
            catch
            {
                pnlYorumYap.Visible = false;
            }





            if (pnlYorumYap.Visible) 
            {
                lblIP.Text = ipNedir();
            }

          


        }

        protected void btnYorumGonder_Click(object sender, EventArgs e)
        {
            if (dsYorumlar.Insert()>0)
            {
                lblMesaj.Text = "Yorumunuz alındı, yönetici onayından sonra yayınlanacaktır.";
                txtYorum.Text = "";
            }
            else
            {
                lblMesaj.Text = "Bir hata oluştu, lütfen daha sonra tekrar deneyin.";
            }
        }
        protected string ipNedir()
        {
            string ipaddress;
            ipaddress = Context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (ipaddress == "" || ipaddress == null)
                ipaddress = Context.Request.ServerVariables["REMOTE_ADDR"];
            return ipaddress;
        }
    }
    }
