using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Security.Cryptography;
using System.Text;


namespace chaidijitalpazarlama
{
    public partial class uyegirisi : System.Web.UI.Page
    {
        public object ContentPlaceHolder1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["uye_id"].ToString()!="")
                {
                    pnlGiris.Visible = false;
                    pnlKullanici.Visible = true;
                }
            }
            catch
            {
                pnlGiris.Visible = true;
                pnlKullanici.Visible = false;
            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
           string baglanti_dizesi = WebConfigurationManager.ConnectionStrings["chaipazarlamaDBConnectionString"].ToString();
            SqlConnection baglanti=new SqlConnection(baglanti_dizesi);
            SqlDataAdapter dap = new SqlDataAdapter("select * from kullanicilar where kullanici_adi=@kullanici_adi and parola=@parola and aktif=1 and silindi=0",baglanti);
            dap.SelectCommand.Parameters.AddWithValue("kullanici_adi",txtKulAdi.Text.Trim().Replace("'","&#39"));
            dap.SelectCommand.Parameters.AddWithValue("parola",MD5Olustur(txtParola.Text.Trim().Replace("'", "&#39")));

            DataTable kullanicilar=new DataTable();

            try
            {
                baglanti.Open();
                dap.Fill(kullanicilar);
                baglanti.Close();
            }
            catch (Exception ex)
            { 
                lblGirisMesaj.Text = "Bir hata oluştu: "+ ex.Message;
            }
            if (kullanicilar.Rows.Count > 0) //BÖYLE BİR KULLANICI VAR.
            {
                pnlGiris.Visible = false;
                pnlKullanici.Visible = true;
                lblKullanici.Text = "Hoşgeldin " + kullanicilar.Rows[0]["kullanici_adi_soyadi"].ToString();
                Session["uye_id"] = kullanicilar.Rows[0]["kullanici_id"].ToString();
             }

            else
            {
                lblGirisMesaj.Text = "Böyle bir kullanıcı bulunamadı.";
                txtKulAdi.Text = "";
            }
        }


        public string MD5Olustur(string input)
        {
            MD5 md5Hasher = MD5.Create();
            byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input));
            StringBuilder sBuilder = new StringBuilder();
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }
            return sBuilder.ToString();
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            pnlGiris.Visible = true;
            pnlKullanici.Visible = false;


          

            }
        }
    }
