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
INSERT [dbo].[kullanicilar] ([kullanici_id], [kullanici_adi], [kullanici_eposta], [kullanici_adi_soyadi], [aktif], [silindi], [yoneticimi], [parola]) VALUES (2, N'rabia', N'veli@posta.com', N'rabia sand??k????', 1, 0, 1, N'fcea920f7412b5da7be0cf42b8c93759')
GO
INSERT [dbo].[kullanicilar] ([kullanici_id], [kullanici_adi], [kullanici_eposta], [kullanici_adi_soyadi], [aktif], [silindi], [yoneticimi], [parola]) VALUES (3, N'derya', N'derya@posta.com', N'derya deniz', 1, 0, 0, N'e10adc3949ba59abbe56e057f20f883e')
GO
INSERT [dbo].[kullanicilar] ([kullanici_id], [kullanici_adi], [kullanici_eposta], [kullanici_adi_soyadi], [aktif], [silindi], [yoneticimi], [parola]) VALUES (4, N'fatma', N'fatma@posta.com', N'fatma ko??', 1, 0, 0, N'e10adc3949ba59abbe56e057f20f883e')
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
                <div class="intro-heading text-uppercase"><span>HO?? GELD??N??Z</span></div><a class="btn btn-primary btn-xl text-uppercase" role="button" href="#services"> ??? DAHA FAZLA B??LG?? ED??N??N ??? </a>
            </div>
        </div>
    </header>
    <div style="background-color:white"> 
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="text-uppercase section-heading">SERV??SLER??M??Z</h2>
                    <h3 class="text-muted section-subheading">Sizin ????in Neler Yapabiliriz ?</h3>
                </div>
            </div>
            </div>
        </section>
            <div class="row text-center">
                <div class="col-md-4" style="border-style:solid;border-width: 10px;border-color: white;background-color: #343a38;"> <span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i></span>
                    <h4 class="section-heading" style="color:white !important;">E-Ticaret</h4>
                    <p class="text-muted" style="color:white !important;text-align: center;">&nbsp; &nbsp; Geli??mi?? SEO analiz ara??lar??m??z ile e-ticaret sitenizi ba??tan a??a???? analiz eder sitenize bir puan verip puan?? geli??tirmek ??zere ??al????ma metodolojimizi belirler birlikte ??al????maya ba??lar??z.</p>
                </div>
                <div class="col-md-4" style="border-style:solid;border-width: 10px;border-color: white;background-color: #343a38;"> <span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-laptop fa-stack-1x fa-inverse"></i></span>
                    <h4 class="section-heading" style="color:white !important;">Responsive Tasar??m</h4>
                    <p class="text-muted"style="color:white !important;text-align: center;">&nbsp; &nbsp; Bizden sat??n ald??????n??z tasar??mlar??n tamam??n?? responsive olarak tasarlar istedi??iniz ??ekilde de????iklik yap??p, d??zenleyerek kullan??ma haz??r hale getiririz.</p>
                </div>
                <div class="col-md-4" style="border-style:solid;border-width: 10px;border-color: white;background-color: #343a38;"> <span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-lock fa-stack-1x fa-inverse"></i></span>
                    <h4 class="section-heading" style="color:white !important;">Web G??venli??i</h4>
                    <p class="text-muted" style="color:white !important;text-align: center;">&nbsp; &nbsp; Sitenizin g??venlik durumu ba??tan a??a???? g??venlik ara??lar??m??z ve beyaz ??apkal?? hackerlar??m??z ile test edilip bulunan a????klar taraf??n??za raporlan??r ve ????z??m y??ntemleri sunulur.</p>
                </div>
            </div>
        </div>
   

    <script src="assets/bootstrap/js/bootstrap.min.js"></script>', 1, 0, 1)
