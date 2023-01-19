using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;


namespace chaidijitalpazarlama.yonetim
{
    public partial class _default : System.Web.UI.Page
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

        protected void gvSayfalar_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(gvSayfalar.SelectedIndex>-1)
            {
                string baglanti_dizesi = WebConfigurationManager.ConnectionStrings["chaipazarlamaDBConnectionString"].ToString();
                SqlConnection baglanti = new SqlConnection(baglanti_dizesi);
                SqlDataAdapter dap = new SqlDataAdapter("select * from sayfalar where silindi=0 and sayfa_id=@sayfa_id", baglanti);
                dap.SelectCommand.Parameters.AddWithValue("sayfa_id", gvSayfalar.SelectedRow.Cells[1].Text);
               DataTable sayfalar=new DataTable();

                DataTable kullanicilar = new DataTable();

                try
                {
                    baglanti.Open();
                    dap.Fill(sayfalar);
                    baglanti.Close();
                }
                catch (Exception ex)
                {
                    lblMesaj.Text = "Bir hata oluştu: " + ex.Message;
                }
                if (sayfalar.Rows.Count > 0) //BÖYLE BİR KULLANICI VAR.
                {
                    txtBaslik.Text = sayfalar.Rows[0]["sayfa_basligi"].ToString();
                    txtSira.Text = sayfalar.Rows[0]["sira"].ToString();
                    chkAktif.Checked = Boolean.Parse(sayfalar.Rows[0]["aktif"].ToString());
                    fckIcerik.Value= sayfalar.Rows[0]["sayfa_icerigi"].ToString();
                }

                else
                {
                    lblMesaj.Text = "Böyle bir sayfa bulunamadı.";
                    
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
            gvSayfalar.SelectedIndex = -1;
            txtBaslik.Text = "";
            txtSira.Text = "";
            chkAktif.Checked = false;
            fckIcerik.Value = "";
            lblMesaj.Text = "";
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            if(gvSayfalar.SelectedIndex>-1)
            {
                dsSayfalar.DeleteParameters["sayfa_id"].DefaultValue = gvSayfalar.SelectedRow.Cells[1].Text;
                if(dsSayfalar.Delete()>0)
                {
                    lblMesaj.Text = "Sayfa başarıyla silindi";
                    bosalt();
                }
                else
                {
                    lblMesaj.Text = "Bir hata oluştu, hiçbir sayfa silinemedi";
                    
                }
            }
            else
            {
                lblMesaj.Text = " Lütfen önce silinecek sayfayı seçiniz";
            }
            
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if (gvSayfalar.SelectedIndex > -1)//güncelleme
            {
                dsSayfalar.UpdateParameters["sayfa_id"].DefaultValue = gvSayfalar.SelectedRow.Cells[1].Text;
                dsSayfalar.UpdateParameters["sayfa_icerigi"].DefaultValue = fckIcerik.Value;
                if (dsSayfalar.Update() > 0)
                {
                    lblMesaj.Text = "Sayfa başarıyla güncellendi";
                    bosalt();
                }
                else
                {
                    lblMesaj.Text = "Bir hata oluştu, hiçbir sayfa güncellenmedi";
                }
            }

            else//ekleme
            {
                
                dsSayfalar.InsertParameters["sayfa_icerigi"].DefaultValue = fckIcerik.Value;
                if (dsSayfalar.Insert() > 0)
                {
                    lblMesaj.Text = "Sayfa başarıyla eklendi";
                    bosalt();
                }
                else
                {
                    lblMesaj.Text = "Bir hata oluştu, hiçbir sayfa eklenmedi";

                }
            }

        }
    }
}