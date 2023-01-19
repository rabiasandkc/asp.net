using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;
using System.Web.Security;

namespace chaidijitalpazarlama.yonetim
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string baglanti_dizesi = WebConfigurationManager.ConnectionStrings["chaipazarlamaDBConnectionString"].ToString();
            SqlConnection baglanti = new SqlConnection(baglanti_dizesi);
            SqlDataAdapter dap = new SqlDataAdapter("select * from kullanicilar where kullanici_adi=@kullanici_adi and parola=@parola and aktif=1 and silindi=0 and yoneticimi=1", baglanti);
            dap.SelectCommand.Parameters.AddWithValue("kullanici_adi", txtKulAdi.Text.Trim().Replace("'", "&#39"));
            dap.SelectCommand.Parameters.AddWithValue("parola", MD5Olustur(txtParola.Text.Trim().Replace("'", "&#39")));

            DataTable kullanicilar = new DataTable();

            try
            {
                baglanti.Open();
                dap.Fill(kullanicilar);
                baglanti.Close();
            }
            catch (Exception ex)
            {
                lblGirisMesaj.Text = "Bir hata oluştu: " + ex.Message;
            }
            if (kullanicilar.Rows.Count > 0) //BÖYLE BİR KULLANICI VAR.
            {
                Session["yonetici_id"] = kullanicilar.Rows[0]["kullanici_id"].ToString();
                Session["yonetici_adi"] = kullanicilar.Rows[0]["kullanici_adi"].ToString();
                FormsAuthentication.RedirectFromLoginPage(kullanicilar.Rows[0]["kullanici_adi"].ToString(), true);
                //Response.Redirect("default.aspx");
            }

            else
            {
                lblGirisMesaj.Text = "Böyle bir kullanıcı bulunamadı.";
                txtKulAdi.Text = "";
            }
        }
    }
}