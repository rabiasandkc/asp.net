using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chaidijitalpazarlama.yonetim
{
    public partial class referansyonetimi : System.Web.UI.Page
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
        protected void gvReferanslar_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (gvReferanslar.SelectedIndex > -1)
            {
                string baglanti_dizesi = WebConfigurationManager.ConnectionStrings["chaipazarlamaDBConnectionString"].ToString();
                SqlConnection baglanti = new SqlConnection(baglanti_dizesi);
                SqlDataAdapter dap = new SqlDataAdapter("select * from referanslar where silindi=0 and referans_id=@referans_id", baglanti);
                dap.SelectCommand.Parameters.AddWithValue("referans_id", gvReferanslar.SelectedRow.Cells[1].Text);
                DataTable referanslar = new DataTable();

                DataTable kullanicilar = new DataTable();

                try
                {
                    baglanti.Open();
                    dap.Fill(referanslar);
                    baglanti.Close();
                }
                catch (Exception ex)
                {
                    lblMesaj.Text = "Bir hata oluştu: " + ex.Message;
                }
                if (referanslar.Rows.Count > 0) //BÖYLE BİR KULLANICI VAR.
                {
                    txtBaslik.Text = referanslar.Rows[0]["referens_basligi"].ToString();
                   
                    chkAktif.Checked = Boolean.Parse(referanslar.Rows[0]["aktif"].ToString());
                    fckIcerik.Value = referanslar.Rows[0]["referans_icerigi"].ToString();
                }

                else
                {
                    lblMesaj.Text = "Böyle bir referans bulunamadı.";

                }
            }
        }

        protected void btnYeni_Click(object sender, EventArgs e)
        {

            bosalt();
            txtBaslik.Focus();
        }

        private void bosalt()
        {
            gvReferanslar.SelectedIndex = -1;
            txtBaslik.Text = "";
            
            chkAktif.Checked = false;
            fckIcerik.Value = "";
            lblMesaj.Text = "";
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            if (gvReferanslar.SelectedIndex > -1)
            {
                dsReferanslar.DeleteParameters["referans_id"].DefaultValue = gvReferanslar.SelectedRow.Cells[1].Text;
                if (dsReferanslar.Delete() > 0)
                {
                    lblMesaj.Text = "Referans başarıyla silindi";
                    bosalt();
                }
                else
                {
                    lblMesaj.Text = "Bir hata oluştu, hiçbir referans silinemedi";

                }
            }
            else
            {
                lblMesaj.Text = " Lütfen önce silinecek referans seçiniz";
            }

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if (gvReferanslar.SelectedIndex > -1)//güncelleme
            {
                dsReferanslar.UpdateParameters["referans_id"].DefaultValue = gvReferanslar.SelectedRow.Cells[1].Text;
                dsReferanslar.UpdateParameters["referans_icerigi"].DefaultValue = fckIcerik.Value;
                if (dsReferanslar.Update() > 0)
                {
                    lblMesaj.Text = "Referans başarıyla güncellendi";
                    bosalt();
                }
                else
                {
                    lblMesaj.Text = "Bir hata oluştu, hiçbir referans güncellenmedi";
                }
            }

            else//ekleme
            {

                dsReferanslar.InsertParameters["referans_icerigi"].DefaultValue = fckIcerik.Value;
               if (dsReferanslar.Insert() > 0)
                {
                    lblMesaj.Text = "Referans başarıyla eklendi";
                    bosalt();
                }
                else
                {
                    lblMesaj.Text = "Bir hata oluştu, hiçbir referans eklenmedi";

                }
            }

        }
    }
}