GO
INSERT [dbo].[sayfalar] ([sayfa_id], [sayfa_basligi], [sayfa_icerigi], [aktif], [silindi], [sira]) VALUES (2, N'HAKKIMIZDA', N' <section id="about" style="padding: 75px;">
   <div class="container">
   <div class="row">
    <div class="col-lg-12 text-center">
    <h2 class="text-uppercase section-heading">Hakk??m??zda</h2>
     <h3 class="text-muted section-subheading">Bizi tan??mak i??in a??a????daki workflowumuzu okuyun.</h3>
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
                 <h4 class="subheading">Ba??lang????lar??m??z</h4>
    </div>
       <div class="timeline-body"><p class="text-muted">Chai, uzman kadrosu ile markan??z?? internet ortam??nda tan??n??r hale getirir. Chai, Web siteniz i??in SEO ??al????mas?? yapabilir, sosyal medya reklamlar??n??z?? y??netebilir, tan??t??m videolar??n??z?? haz??rlayabilir ve Pazarlama (Marketing) b??l??m??n??z?? y??netebiliriz.T??m bu hizmetler i??in detayl?? PDF raporlama ve ONLINE site analizi takip servislerimiz bulunmaktad??r. Web sitenizi veya internet ma??azan??z??n ilermelesini, anl??k olarak y??netim panelinizden y??netebilirsiniz.</p></div>
       </div>
       </li>
       <li class="list-group-item timeline-inverted">
           <div class="timeline-image"><img class="rounded-circle img-fluid" src="assets/img/about/2.jpg" style="width: 140px; height: 140px" /> </div>
           <div class="timeline-panel">
         <div class="timeline-heading">
                <h4>Mart 2011</h4>
              <h4 class="subheading">Ajans??m??z??n Do??u??u</h4>
        </div>
      <div class="timeline-body">
       <p class="text-muted">Chai, sadece y??ksek b??t??eli firmalara hizmet vermez. Bizim i??in ??ncelikli ama?? bizden destek alan ki??ilerin kazan??lar??n?? art??rmas??d??r. D??????k b??t??elerle ??al????maya ba??lay??p, i??letme kazanc??n??z?? y??kseltebilirsiniz. M????terilerimizin, kazan??lar??n?? art??rmak as??l hedefimizdir. Daha sonra nas??l olsa bizle yolunuza devam edersiniz.</p>
             </div>
             </div>
             </li>
      <li class="list-group-item">
           <div class="timeline-image"><img class="rounded-circle img-fluid" src="assets/img/about/4.jpg" style="width: 140px; height: 140px" /> </div>
           <div class="timeline-panel">
             <div class="timeline-heading">
                     <h4>Temmuz 2012</h4>
                     <h4 class="subheading">Full ??al????ma Sistemine Ge??i??</h4>
        </div>
           <div class="timeline-body">
                   <p class="text-muted">Temmuz 2012 de kendi ofisimizi a????p ilk ??al????an??m??z?? i??e ald??k. Bu ??ekilde d??zenli sistematik ??al????maya ilk ad??m??m??z?? atm???? bulunduk.</p>
             </div>
             </div>
          </li>
            <li class="list-group-item timeline-inverted">
           <div class="timeline-image"><img class="rounded-circle img-fluid" src="assets/img/about/3.jpg" style="width: 140px; height: 140px" /></div>
            <div class="timeline-panel">
             <div class="timeline-heading">
                        <h4>Haziran 2014</h4>
                        <h4 class="subheading">Uzmanl????a ge??i??</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Yurt d??????nda e??itimler al??p kadromuzu uzman seviyeye ta????mak i??in gerekli ??al????malar?? yapt??k. ISO-9001 sertifikam??z?? ald??k.</p>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item timeline-inverted">
                            <div class="timeline-image" >
                                
                                <h4>d??nden bug??ne hikayemiz!</h4>
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
                        <h4>DEN??Z ??AKIR </h4>
                        <p class="text-muted">Proje Y??neticisi</p>
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
                        <p class="text-muted">Pazarlama Uzman??</p>
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item"><a href="https://www.twitter.com"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.instagram.com"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/3.jpg">
                        <h4>SILA AKAG??ND??Z </h4>
                        <p class="text-muted">Geli??tirme Tak??m Lideri</p>
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
INSERT [dbo].[sayfalar] ([sayfa_id], [sayfa_basligi], [sayfa_icerigi], [aktif], [silindi], [sira]) VALUES (3, N'H??ZMETLER', N'  <section class="bg-light" id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="text-uppercase section-heading">H??ZMETLER??M??Z</h2>
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
                        <h4>UI/UX Design Ke??if ??al????mas??</h4>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 portfolio-item"><a class="portfolio-link" href="#portfolioModal3" data-bs-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/3-thumbnail.jpg">
                    </a>
                    <div class="portfolio-caption">
                        <h4>???? Planlama</h4>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 portfolio-item"><a class="portfolio-link" href="#portfolioModal4" data-bs-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/4-thumbnail.jpg">
                    </a>
                    <div class="portfolio-caption">
                        <h4>??r??n Geli??tirme </h4>
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
                        <h4>G??rsel Pazarlama </h4>
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
                                <h2 class="text-uppercase">E-T??CARET OPT??M??ZASYONU</h2>
                                <p class="text-muted item-intro"> E-Ticaret Optimizasyonu Nedir? </p><img class="img-fluid d-block mx-auto" src="assets/img/portfolio/1-full.jpg">
                                <p>E-ticaret optimizasyonu web sitenizi iyile??tirmek ve ziyaret??ileri m????terilere ??evirebilmek i??in gerekli bir d??zenlemedir. Tasar??m??n, i??eri??in, ??r??n a????klamas??n??n vb. bir??ok etmenin kullan??c??lar?? ??r??n?? ya da sundu??unuz hizmeti sat??n almaya te??vik edici ??ekilde optimize edilmesini i??erir. Uzun y??llard??r elde etti??imiz SEO ve web tasar??m?? tecr??besi ile sitenizdeki m????teri deneyimini ve genel iyile??tirme ??al????malar??n?? devam ettiriyoruz.</p>
                                <h6 class="text-uppercase">Ki??iye ??zel Tasarlanm???? E-ticaret Sitesine Sahip Olman??n Yararlar??</h6>
                                <li> Hedef kitleniz ve mevcut pazar??n??zda rakipleriniz aras??ndan s??yr??lman??n en iyi yollar??ndan biri size ??zel olarak tasarlanm???? bir web sitesine sahip olmakt??r. Orijinal bir web sitesiyle ziyaret??iler ??zerinde uzun vadeli bir etki b??rakm???? olur ve markan??za dair merak uyand??r??rs??n??z.</li>
                                <li> Ki??iselle??tirilmi?? bir web sitesi ??evrimi??i varl??????n??z??n g??r??n??m??n?? ve tasar??m??n?? istedi??iniz gibi ??ekillendirmenize olanak tan??r. S??recin ba????ndan sonuna kadar, online ma??azan??z??n kontrol?? elinizde olur.</li
                            </div>
                            <br>
                            <h6 class="text-uppercase"> Neden Ki??iye ??zel Web Sitesi Tasar??m??nda Uzmanla??m???? Bir Firmayla ??al????mal??s??n??z?</h6>
                                <li> Profesyonel web tasar??mc??lar??m??z ve geli??tiricilerimiz mobil uyumlu ve etkile??im dostu bir web sitesi tasarlayarak mobil ve tablet kullan??c??lar??na da hitap etmenizi sa??lar. </li>
                                <li> En g??ncel, yarat??c?? ve e??siz tasar??mlara sahip olman??z ve bulundu??unuz rekabet ortam??nda ak??lda kal??c?? olman??z i??in u??ra????r??z. </li>
                        </div>
                        <br>
                        <p> E-ticaret ortam??nda yeni veya spesifik bir alanda varl??????n??z?? s??rd??r??yor olsan??z bile neden size ??zel bir e-ticaret sitesine sahip olman??z gerekti??ini kavraman??z bizim i??in ??nemli. Sundu??unuz hizmet ve ??r??nlerinizde ula??t??????n??z maksimum verime ve artan rakamlarla markan??z?? izleyen bir kitleye sahip olman??n tad??n?? ????kar??n!</p>
                                <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp;Sayfay?? Kapat</span></button>

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
                                <h2 class="text-uppercase">UI/UX DESIGN KE????F ??ALI??MASI </h2>
                                <p class="text-muted item-intro">UI/UX Design Nedir? </p><img class="img-fluid d-block mx-auto" src="assets/img/portfolio/2-full.jpg">
                                <p>UX ve UI tasar??m, hem telaffuz olarak birbirine benzer olmas??ndan hem de benzer i??levlere sahip olmas??ndan dolay?? kar????t??r??lan iki kavramd??r. Dijital platformlar??n kullan??m??n??n yayg??nla??mas??yla birlikte, UX ve UI tasar??m da ??nemini ortaya koymu??tur. </p>
                                <h6 class="text-uppercase"> UX Tasar??m </h6>
                                <p>User experience, kullan??c??lar??n, a???dan z???ye bir tasar??mdaki t??m etkile??imini kapsar. Yani, kullan??c??n??n etkile??im s??recinde ya??ad?????? iyi, k??t?? veya ilgin?? gelen t??m deneyimleriyle ilgilidir. Geni?? bir kapsama sahip olan UX, kullan??c??lara ili??kin birtak??m testlerden ald?????? verilerle ??ekillenebilir. Tasar??mda yer alacak detaylar??n, nerede, ne zaman ve nas??l yer alaca????na ili??kin konularla, kullan??c?? etkile??imini kurgular.</p>
                                <p>Bir web sitesinde, s??k??lmadan ve keyif alarak vakit ge??iriyor olmam??z, UX tasar??m s??recindeki, detaylar??n sonucudur diyebiliriz. Hangi butonun, nerede oldu??una biraz dikkat edersek, arkas??nda yatan UX ve UI tasar??m, ortaya ????kacakt??r.</p>
                            </div>
                            <br>
                            <h6 class="text-uppercase"> UL Tasar??m </h6>
                            <P>User Interface, tasar??mdaki ara y??zlerle yani, d???? tasar??m??yla ilgilenir. D???? g??r??n??mle ilgili olan t??m tasar??mlar, UI tasar??m ile ilgilidir. Bu noktada UX ile kar????t??rabilirsiniz ama ince bir fark vard??r. UX, kullan??c?? deneyiminden yola ????karak tasar??m ile kullan??c??n??n etkile??imiyle ilgilenir. UI, kullan??c?? etkile??iminden ??ok, tasar??m??n g??ze hitap etmesiyle ilgilenir. Ba??ka bir ifadeyle UX, alg??lar??m??zla ilgiliyken, UI g??zlerimizle ilgilidir.</P>
                            <p> UX, asl??nda UI tasar??m??n?? da kapsamaktad??r diyebiliriz. Arama motorunun veya hakk??m??zda k??sm??n??n nerede daha g??zel g??z??kece??i ile ilgilenirken, UX tasar??m i??in ??nemli olan kullan??c?? etkile??imi ve deneyimi de d??????n??lmektedir. Dijital bir ??rnek yerine, hem kad??nlar??n hem de erkeklerin kulland?????? bir ??antay?? d??????nebiliriz. ??antan??n eni, boyutu, ??ekli ve fermuar??n??n g??r??n?????? UI ile ilgilidir. Fermuar??n nerede oldu??unda daha ??ok kullan????l?? olaca????, hangi renkte oldu??unda daha ??ok tercih edilece??i ise, UX ile ilgilidir.</p>

                                <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp;Sayfay?? Kapat </span></button>
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
                                <h2 class="text-uppercase">i?? planlama </h2>
                                <p class="text-muted item-intro">???? Planlama Nedir? </p><img class="img-fluid d-block mx-auto" src="assets/img/portfolio/3-full.jpg">
                                <p>???? plan??; kurulumu planlanan i??letmenin kurulmas?? ya da mevcut i??letmenin geli??tirilmesi amac?? ile haz??rlanan bir rapordur. ???? plan??; i??letmenin faaliyetinde bulunan ??r??n, hizmet ya da finansal kaynaklar??n g??z ??n??nde bulundurulmas?? ile haz??rlanan, standart bir fizibilite ??al????mas?? olmayan bir rapordur.</p>
                                <h6 class="text-uppercase"> iyi bir i?? plan??n??n i??inde neler yer almal??? </h6>
                                  <P> T??m tablolar??n ve i??eriklerin ??zerinde bu ??zet olacak. Y??netici ??zetinde a????k??a talebinizi belirtmelisiniz. Dikkatin en y??ksek oldu??u bu b??l??mde etkileyici ve sade bir bi??imde talebinizi iletebilirsiniz.</P>
                                <P> Bu b??l??me i??inde bulundu??unuz sekt??r??n k??sa bir ??zeti ile ba??layabilirsiniz. Mevcut durum ve gelecekteki imkanlar?? inceledi??iniz bir giri??ten sonra bu sekt??rdeki muhtelif pazarlar??n k??sa analizini yapabilirsiniz. Bu sekt??r ve pazarda nas??l bir ihtiyac?? yakalad??????n??z?? ve buradaki f??rsat?? net bir ??ekilde ifade etmelisiniz.</P>

                               <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp;Sayfay?? Kapat </span></button>
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
                                <h2 class="text-uppercase">??r??n Geli??tirme </h2>
                                <p class="text-muted item-intro">??r??n Geli??tirme Nedir? </p><img class="img-fluid d-block mx-auto" src="assets/img/portfolio/4-full.jpg">
                                <p>??r??n geli??tirme, firmalar??, ??e??itleri ve di??er bilgiler i??in bu makale haz??rlanm????t??r. End??striyel ??r??n Geli??tirme s??reci, fikirden ticarile??meye giden bir s??re??tir. ????erisinde fikir detayl?? ara??t??rmas??, pazar ara??t??rmas??, sermaye, teknik s??re??ler, pazarlama, pazarlama stratejileri, pazara ????kma gibi bir ??ok farkl?? disipline ait ??al????malar??n girdi??i ??ok kapsaml?? ve b??y??k bir s??re??tir. ??r-Ge, geli??tirme ??rnekleri, geli??tirme s??reci, e?? zamanl?? m??hendislik, reaktif ve proaktif geli??tirme ve ilgili alanlarda bilgilendirme amac?? bulunmaktad??r. Makale ??al????mas??nda ??r??n geli??tirme nedir, s??reci, uzman??, ??rnekleri, m??hendisi, projeleri ve di??er bilgiler verilmi??tir.</p>
                                <h6 class="text-uppercase"> ??r??n Geli??tirme S??recinin ??lk A??amas?? Nedir? </h6>
                                <p>Mamul geli??tirme s??recinin ilk a??amas?? nedir? sorusunun cevab?? ??r??n fikrinin olu??turulmas??d??r. Mamul fikri olaraktan tan??mlanabilen bu a??amada fikrin ortaya ????kmas??nda bir yerde ??r??n??n g??r??lmesi, bir problemin ????z??m yolunun bulunmas??, yeni bir teknolojiden esinlenerek veya firmalar i??in m????terilerinden gelen talepler yeni mamul fikri olabilir. Bu fikrin al??n??p detayl?? olarak incelenmesi ve ara??t??r??lmas??, literat??rle desteklenmesi ve mevcut teknoloji d??zeyinin iyi analiz edilmesi gerekmektedir.</p>
                            </div>
                            <br>
                            <h6 class="text-uppercase">  Yeni ??r??n Geli??tirme S??reci ve Stratejileri </h6>
                            <p>??r??n geli??tirme s??reci fikir tarama ve de??erlendirme ile ba??lar, fikrin detayl?? incelenmesi, geli??tirme, test ve ticarile??me olarak devam eder. Geli??tirme ve test i??lemleri daha ??ok m??hendislik alan?? ile ilgili teknik ??al????malar?? ifade eder. Yani kavramsal tasar??m, 3b modelleme, analitik ve n??merik hesaplamalar, tasar??m revizyonu, prototip ??retimi, ger??ek ??al??ma ortamlar??nda test ve revizyon, nihai prototip ??retimidir. Nihai prototip ??retimi sonras?? ise seri ??retim i??in haz??rl??k ve alt yap?? kurulum, sonras??nda ticarile??me, yani pazara ????k????t??r.</p>
                                <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp; Safay?? Kapat </span></button>
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
                                <p>Proje kapsam??na neyin dahil ve neyin dahil edilmedi??ini a????klamak. Sadece proje sonunda ortaya ????kacak ??r??n, hizmet veya sonucu de??il t??m ara sonu??lar?? da i??eren proje teslimatlar??n?? tan??m??. Teslimatlar, dok??mantasyon, y??netimi onay??, ara ??r??n vb. i??erebilir.</p>
                                <h6 class="text-uppercase">Kapsam analizinin i??erdi??i konular a??a????daki gibidir; </h6>
                                <li>Payda?? ihtiya??, istek ve beklentileri ile belirlenmi??, ??nceliklendirilmi?? gereksinimler.(Gereksinim Belgeleri)</li>
                                <li>Proje kapsam??na neyin dahil ve neyin dahil edilmedi??ini a????klamak.</li>
                                <li>Sadece proje sonunda ortaya ????kacak ??r??n, hizmet veya sonucu de??il t??m ara sonu??lar?? da i??eren proje teslimatlar??n?? tan??m??. Teslimatlar, dok??mantasyon, y??netimi onay??, ara ??r??n vb. i??erebilir. (Teslimat listesi)</li>
                                <li>??r??n, hizmet veya sonu?? ile ilgili kapsam kabul kriterleri</li>

                            </div>
                            <br>
                               <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp;Sayfay?? Kapat </span></button>
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
                                <h2 class="text-uppercase">G??rsel Pazarlama </h2>
                                <p class="text-muted item-intro">G??rsel Pazarlama Nedir? </p><img class="img-fluid d-block mx-auto" src="assets/img/portfolio/6-full.jpg">
                                <p> G??rsel pazarlama, izleyiciler i??in daha etkili reklamlar yapmak amac??yla bir ??irket veya marka hakk??nda belirli bir ??eyi iletmek i??in g??rsel ????eler, resimler veya videolar kullanan bir stratejidir. G??rsel pazarlama olarak da adland??r??l??r.</p>
                                <h6 class="text-uppercase"> G??rsel pazarlaman??n k??kenleri </h6>
                                <P>G??rsel pazarlaman??n k??keni 60''l?? y??llara, Susan Sontag taraf??ndan yaz??lan Notes on Camp, nesnenin asl??nda ilgin?? olmad??????n??, onu g??zlemleyenlerin g??z??nde temsili ve sembolizminin do??rulad?????? zamana kadar uzan??r.</P>
                            </div>
                            <BR>
                            <h6 class="text-uppercase"> G??rsel pazarlaman??n unsurlar?? </h6>
                        </div>
                        <br>
                           <li>Videolar: Kullan??c??y?? daha fazla etkilemek i??in kullan??l??rlar</li>
                            <li>G??r??nt??ler: Di??erlerinin yan?? s??ra bir g??nderi, tan??t??m reklam??, etkinlik reklam?? i??in g??r??nt?? olarak kullan??labilirler</li>
                            <li>Hareketli gif.webpler.</li>
                            <li>Sunumlar</li>
                            <li>Foto??raflar</li>
                            <li>Grafikler</li>
                            <li>Bilgi Grafikleri</li>
                        </div>
                        <br>
                               <button class="btn btn-primary" type="button" data-bs-dismiss="modal"><i class="fa fa-times"></i><span>&nbsp;Sayfay?? Kapat </span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>', 1, 0, 3)
GO
INSERT [dbo].[sayfalar] ([sayfa_id], [sayfa_basligi], [sayfa_icerigi], [aktif], [silindi], [sira]) VALUES (4, N'??LET??????M', N'<header class="masthead" style="background-image:url(''assets/img/header-bg.jpg'');">
</header>
<section id="contact" style="background-image:url(''assets/img/map-image.png'');">
<div class="container">
<div class="row">
<div class="col-lg-12 text-center">
<h2 class="text-uppercase section-heading">??LET??????M</h2>
<h3 class="text-muted section-subheading">Hizmetlerimizle ilgileniyorsan??z ya da sormak istedikleriniz varsa                         bize telefon, mail veya a??a????daki ileti??im formu yoluyla ula??abilirsiniz.</h3>
</div>
</div>
<div class="row">
<div class="col-lg-12">
<form id="contactForm" name="contactForm" novalidate="novalidate">
    <div class="row">
    <div class="col-md-6">
    <div class="form-group mb-3"><input class="form-control" type="text" id="name" placeholder="Ad??n??z *" required="" /></div>
    <div class="form-group mb-3"><input class="form-control" type="email" id="email" placeholder=" Email *" required="" /></div>
    <div class="form-group mb-3"><input class="form-control" type="tel" id="phone" placeholder="Telefon Numaran??z *" required="" /></div>
    </div>
    <div class="col-md-6">
    <div class="form-group mb-3"><textarea class="form-control" id="message" placeholder="Mesaj??n??z *" required=""></textarea></div>
    </div>
    <div class="w-100">&nbsp;</div>
    <div class="col-lg-12 text-center">
    <div id="success">&nbsp;</div>
    <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="button">mesaj?? g&ouml;nder</button></div>
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
    <li class="list-inline-item"><a href="hakkimizda.html">Hakk??m??zda</a></li>
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
