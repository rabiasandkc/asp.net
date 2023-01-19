using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chaidijitalpazarlama.yonetim
{
    public partial class yorumislemleri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rblFiltre_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblFiltre.SelectedValue == "0")//onaysızlar
            {
                dsYorumlar.SelectCommand = "SELECT * FROM [referans_yorumlari]  inner join referanslar on referans_yorumlari.referans_id=referanslar.referans_id inner join kullanicilar on referans_yorumlari.uye_id=kullanicilar.kullanici_id WHERE referans_yorumlari.silindi = 0 and referans_yorumlari.aktif=0 ORDER BY referans_yorumlari.eklenme_tarihi";
                dsYorumlar.DataBind();
                gvYorumlar.DataBind();
            }
            else if (rblFiltre.SelectedValue == "1")  //onaylanmışlar
            {
                dsYorumlar.SelectCommand = "SELECT * FROM [referans_yorumlari]  inner join referanslar on referans_yorumlari.referans_id=referanslar.referans_id inner join kullanicilar on referans_yorumlari.uye_id=kullanicilar.kullanici_id WHERE referans_yorumlari.silindi = 0 and referans_yorumlari.aktif=1 ORDER BY referans_yorumlari.eklenme_tarihi";
                dsYorumlar.DataBind();
                gvYorumlar.DataBind();
            }
            else   //Tümü
            {
                dsYorumlar.SelectCommand = "SELECT * FROM [referans_yorumlari]  inner join referanslar on referans_yorumlari.referans_id=referanslar.referans_id inner join kullanicilar on referans_yorumlari.uye_id=kullanicilar.kullanici_id WHERE referans_yorumlari.silindi = 0 ORDER BY referans_yorumlari.eklenme_tarihi";
                dsYorumlar.DataBind();
                gvYorumlar.DataBind();
            }

        }

        protected void gvYorumlar_SelectedIndexChanged(object sender, EventArgs e)
        {
            
           if (gvYorumlar.SelectedIndex>0) //eğer seçili satır varsa
            {
                dsYorumlar.UpdateParameters["yorum_id"].DefaultValue = gvYorumlar.SelectedRow.Cells[1].Text;
                dsYorumlar.Update();
            }

            
        }
    }
}