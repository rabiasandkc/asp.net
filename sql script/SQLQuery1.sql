USE [master]
GO
/****** Object:  Database [chaipazarlamaDB]    Script Date: 19.01.2023 21:09:56 ******/
CREATE DATABASE [chaipazarlamaDB]
GO
USE [chaipazarlamaDB]
GO
/****** Object:  Table [dbo].[kullanicilar]    Script Date: 19.01.2023 21:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanicilar](
	[kullanici_id] [int] IDENTITY(1,1) NOT NULL,
	[kullanici_adi] [nvarchar](255) NULL,
	[kullanici_eposta] [varchar](255) NULL,
	[kullanici_adi_soyadi] [nvarchar](250) NULL,
	[aktif] [bit] NULL,
	[silindi] [bit] NULL,
	[yoneticimi] [bit] NULL,
	[parola] [nvarchar](255) NULL,
 CONSTRAINT [PK_kullanicilar] PRIMARY KEY CLUSTERED 
(
	[kullanici_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[referans_yorumlari]    Script Date: 19.01.2023 21:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[referans_yorumlari](
	[yorum_id] [int] IDENTITY(1,1) NOT NULL,
	[yorum_icerigi] [ntext] NULL,
	[aktif] [bit] NULL,
	[silindi] [bit] NULL,
	[eklenme_tarihi] [datetime] NULL,
	[referans_id] [int] NULL,
	[uye_id] [int] NULL,
	[ip_adresi] [varchar](40) NULL,
 CONSTRAINT [PK_referans_yorumlari] PRIMARY KEY CLUSTERED 
(
	[yorum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[referanslar]    Script Date: 19.01.2023 21:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[referanslar](
	[referans_id] [int] IDENTITY(1,1) NOT NULL,
	[referens_basligi] [nvarchar](255) NULL,
	[referans_icerigi] [ntext] NULL,
	[aktif] [bit] NULL,
	[silindi] [bit] NULL,
	[sira] [int] NULL,
	[eklenme_tarihi] [datetime] NULL,
 CONSTRAINT [PK_referanslar] PRIMARY KEY CLUSTERED 
(
	[referans_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sayfalar]    Script Date: 19.01.2023 21:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sayfalar](
	[sayfa_id] [int] IDENTITY(1,1) NOT NULL,
	[sayfa_basligi] [nvarchar](255) NULL,
	[sayfa_icerigi] [ntext] NULL,
	[aktif] [bit] NULL,
	[silindi] [bit] NULL,
	[sira] [int] NULL,
 CONSTRAINT [PK_sayfalar] PRIMARY KEY CLUSTERED 
(
	[sayfa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uyeler]    Script Date: 19.01.2023 21:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uyeler](
	[uye_id] [int] IDENTITY(1,1) NOT NULL,
	[uye_adi] [nvarchar](100) NULL,
	[uye_soyadi] [nvarchar](100) NULL,
	[uye_eposta] [nvarchar](255) NULL,
	[uyelik_tarihi] [datetime] NULL,
	[uye_parola] [nvarchar](50) NULL,
	[yasadigi_sehir] [int] NULL,
	[aktif] [bit] NULL,
	[silindi] [bit] NULL,
 CONSTRAINT [PK_uyeler] PRIMARY KEY CLUSTERED 
(
	[uye_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[kullanicilar] ON 
GO
INSERT [dbo].[kullanicilar] ([kullanici_id], [kullanici_adi], [kullanici_eposta], [kullanici_adi_soyadi], [aktif], [silindi], [yoneticimi], [parola]) VALUES (1, N'ali', N'ali@posta.com', N'ali aslan', 1, 0, 0, N'e10adc3949ba59abbe56e057f20f883e')
GO
INSERT [dbo].[kullanicilar] ([kullanici_id], [kullanici_adi], [kullanici_eposta], [kullanici_adi_soyadi], [aktif], [silindi], [yoneticimi], [parola]) VALUES (2, N'rabia', N'veli@posta.com', N'rabia sandıkçı', 1, 0, 1, N'fcea920f7412b5da7be0cf42b8c93759')
GO
INSERT [dbo].[kullanicilar] ([kullanici_id], [kullanici_adi], [kullanici_eposta], [kullanici_adi_soyadi], [aktif], [silindi], [yoneticimi], [parola]) VALUES (3, N'derya', N'derya@posta.com', N'derya deniz', 1, 0, 0, N'e10adc3949ba59abbe56e057f20f883e')
GO
INSERT [dbo].[kullanicilar] ([kullanici_id], [kullanici_adi], [kullanici_eposta], [kullanici_adi_soyadi], [aktif], [silindi], [yoneticimi], [parola]) VALUES (4, N'fatma', N'fatma@posta.com', N'fatma koç', 1, 0, 0, N'e10adc3949ba59abbe56e057f20f883e')
GO
SET IDENTITY_INSERT [dbo].[kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[referans_yorumlari] ON 
GO
INSERT [dbo].[referans_yorumlari] ([yorum_id], [yorum_icerigi], [aktif], [silindi], [eklenme_tarihi], [referans_id], [uye_id], [ip_adresi]) VALUES (1, N'sdkfbkfdn', 1, 0, CAST(N'2023-10-01T00:00:00.000' AS DateTime), 1, 1, N'127.0.0.1')
GO
INSERT [dbo].[referans_yorumlari] ([yorum_id], [yorum_icerigi], [aktif], [silindi], [eklenme_tarihi], [referans_id], [uye_id], [ip_adresi]) VALUES (2, N'fnfgnfgn', 1, 0, CAST(N'2023-10-01T00:00:00.000' AS DateTime), 2, 2, N'127.0.0.1')
GO
INSERT [dbo].[referans_yorumlari] ([yorum_id], [yorum_icerigi], [aktif], [silindi], [eklenme_tarihi], [referans_id], [uye_id], [ip_adresi]) VALUES (3, N'dffdbfdb', 1, 0, CAST(N'2023-10-01T00:00:00.000' AS DateTime), 3, 3, N'127.0.0.1')
GO
INSERT [dbo].[referans_yorumlari] ([yorum_id], [yorum_icerigi], [aktif], [silindi], [eklenme_tarihi], [referans_id], [uye_id], [ip_adresi]) VALUES (4, N'dfbfbdfbbdb', 0, 0, CAST(N'2023-10-01T00:00:00.000' AS DateTime), 4, 4, N'127.0.0.1')
GO
INSERT [dbo].[referans_yorumlari] ([yorum_id], [yorum_icerigi], [aktif], [silindi], [eklenme_tarihi], [referans_id], [uye_id], [ip_adresi]) VALUES (1039, N'doofdkgdfgk', 0, 0, CAST(N'2023-01-19T17:08:03.620' AS DateTime), 20, 1, N'::1')
GO
INSERT [dbo].[referans_yorumlari] ([yorum_id], [yorum_icerigi], [aktif], [silindi], [eklenme_tarihi], [referans_id], [uye_id], [ip_adresi]) VALUES (1040, NULL, 0, 0, CAST(N'2023-01-19T17:08:12.930' AS DateTime), 20, 1, N'::1')
GO
SET IDENTITY_INSERT [dbo].[referans_yorumlari] OFF
GO
SET IDENTITY_INSERT [dbo].[referanslar] ON 
GO
INSERT [dbo].[referanslar] ([referans_id], [referens_basligi], [referans_icerigi], [aktif], [silindi], [sira], [eklenme_tarihi]) VALUES (20, N'REFERANS 1', N'<a href="https://ahrefs.com/tr" target="_blank"><img src="/userfiles/image/ahrefs.jpg" width="546" height="172" alt="" /></a>&nbsp;', 1, 0, 1, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[referanslar] ([referans_id], [referens_basligi], [referans_icerigi], [aktif], [silindi], [sira], [eklenme_tarihi]) VALUES (21, N'REFERANS 2', N'<a href="https://creativemarket.com/" target="_blank"><img src="/userfiles/image/creative-market.jpg" width="200" height="50" alt="" /></a>&nbsp;', 1, 0, 2, CAST(N'2023-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[referanslar] ([referans_id], [referens_basligi], [referans_icerigi], [aktif], [silindi], [sira], [eklenme_tarihi]) VALUES (23, NULL, N'<a href="https://creativemarket.com/" target="_blank"><img src="/userfiles/image/creative-market.jpg" width="200" height="50" alt="" /></a>&nbsp;', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[referanslar] OFF
GO
SET IDENTITY_INSERT [dbo].[sayfalar] ON 
GO
INSERT [dbo].[sayfalar] ([sayfa_id], [sayfa_basligi], [sayfa_icerigi], [aktif], [silindi], [sira]) VALUES (1, N'ANASAYFA', N' <header class="masthead" style="background-image:url(''assets/img/header-bg.jpg'');">
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in"><span>Chai Dijital Pazarlama''ya</span></div>
                <div class="intro-heading text-uppercase"><span>HOŞ GELDİNİZ</span></div><a class="btn btn-primary btn-xl text-uppercase" role="button" href="#services"> ↓ DAHA FAZLA BİLGİ EDİNİN ↓ </a>
            </div>
        </div>
    </header>
    <div style="background-color:white"> 
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="text-uppercase section-heading">SERVİSLERİMİZ</h2>
                    <h3 class="text-muted section-subheading">Sizin İçin Neler Yapabiliriz ?</h3>
                </div>
            </div>
            </div>
        </section>
            <div class="row text-center">
                <div class="col-md-4" style="border-style:solid;border-width: 10px;border-color: white;background-color: #343a38;"> <span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i></span>
                    <h4 class="section-heading" style="color:white !important;">E-Ticaret</h4>
                    <p class="text-muted" style="color:white !important;text-align: center;">&nbsp; &nbsp; Gelişmiş SEO analiz araçlarımız ile e-ticaret sitenizi baştan aşağı analiz eder sitenize bir puan verip puanı geliştirmek üzere çalışma metodolojimizi belirler birlikte çalışmaya başlarız.</p>
                </div>
                <div class="col-md-4" style="border-style:solid;border-width: 10px;border-color: white;background-color: #343a38;"> <span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-laptop fa-stack-1x fa-inverse"></i></span>
                    <h4 class="section-heading" style="color:white !important;">Responsive Tasarım</h4>
                    <p class="text-muted"style="color:white !important;text-align: center;">&nbsp; &nbsp; Bizden satın aldığınız tasarımların tamamını responsive olarak tasarlar istediğiniz şekilde değşiklik yapıp, düzenleyerek kullanıma hazır hale getiririz.</p>
                </div>
                <div class="col-md-4" style="border-style:solid;border-width: 10px;border-color: white;background-color: #343a38;"> <span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-lock fa-stack-1x fa-inverse"></i></span>
                    <h4 class="section-heading" style="color:white !important;">Web Güvenliği</h4>
                    <p class="text-muted" style="color:white !important;text-align: center;">&nbsp; &nbsp; Sitenizin güvenlik durumu baştan aşağı güvenlik araçlarımız ve beyaz şapkalı hackerlarımız ile test edilip bulunan açıklar tarafınıza raporlanır ve çözüm yöntemleri sunulur.</p>
                </div>
            </div>
        </div>
   

    <script src="assets/bootstrap/js/bootstrap.min.js"></script>', 1, 0, 1)
GO
INSERT [dbo].[sayfalar] ([sayfa_id], [sayfa_basligi], [sayfa_icerigi], [aktif], [silindi], [sira]) VALUES (2, N'HAKKIMIZDA', N' <section id="about" style="padding: 75px;">
   <div class="container">
   <div class="row">
    <div class="col-lg-12 text-center">
    <h2 class="text-uppercase section-heading">Hakkımızda</h2>
     <h3 class="text-muted section-subheading">Bizi tanımak için aşağıdaki workflowumuzu okuyun.</h3>
   </div>
    </div>
     <div class="row">
      <div class="col-lg-12">
         <ul class="list-group timeline">
             <li class="list-group-item">
    <div class="timeline-image"><img class="rounded-circle" src="assets/img/about/1.jpg" style="width: 140px; height: 140px" /></div>
      <div class="timeline-panel">
          <div class="timeline-heading">
                <h4>2009-2011</h4>
                 <h4 class="subheading">Başlangıçlarımız</h4>
    </div>
       <div class="timeline-body"><p class="text-muted">Chai, uzman kadrosu ile markanızı internet ortamında tanınır hale getirir. Chai, Web siteniz için SEO çalışması yapabilir, sosyal medya reklamlarınızı yönetebilir, tanıtım videolarınızı hazırlayabilir ve Pazarlama (Marketing) bölümünüzü yönetebiliriz.Tüm bu hizmetler için detaylı PDF raporlama ve ONLINE site analizi takip servislerimiz bulunmaktadır. Web sitenizi veya internet mağazanızın ilermelesini, anlık olarak yönetim panelinizden yönetebilirsiniz.</p></div>
       </div>
       </li>
       <li class="list-group-item timeline-inverted">
           <div class="timeline-image"><img class="rounded-circle img-fluid" src="assets/img/about/2.jpg" style="width: 140px; height: 140px" /> </div>
           <div class="timeline-panel">
         <div class="timeline-heading">
                <h4>Mart 2011</h4>
              <h4 class="subheading">Ajansımızın Doğuşu</h4>
        </div>
      <div class="timeline-body">
       <p class="text-muted">Chai, sadece yüksek bütçeli firmalara hizmet vermez. Bizim için öncelikli amaç bizden destek alan kişilerin kazançlarını artırmasıdır. Düşük bütçelerle çalışmaya başlayıp, işletme kazancınızı yükseltebilirsiniz. Müşterilerimizin, kazançlarını artırmak asıl hedefimizdir. Daha sonra nasıl olsa bizle yolunuza devam edersiniz.</p>
             </div>
             </div>
             </li>
      <li class="list-group-item">
           <div class="timeline-image"><img class="rounded-circle img-fluid" src="assets/img/about/4.jpg" style="width: 140px; height: 140px" /> </div>
           <div class="timeline-panel">
             <div class="timeline-heading">
                     <h4>Temmuz 2012</h4>
                     <h4 class="subheading">Full Çalışma Sistemine Geçiş</h4>
        </div>
           <div class="timeline-body">
                   <p class="text-muted">Temmuz 2012 de kendi ofisimizi açıp ilk çalışanımızı işe aldık. Bu şekilde düzenli sistematik çalışmaya ilk adımımızı atmış bulunduk.</p>
             </div>
             </div>
          </li>
            <li class="list-group-item timeline-inverted">
           <div class="timeline-image"><img class="rounded-circle img-fluid" src="assets/img/about/3.jpg" style="width: 140px; height: 140px" /></div>
            <div class="timeline-panel">
             <div class="timeline-heading">
                        <h4>Haziran 2014</h4>
                        <h4 class="subheading">Uzmanlığa geçiş</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Yurt dışında eğitimler alıp kadromuzu uzman seviyeye taşımak için gerekli çalışmaları yaptık. ISO-9001 sertifikamızı aldık.</p>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item timeline-inverted">
                            <div class="timeline-image" >
                                
                                <h4>dünden bugüne hikayemiz!</h4>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="bg-light" id="team">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/1.jpg">
                        <h4>DENİZ ÇAKIR </h4>
                        <p class="text-muted">Proje Yöneticisi</p>
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item"><a href="https://www.twitter.com"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href=" https://www.instagram.com"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/2.jpg">
                        <h4>BURAK YILDIZ </h4>
                        <p class="text-muted">Pazarlama Uzmanı</p>
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item"><a href="https://www.twitter.com"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.instagram.com"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/3.jpg">
                        <h4>SILA AKAGÜNDÜZ </h4>
                        <p class="text-muted">Geliştirme Takım Lideri</p>
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item"><a href="https://www.twitter.com"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.instagram.com"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/agency.js"></script>', 1, 0, 2)
GO
INSERT [dbo].[sayfalar] ([sayfa_id], [sayfa_basligi], [sayfa_icerigi], [aktif], [silindi], [sira]) VALUES (3, N'HİZMETLER', N'  <section class="bg-light" id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="text-uppercase section-heading">HİZMETLERİMİZ</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-4 portfolio-item"><a class="portfolio-link" href="#portfolioModal1" data-bs-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/1-thumbnail.jpg">
                    </a>
                    <div class="portfolio-caption">
                        <h4>E-Ticaret Optimizasyonu</h4>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 portfolio-item"><a class="portfolio-link" href="#portfolioModal2" data-bs-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/2-thumbnail.jpg">
                    </a>
                    <div class="portfolio-caption">
                        <h4>UI/UX Design Keşif Çalışması</h4>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 portfolio-item"><a class="portfolio-link" href="#portfolioModal3" data-bs-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/3-thumbnail.jpg">
                    </a>
                    <div class="portfolio-caption">
                        <h4>İş Planlama</h4>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 portfolio-item"><a class="portfolio-link" href="#portfolioModal4" data-bs-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/4-thumbnail.jpg">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Ürün Geliştirme </h4>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 portfolio-item"><a class="portfolio-link" href="#portfolioModal5" data-bs-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/5-thumbnail.jpg">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Proje Kapsam Analizi</h4>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 portfolio-item"><a class="portfolio-link" href="#portfolioModal6" data-bs-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/6-thumbnail.jpg">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Görsel Pazarlama </h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="modal fade text-center portfolio-modal" role="dialog" tabindex="-1" id="portfolioModal1">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <h2 class="text-uppercase">E-TİCARET OPTİMİZASYONU</h2>
                                <p class="text-muted item-intro"> E-Ticaret Optimizasyonu Nedir? </p><img class="img-fluid d-block mx-auto" src="assets/img/portfolio/1-full.jpg">
                                <p>E-ticaret optimizasyonu web sitenizi iyileştirmek ve ziyaretçileri müşterilere çevirebilmek için gerekli bir düzenlemedir. Tasarımın, içeriğin, ürün açıklamasının vb. birçok etmenin kullanıcıları ürünü ya da sunduğunuz hizmeti satın almaya teşvik edici şekilde optimize edilmesini içerir. Uzun yıllardır elde ettiğimiz SEO ve web tasarımı tecrübesi ile sitenizdeki müşteri deneyimini ve genel iyileştirme çalışmalarını devam ettiriyoruz.</p>
                                <h6 class="text-uppercase">Kişiye Özel Tasarlanmış E-ticaret Sitesine Sahip Olmanın Yararları</h6>
                                <li> Hedef kitleniz ve mevcut pazarınızda rakipleriniz arasından sıyrılmanın en iyi yollarından biri size özel olarak tasarlanmış bir web sitesine sahip olmaktır. Orijinal bir web sitesiyle ziyaretçiler üzerinde uzun vadeli bir etki bırakmış olur ve markanıza dair merak uyandırırsınız.</li>
                                <li> Kişiselleştirilmiş bir web sitesi çevrimiçi varlığınızın görünümünü ve tasarımını istediğiniz gibi şekillendirmenize olanak tanır. Sürecin başından sonuna kadar, online mağazanızın kontrolü elinizde olur.</li
                            </div>
                            <br>
                            <h6 class="text-uppercase"> Neden Kişiye Özel Web Sitesi Tasarımında Uzmanlaşmış Bir Firmayla Çalışmalısınız?</h6>
                                <li> Profesyonel web tasarımcılarımız ve geliştiricilerimiz mobil uyumlu ve etkileşim dostu bir web sitesi tasarlayarak mobil ve tablet kullanıcılarına da hitap etmenizi sağlar. </li>
                                <li> En güncel, yaratıcı ve eşsiz tasarımlara sahip olmanız ve bulunduğunuz rekabet ortamında akılda kalıcı olmanız için uğraşırız. </li>
                        </div>
                        <br>
                        <p> E-ticaret ortamında yeni veya spesifik bir alanda varlığınızı sürdürüyor olsanız bile neden size özel bir e-ticaret sitesine sahip olmanız gerektiğini kavramanız bizim için önemli. Sunduğunuz hizmet ve ürünlerinizde ulaştığınız maksimum verime ve artan rakamlarla markanızı izleyen bir kitleye sahip olmanın tadını çıkarın!</p>
                                <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp;Sayfayı Kapat</span></button>

                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade text-center portfolio-modal" role="dialog" tabindex="-1" id="portfolioModal2">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <h2 class="text-uppercase">UI/UX DESIGN KEŞİF ÇALIŞMASI </h2>
                                <p class="text-muted item-intro">UI/UX Design Nedir? </p><img class="img-fluid d-block mx-auto" src="assets/img/portfolio/2-full.jpg">
                                <p>UX ve UI tasarım, hem telaffuz olarak birbirine benzer olmasından hem de benzer işlevlere sahip olmasından dolayı karıştırılan iki kavramdır. Dijital platformların kullanımının yaygınlaşmasıyla birlikte, UX ve UI tasarım da önemini ortaya koymuştur. </p>
                                <h6 class="text-uppercase"> UX Tasarım </h6>
                                <p>User experience, kullanıcıların, a’dan z’ye bir tasarımdaki tüm etkileşimini kapsar. Yani, kullanıcının etkileşim sürecinde yaşadığı iyi, kötü veya ilginç gelen tüm deneyimleriyle ilgilidir. Geniş bir kapsama sahip olan UX, kullanıcılara ilişkin birtakım testlerden aldığı verilerle şekillenebilir. Tasarımda yer alacak detayların, nerede, ne zaman ve nasıl yer alacağına ilişkin konularla, kullanıcı etkileşimini kurgular.</p>
                                <p>Bir web sitesinde, sıkılmadan ve keyif alarak vakit geçiriyor olmamız, UX tasarım sürecindeki, detayların sonucudur diyebiliriz. Hangi butonun, nerede olduğuna biraz dikkat edersek, arkasında yatan UX ve UI tasarım, ortaya çıkacaktır.</p>
                            </div>
                            <br>
                            <h6 class="text-uppercase"> UL Tasarım </h6>
                            <P>User Interface, tasarımdaki ara yüzlerle yani, dış tasarımıyla ilgilenir. Dış görünümle ilgili olan tüm tasarımlar, UI tasarım ile ilgilidir. Bu noktada UX ile karıştırabilirsiniz ama ince bir fark vardır. UX, kullanıcı deneyiminden yola çıkarak tasarım ile kullanıcının etkileşimiyle ilgilenir. UI, kullanıcı etkileşiminden çok, tasarımın göze hitap etmesiyle ilgilenir. Başka bir ifadeyle UX, algılarımızla ilgiliyken, UI gözlerimizle ilgilidir.</P>
                            <p> UX, aslında UI tasarımını da kapsamaktadır diyebiliriz. Arama motorunun veya hakkımızda kısmının nerede daha güzel gözükeceği ile ilgilenirken, UX tasarım için önemli olan kullanıcı etkileşimi ve deneyimi de düşünülmektedir. Dijital bir örnek yerine, hem kadınların hem de erkeklerin kullandığı bir çantayı düşünebiliriz. Çantanın eni, boyutu, şekli ve fermuarının görünüşü UI ile ilgilidir. Fermuarın nerede olduğunda daha çok kullanışlı olacağı, hangi renkte olduğunda daha çok tercih edileceği ise, UX ile ilgilidir.</p>

                                <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp;Sayfayı Kapat </span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade text-center portfolio-modal" role="dialog" tabindex="-1" id="portfolioModal3">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <h2 class="text-uppercase">iş planlama </h2>
                                <p class="text-muted item-intro">İş Planlama Nedir? </p><img class="img-fluid d-block mx-auto" src="assets/img/portfolio/3-full.jpg">
                                <p>İş planı; kurulumu planlanan işletmenin kurulması ya da mevcut işletmenin geliştirilmesi amacı ile hazırlanan bir rapordur. İş planı; işletmenin faaliyetinde bulunan ürün, hizmet ya da finansal kaynakların göz önünde bulundurulması ile hazırlanan, standart bir fizibilite çalışması olmayan bir rapordur.</p>
                                <h6 class="text-uppercase"> iyi bir iş planının içinde neler yer almalı? </h6>
                                  <P> Tüm tabloların ve içeriklerin üzerinde bu özet olacak. Yönetici özetinde açıkça talebinizi belirtmelisiniz. Dikkatin en yüksek olduğu bu bölümde etkileyici ve sade bir biçimde talebinizi iletebilirsiniz.</P>
                                <P> Bu bölüme içinde bulunduğunuz sektörün kısa bir özeti ile başlayabilirsiniz. Mevcut durum ve gelecekteki imkanları incelediğiniz bir girişten sonra bu sektördeki muhtelif pazarların kısa analizini yapabilirsiniz. Bu sektör ve pazarda nasıl bir ihtiyacı yakaladığınızı ve buradaki fırsatı net bir şekilde ifade etmelisiniz.</P>

                               <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp;Sayfayı Kapat </span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade text-center portfolio-modal" role="dialog" tabindex="-1" id="portfolioModal4">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <h2 class="text-uppercase">Ürün Geliştirme </h2>
                                <p class="text-muted item-intro">Ürün Geliştirme Nedir? </p><img class="img-fluid d-block mx-auto" src="assets/img/portfolio/4-full.jpg">
                                <p>Ürün geliştirme, firmaları, çeşitleri ve diğer bilgiler için bu makale hazırlanmıştır. Endüstriyel Ürün Geliştirme süreci, fikirden ticarileşmeye giden bir süreçtir. İçerisinde fikir detaylı araştırması, pazar araştırması, sermaye, teknik süreçler, pazarlama, pazarlama stratejileri, pazara çıkma gibi bir çok farklı disipline ait çalışmaların girdiği çok kapsamlı ve büyük bir süreçtir. Ür-Ge, geliştirme örnekleri, geliştirme süreci, eş zamanlı mühendislik, reaktif ve proaktif geliştirme ve ilgili alanlarda bilgilendirme amacı bulunmaktadır. Makale çalışmasında ürün geliştirme nedir, süreci, uzmanı, örnekleri, mühendisi, projeleri ve diğer bilgiler verilmiştir.</p>
                                <h6 class="text-uppercase"> Ürün Geliştirme Sürecinin İlk Aşaması Nedir? </h6>
                                <p>Mamul geliştirme sürecinin ilk aşaması nedir? sorusunun cevabı ürün fikrinin oluşturulmasıdır. Mamul fikri olaraktan tanımlanabilen bu aşamada fikrin ortaya çıkmasında bir yerde ürünün görülmesi, bir problemin çözüm yolunun bulunması, yeni bir teknolojiden esinlenerek veya firmalar için müşterilerinden gelen talepler yeni mamul fikri olabilir. Bu fikrin alınıp detaylı olarak incelenmesi ve araştırılması, literatürle desteklenmesi ve mevcut teknoloji düzeyinin iyi analiz edilmesi gerekmektedir.</p>
                            </div>
                            <br>
                            <h6 class="text-uppercase">  Yeni Ürün Geliştirme Süreci ve Stratejileri </h6>
                            <p>Ürün geliştirme süreci fikir tarama ve değerlendirme ile başlar, fikrin detaylı incelenmesi, geliştirme, test ve ticarileşme olarak devam eder. Geliştirme ve test işlemleri daha çok mühendislik alanı ile ilgili teknik çalışmaları ifade eder. Yani kavramsal tasarım, 3b modelleme, analitik ve nümerik hesaplamalar, tasarım revizyonu, prototip üretimi, gerçek çalıma ortamlarında test ve revizyon, nihai prototip üretimidir. Nihai prototip üretimi sonrası ise seri üretim için hazırlık ve alt yapı kurulum, sonrasında ticarileşme, yani pazara çıkıştır.</p>
                                <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp; Safayı Kapat </span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade text-center portfolio-modal" role="dialog" tabindex="-1" id="portfolioModal5">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <h2 class="text-uppercase">Proje Kapsam Analizi </h2>
                                <p class="text-muted item-intro">Proje Kapsam Analizi Nedir? </p><img class="img-fluid d-block mx-auto" src="assets/img/portfolio/5-full.jpg">
                                <p>Proje kapsamına neyin dahil ve neyin dahil edilmediğini açıklamak. Sadece proje sonunda ortaya çıkacak ürün, hizmet veya sonucu değil tüm ara sonuçları da içeren proje teslimatlarını tanımı. Teslimatlar, dokümantasyon, yönetimi onayı, ara ürün vb. içerebilir.</p>
                                <h6 class="text-uppercase">Kapsam analizinin içerdiği konular aşağıdaki gibidir; </h6>
                                <li>Paydaş ihtiyaç, istek ve beklentileri ile belirlenmiş, önceliklendirilmiş gereksinimler.(Gereksinim Belgeleri)</li>
                                <li>Proje kapsamına neyin dahil ve neyin dahil edilmediğini açıklamak.</li>
                                <li>Sadece proje sonunda ortaya çıkacak ürün, hizmet veya sonucu değil tüm ara sonuçları da içeren proje teslimatlarını tanımı. Teslimatlar, dokümantasyon, yönetimi onayı, ara ürün vb. içerebilir. (Teslimat listesi)</li>
                                <li>Ürün, hizmet veya sonuç ile ilgili kapsam kabul kriterleri</li>

                            </div>
                            <br>
                               <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp;Sayfayı Kapat </span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade text-center portfolio-modal" role="dialog" tabindex="-1" id="portfolioModal6">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <h2 class="text-uppercase">Görsel Pazarlama </h2>
                                <p class="text-muted item-intro">Görsel Pazarlama Nedir? </p><img class="img-fluid d-block mx-auto" src="assets/img/portfolio/6-full.jpg">
                                <p> Görsel pazarlama, izleyiciler için daha etkili reklamlar yapmak amacıyla bir şirket veya marka hakkında belirli bir şeyi iletmek için görsel öğeler, resimler veya videolar kullanan bir stratejidir. Görsel pazarlama olarak da adlandırılır.</p>
                                <h6 class="text-uppercase"> Görsel pazarlamanın kökenleri </h6>
                                <P>Görsel pazarlamanın kökeni 60''lı yıllara, Susan Sontag tarafından yazılan Notes on Camp, nesnenin aslında ilginç olmadığını, onu gözlemleyenlerin gözünde temsili ve sembolizminin doğruladığı zamana kadar uzanır.</P>
                            </div>
                            <BR>
                            <h6 class="text-uppercase"> Görsel pazarlamanın unsurları </h6>
                        </div>
                        <br>
                           <li>Videolar: Kullanıcıyı daha fazla etkilemek için kullanılırlar</li>
                            <li>Görüntüler: Diğerlerinin yanı sıra bir gönderi, tanıtım reklamı, etkinlik reklamı için görüntü olarak kullanılabilirler</li>
                            <li>Hareketli gif.webpler.</li>
                            <li>Sunumlar</li>
                            <li>Fotoğraflar</li>
                            <li>Grafikler</li>
                            <li>Bilgi Grafikleri</li>
                        </div>
                        <br>
                               <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp;Sayfayı Kapat </span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>', 1, 0, 3)
GO
INSERT [dbo].[sayfalar] ([sayfa_id], [sayfa_basligi], [sayfa_icerigi], [aktif], [silindi], [sira]) VALUES (4, N'İLETİŞİM', N'<header class="masthead" style="background-image:url(''assets/img/header-bg.jpg'');">
</header>
<section id="contact" style="background-image:url(''assets/img/map-image.png'');">
<div class="container">
<div class="row">
<div class="col-lg-12 text-center">
<h2 class="text-uppercase section-heading">İLETİŞİM</h2>
<h3 class="text-muted section-subheading">Hizmetlerimizle ilgileniyorsanız ya da sormak istedikleriniz varsa                         bize telefon, mail veya aşağıdaki iletişim formu yoluyla ulaşabilirsiniz.</h3>
</div>
</div>
<div class="row">
<div class="col-lg-12">
<form id="contactForm" name="contactForm" novalidate="novalidate">
    <div class="row">
    <div class="col-md-6">
    <div class="form-group mb-3"><input class="form-control" type="text" id="name" placeholder="Adınız *" required="" /></div>
    <div class="form-group mb-3"><input class="form-control" type="email" id="email" placeholder=" Email *" required="" /></div>
    <div class="form-group mb-3"><input class="form-control" type="tel" id="phone" placeholder="Telefon Numaranız *" required="" /></div>
    </div>
    <div class="col-md-6">
    <div class="form-group mb-3"><textarea class="form-control" id="message" placeholder="Mesajınız *" required=""></textarea></div>
    </div>
    <div class="w-100">&nbsp;</div>
    <div class="col-lg-12 text-center">
    <div id="success">&nbsp;</div>
    <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="button">mesajı g&ouml;nder</button></div>
    </div>
</form>
</div>
</div>
</div>
</section>     <footer>
<div class="container">
<div class="row">
<div class="col-md-4"><span class="copyright">Copyright&nbsp;&copy; Chai Dijital Pazarlama 2022</span></div>
<div class="col-md-4">
<ul class="list-inline social-buttons">
    <li class="list-inline-item">&nbsp;</li>
    <li class="list-inline-item">&nbsp;</li>
    <li class="list-inline-item">&nbsp;</li>
</ul>
</div>
<div class="col-md-4">
<ul class="list-inline quicklinks">
    <li class="list-inline-item"><a href="hakkimizda.html">Hakkımızda</a></li>
    <li class="list-inline-item"><a href="anasayfa.html">Anasayfa<br />
    </a></li>
</ul>
</div>
</div>
</div>
</footer>     <script src="assets/bootstrap/js/bootstrap.min.js"></script>     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>', 1, 0, 4)
GO
SET IDENTITY_INSERT [dbo].[sayfalar] OFF
GO
USE [master]
GO
ALTER DATABASE [chaipazarlamaDB] SET  READ_WRITE 
GO
