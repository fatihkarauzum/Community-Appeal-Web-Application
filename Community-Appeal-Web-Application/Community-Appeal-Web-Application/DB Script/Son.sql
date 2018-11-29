USE [ToplulukDB]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 30.11.2018 00:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[eMail] [nvarchar](100) NULL,
	[sifre] [nvarchar](100) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Basvuru]    Script Date: 30.11.2018 00:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basvuru](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[toplulukAdi] [nvarchar](150) NULL,
	[toplulukAmac] [nvarchar](500) NULL,
	[baskanAdi] [nvarchar](100) NULL,
	[baskanSoyadi] [nvarchar](100) NULL,
	[tarih] [date] NULL,
	[saat] [nvarchar](50) NULL,
	[mekan] [nvarchar](100) NULL,
	[toplantiNo] [int] NULL,
	[adimNo] [int] NULL,
	[uyeSayisi] [int] NULL,
	[akademikYıl] [nvarchar](50) NULL,
	[toplantiTarihi] [date] NULL,
	[marscı] [nvarchar](100) NULL,
	[divanBaskanAdi] [nvarchar](100) NULL,
	[divanBaskanSoyadi] [nvarchar](100) NULL,
	[toplantiNiteligi] [bit] NULL,
	[kurulusTarihi] [date] NULL,
	[tuzukDegisikligi] [bit] NULL,
	[kullanıcıID] [int] NULL,
	[yazmanAdi] [nvarchar](50) NULL,
	[yazmanSoyadi] [nvarchar](50) NULL,
	[gUyeSayisi] [int] NULL,
 CONSTRAINT [PK_Basvuru] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danisman]    Script Date: 30.11.2018 00:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danisman](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[unvan] [nvarchar](50) NULL,
	[akademikBirim] [nvarchar](150) NULL,
	[basvuruID] [int] NULL,
	[aktif] [bit] NULL,
 CONSTRAINT [PK_Danisman] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DenetimKurulu]    Script Date: 30.11.2018 00:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DenetimKurulu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[unvan] [nvarchar](50) NULL,
	[basvuruID] [int] NULL,
	[ogrNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_DenetimKurulu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaliyetPlani]    Script Date: 30.11.2018 00:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaliyetPlani](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[faliyetID] [int] NULL,
	[faliyetTürü] [nvarchar](100) NULL,
	[faliyetAmaci] [nvarchar](500) NULL,
	[tarih] [date] NULL,
	[saat] [nvarchar](50) NULL,
	[yerleske] [nvarchar](50) NULL,
 CONSTRAINT [PK_FaliyetPlani] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GDanisman]    Script Date: 30.11.2018 00:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDanisman](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[unvan] [nvarchar](50) NULL,
	[akademikBirim] [nvarchar](150) NULL,
	[GuncelleID] [int] NULL,
	[aktif] [bit] NULL,
 CONSTRAINT [PK_GDanisman] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GDenetimKurulu]    Script Date: 30.11.2018 00:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDenetimKurulu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[unvan] [nvarchar](50) NULL,
	[GuncelleID] [int] NULL,
	[ogrNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_GDenetimKurulu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GFaliyetPlani]    Script Date: 30.11.2018 00:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GFaliyetPlani](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[faliyetID] [int] NULL,
	[faliyetTürü] [nvarchar](100) NULL,
	[faliyetAmaci] [nvarchar](500) NULL,
	[tarih] [date] NULL,
	[saat] [nvarchar](50) NULL,
	[yerleske] [nvarchar](50) NULL,
 CONSTRAINT [PK_GFaliyetPlani] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GOgrenciListesi]    Script Date: 30.11.2018 00:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GOgrenciListesi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](100) NULL,
	[soyadi] [nvarchar](100) NULL,
	[fak] [nvarchar](200) NULL,
	[tc] [nvarchar](100) NULL,
	[ogrNo] [nvarchar](100) NULL,
	[tel] [nvarchar](100) NULL,
	[mail] [nvarchar](100) NULL,
	[GuncelleID] [int] NULL,
 CONSTRAINT [PK_GOgrenciListesi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guncelle]    Script Date: 30.11.2018 00:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guncelle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[toplulukAdi] [nvarchar](150) NULL,
	[toplulukAmac] [nvarchar](500) NULL,
	[baskanAdi] [nvarchar](100) NULL,
	[baskanSoyadi] [nvarchar](100) NULL,
	[tarih] [date] NULL,
	[saat] [nvarchar](50) NULL,
	[mekan] [nvarchar](100) NULL,
	[toplantiNo] [int] NULL,
	[adimNo] [int] NULL,
	[uyeSayisi] [int] NULL,
	[akademikYıl] [nvarchar](50) NULL,
	[toplantiTarihi] [date] NULL,
	[marscı] [nvarchar](100) NULL,
	[divanBaskanAdi] [nvarchar](100) NULL,
	[divanBaskanSoyadi] [nvarchar](100) NULL,
	[toplantiNiteligi] [bit] NULL,
	[kurulusTarihi] [date] NULL,
	[tuzukDegisikligi] [bit] NULL,
	[kullanıcıID] [int] NULL,
	[yazmanAdi] [nvarchar](50) NULL,
	[yazmanSoyadi] [nvarchar](50) NULL,
	[gUyeSayisi] [int] NULL,
 CONSTRAINT [PK_Guncelle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GYeniUye]    Script Date: 30.11.2018 00:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GYeniUye](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[GuncelleID] [int] NULL,
 CONSTRAINT [PK_GYeniUye] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GYonetimKurulu]    Script Date: 30.11.2018 00:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GYonetimKurulu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[unvan] [nvarchar](50) NULL,
	[bolum] [nvarchar](100) NULL,
	[adres] [nvarchar](500) NULL,
	[tc] [nvarchar](50) NULL,
	[fakulte] [nvarchar](100) NULL,
	[ogrNo] [nvarchar](50) NULL,
	[gsm] [nvarchar](50) NULL,
	[evTel] [nvarchar](50) NULL,
	[eMail] [nvarchar](100) NULL,
	[GuncelleID] [int] NULL,
 CONSTRAINT [PK_GYonetimKurulu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 30.11.2018 00:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](100) NULL,
	[soyadi] [nvarchar](100) NULL,
	[ogrMail] [nvarchar](100) NULL,
	[sifre] [nvarchar](100) NULL,
	[ogrNo] [nvarchar](100) NULL,
	[tc] [nvarchar](100) NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciListesi]    Script Date: 30.11.2018 00:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciListesi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](100) NULL,
	[soyadi] [nvarchar](100) NULL,
	[fak] [nvarchar](200) NULL,
	[tc] [nvarchar](100) NULL,
	[ogrNo] [nvarchar](100) NULL,
	[tel] [nvarchar](100) NULL,
	[mail] [nvarchar](100) NULL,
	[basvuruID] [int] NULL,
 CONSTRAINT [PK_ogrenciListesi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeniUye]    Script Date: 30.11.2018 00:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeniUye](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[basvuruID] [int] NULL,
 CONSTRAINT [PK_YeniUye] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YonetimKurulu]    Script Date: 30.11.2018 00:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YonetimKurulu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[unvan] [nvarchar](50) NULL,
	[bolum] [nvarchar](100) NULL,
	[adres] [nvarchar](500) NULL,
	[tc] [nvarchar](50) NULL,
	[fakulte] [nvarchar](100) NULL,
	[ogrNo] [nvarchar](50) NULL,
	[gsm] [nvarchar](50) NULL,
	[evTel] [nvarchar](50) NULL,
	[eMail] [nvarchar](100) NULL,
	[basvuruID] [int] NULL,
	[Baskan] [bit] NULL,
 CONSTRAINT [PK_YonetimKurulu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([ID], [adi], [soyadi], [eMail], [sifre]) VALUES (1, N'Hamza', N'TAŞ', N'hamza.tas@gmail.com', N'123')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Basvuru] ON 

INSERT [dbo].[Basvuru] ([ID], [toplulukAdi], [toplulukAmac], [baskanAdi], [baskanSoyadi], [tarih], [saat], [mekan], [toplantiNo], [adimNo], [uyeSayisi], [akademikYıl], [toplantiTarihi], [marscı], [divanBaskanAdi], [divanBaskanSoyadi], [toplantiNiteligi], [kurulusTarihi], [tuzukDegisikligi], [kullanıcıID], [yazmanAdi], [yazmanSoyadi], [gUyeSayisi]) VALUES (1, N'Kızılaya', N'KAN ALMAK', N'Fatih', N'Karaüzüm', NULL, N'1', N'asd', 1, 8, 22, N'2018 - 2019', CAST(N'2018-11-11' AS Date), N'Fatih Karaüzüm', N'Fatih', N'Karaüzüm', 1, CAST(N'2018-11-21' AS Date), 0, 1, N'e', N'e', 35)
INSERT [dbo].[Basvuru] ([ID], [toplulukAdi], [toplulukAmac], [baskanAdi], [baskanSoyadi], [tarih], [saat], [mekan], [toplantiNo], [adimNo], [uyeSayisi], [akademikYıl], [toplantiTarihi], [marscı], [divanBaskanAdi], [divanBaskanSoyadi], [toplantiNiteligi], [kurulusTarihi], [tuzukDegisikligi], [kullanıcıID], [yazmanAdi], [yazmanSoyadi], [gUyeSayisi]) VALUES (2, N'aaa', N'aaa', N'aaa', N'aaa', NULL, N'2', N'aaa', 2, 5, 32, N'2018 - 2019', CAST(N'2018-11-11' AS Date), NULL, NULL, NULL, NULL, CAST(N'2018-11-11' AS Date), NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[Basvuru] ([ID], [toplulukAdi], [toplulukAmac], [baskanAdi], [baskanSoyadi], [tarih], [saat], [mekan], [toplantiNo], [adimNo], [uyeSayisi], [akademikYıl], [toplantiTarihi], [marscı], [divanBaskanAdi], [divanBaskanSoyadi], [toplantiNiteligi], [kurulusTarihi], [tuzukDegisikligi], [kullanıcıID], [yazmanAdi], [yazmanSoyadi], [gUyeSayisi]) VALUES (3, N'Bilgisayar Mühendisleri', N'- İletişim becerilerini geliştirmek, - Paylaşmayı ve yardımlaşmayı öğretmek, yaşamlarına uygulamaya çalışmak - Zihinle beden hareketlerinin uyumlu çalışması özelliklerinin gelişmesine yardımcı olmak, - Spor kültürü ve ahlakı konusunda bilgi sahibi olmalarını sağlamak,', N'hamza', N'tas', NULL, NULL, NULL, NULL, 4, 35, N'2018 - 2019', CAST(N'2018-11-11' AS Date), N'Fatih Karaüzüm', N'fff', N'fff', NULL, CAST(N'2018-11-11' AS Date), NULL, 3, N'e', N'e', NULL)
INSERT [dbo].[Basvuru] ([ID], [toplulukAdi], [toplulukAmac], [baskanAdi], [baskanSoyadi], [tarih], [saat], [mekan], [toplantiNo], [adimNo], [uyeSayisi], [akademikYıl], [toplantiTarihi], [marscı], [divanBaskanAdi], [divanBaskanSoyadi], [toplantiNiteligi], [kurulusTarihi], [tuzukDegisikligi], [kullanıcıID], [yazmanAdi], [yazmanSoyadi], [gUyeSayisi]) VALUES (4, N'sdfsfdfdfdf', N'adsfsdfadfasdfsdf', NULL, NULL, CAST(N'2012-12-12' AS Date), N'05:00', N'Amfi', 3, 4, NULL, NULL, CAST(N'2018-01-18' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL)
INSERT [dbo].[Basvuru] ([ID], [toplulukAdi], [toplulukAmac], [baskanAdi], [baskanSoyadi], [tarih], [saat], [mekan], [toplantiNo], [adimNo], [uyeSayisi], [akademikYıl], [toplantiTarihi], [marscı], [divanBaskanAdi], [divanBaskanSoyadi], [toplantiNiteligi], [kurulusTarihi], [tuzukDegisikligi], [kullanıcıID], [yazmanAdi], [yazmanSoyadi], [gUyeSayisi]) VALUES (5, N'Makine Mühendisleri', N'- İletişim becerilerini geliştirmek,', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Basvuru] OFF
SET IDENTITY_INSERT [dbo].[Danisman] ON 

INSERT [dbo].[Danisman] ([ID], [adi], [soyadi], [unvan], [akademikBirim], [basvuruID], [aktif]) VALUES (1, N'Ben', N'Ben', N'Müdür', N'Düzce', 1, 0)
INSERT [dbo].[Danisman] ([ID], [adi], [soyadi], [unvan], [akademikBirim], [basvuruID], [aktif]) VALUES (2, N'Sen', N'Sen', N'Müdür Yar.', N'Sakarya', 1, 1)
INSERT [dbo].[Danisman] ([ID], [adi], [soyadi], [unvan], [akademikBirim], [basvuruID], [aktif]) VALUES (3, N'O', N'O', N'Sekreter', N'Geyve', 2, NULL)
SET IDENTITY_INSERT [dbo].[Danisman] OFF
SET IDENTITY_INSERT [dbo].[DenetimKurulu] ON 

INSERT [dbo].[DenetimKurulu] ([ID], [adi], [soyadi], [unvan], [basvuruID], [ogrNo]) VALUES (4, N'a', N'a', N'Üye', 1, N'1')
INSERT [dbo].[DenetimKurulu] ([ID], [adi], [soyadi], [unvan], [basvuruID], [ogrNo]) VALUES (5, N'b', N'b', N'Üye', 1, N'2')
INSERT [dbo].[DenetimKurulu] ([ID], [adi], [soyadi], [unvan], [basvuruID], [ogrNo]) VALUES (6, N'aaa', N'aaa', N'Denetim Kurulu Başkanı', 1, N'aaa')
SET IDENTITY_INSERT [dbo].[DenetimKurulu] OFF
SET IDENTITY_INSERT [dbo].[FaliyetPlani] ON 

INSERT [dbo].[FaliyetPlani] ([ID], [faliyetID], [faliyetTürü], [faliyetAmaci], [tarih], [saat], [yerleske]) VALUES (1, 3, N'dfdf', N'dfdf', CAST(N'2018-11-07' AS Date), NULL, N'dffdf')
SET IDENTITY_INSERT [dbo].[FaliyetPlani] OFF
SET IDENTITY_INSERT [dbo].[GDanisman] ON 

INSERT [dbo].[GDanisman] ([ID], [adi], [soyadi], [unvan], [akademikBirim], [GuncelleID], [aktif]) VALUES (5, N'hamza', N'taş', N'prof', N'Mühendislik Fakültesi', 2, 0)
INSERT [dbo].[GDanisman] ([ID], [adi], [soyadi], [unvan], [akademikBirim], [GuncelleID], [aktif]) VALUES (6, N'resul', N'kara', N'arş.gör', N'Mühendislik', 2, 1)
SET IDENTITY_INSERT [dbo].[GDanisman] OFF
SET IDENTITY_INSERT [dbo].[GFaliyetPlani] ON 

INSERT [dbo].[GFaliyetPlani] ([ID], [faliyetID], [faliyetTürü], [faliyetAmaci], [tarih], [saat], [yerleske]) VALUES (1, 2, N'fdsffdsg', N'dfgdfgdfgsdf', CAST(N'2018-11-10' AS Date), NULL, N'fdgsdfg')
INSERT [dbo].[GFaliyetPlani] ([ID], [faliyetID], [faliyetTürü], [faliyetAmaci], [tarih], [saat], [yerleske]) VALUES (2, 2, N'a', N'a', CAST(N'2018-11-17' AS Date), NULL, N'c')
INSERT [dbo].[GFaliyetPlani] ([ID], [faliyetID], [faliyetTürü], [faliyetAmaci], [tarih], [saat], [yerleske]) VALUES (3, 2, N'b', N'c', CAST(N'2018-11-20' AS Date), NULL, N'f')
INSERT [dbo].[GFaliyetPlani] ([ID], [faliyetID], [faliyetTürü], [faliyetAmaci], [tarih], [saat], [yerleske]) VALUES (4, 2, N'd', N'd', CAST(N'2018-11-20' AS Date), NULL, N'd')
INSERT [dbo].[GFaliyetPlani] ([ID], [faliyetID], [faliyetTürü], [faliyetAmaci], [tarih], [saat], [yerleske]) VALUES (6, 2, N'e', N'e', CAST(N'2018-11-10' AS Date), NULL, N'e')
SET IDENTITY_INSERT [dbo].[GFaliyetPlani] OFF
SET IDENTITY_INSERT [dbo].[GOgrenciListesi] ON 

INSERT [dbo].[GOgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [GuncelleID]) VALUES (1, N'Fatih', N'Karaüzüm', N'a', N'123', N'213312', N'1234', N'fatih47154@gmail.com', 1)
INSERT [dbo].[GOgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [GuncelleID]) VALUES (2, N'Hamza', N'Taş', N'Mühendislik Fakültesi', N'26285617580', N'151001020', N'05346682748', N'hamza51719@ogr.duzce.edu.tr', 2)
INSERT [dbo].[GOgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [GuncelleID]) VALUES (3, N'Burak', N'Taş', N'Mühendislik Fakültesi', N'26285617580', N'151001027', N'05346682748', N'hamzatas@gmail.com', 2)
INSERT [dbo].[GOgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [GuncelleID]) VALUES (4, N'Cumali', N'Cuma', N'Teknoloji Fakültesi', N'26285617580', N'151001041', N'05346682748', N'cumali@cuma.com', 3)
INSERT [dbo].[GOgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [GuncelleID]) VALUES (5, N'Burak', N'Taş', N'Mühendislik Fakültesi', N'26285617580', N'151001041', N'05346682748', N'burak@burak.com', 4)
SET IDENTITY_INSERT [dbo].[GOgrenciListesi] OFF
SET IDENTITY_INSERT [dbo].[Guncelle] ON 

INSERT [dbo].[Guncelle] ([ID], [toplulukAdi], [toplulukAmac], [baskanAdi], [baskanSoyadi], [tarih], [saat], [mekan], [toplantiNo], [adimNo], [uyeSayisi], [akademikYıl], [toplantiTarihi], [marscı], [divanBaskanAdi], [divanBaskanSoyadi], [toplantiNiteligi], [kurulusTarihi], [tuzukDegisikligi], [kullanıcıID], [yazmanAdi], [yazmanSoyadi], [gUyeSayisi]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Guncelle] ([ID], [toplulukAdi], [toplulukAmac], [baskanAdi], [baskanSoyadi], [tarih], [saat], [mekan], [toplantiNo], [adimNo], [uyeSayisi], [akademikYıl], [toplantiTarihi], [marscı], [divanBaskanAdi], [divanBaskanSoyadi], [toplantiNiteligi], [kurulusTarihi], [tuzukDegisikligi], [kullanıcıID], [yazmanAdi], [yazmanSoyadi], [gUyeSayisi]) VALUES (2, N'Makine Mühendisleri', NULL, N'hamza', N'taş', NULL, N'11:11', N'Amfi', 1, 6, NULL, NULL, CAST(N'2018-11-10' AS Date), NULL, NULL, NULL, NULL, CAST(N'2018-12-12' AS Date), NULL, 3, NULL, NULL, NULL)
INSERT [dbo].[Guncelle] ([ID], [toplulukAdi], [toplulukAmac], [baskanAdi], [baskanSoyadi], [tarih], [saat], [mekan], [toplantiNo], [adimNo], [uyeSayisi], [akademikYıl], [toplantiTarihi], [marscı], [divanBaskanAdi], [divanBaskanSoyadi], [toplantiNiteligi], [kurulusTarihi], [tuzukDegisikligi], [kullanıcıID], [yazmanAdi], [yazmanSoyadi], [gUyeSayisi]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL)
INSERT [dbo].[Guncelle] ([ID], [toplulukAdi], [toplulukAmac], [baskanAdi], [baskanSoyadi], [tarih], [saat], [mekan], [toplantiNo], [adimNo], [uyeSayisi], [akademikYıl], [toplantiTarihi], [marscı], [divanBaskanAdi], [divanBaskanSoyadi], [toplantiNiteligi], [kurulusTarihi], [tuzukDegisikligi], [kullanıcıID], [yazmanAdi], [yazmanSoyadi], [gUyeSayisi]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Guncelle] OFF
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([ID], [adi], [soyadi], [ogrMail], [sifre], [ogrNo], [tc]) VALUES (1, N'Fatih', N'Karaüzüm', N'fatih47154@gmail.com', N'1234', N'213312', N'123')
INSERT [dbo].[Kullanici] ([ID], [adi], [soyadi], [ogrMail], [sifre], [ogrNo], [tc]) VALUES (2, N'AAA', N'BBB', N'abc@gmail.com', N'123', N'123455', N'1234')
INSERT [dbo].[Kullanici] ([ID], [adi], [soyadi], [ogrMail], [sifre], [ogrNo], [tc]) VALUES (3, N'Hamza', N'Taş', N'hamza51719@ogr.duzce.edu.tr', N'123', N'151001020', N'26285617580')
INSERT [dbo].[Kullanici] ([ID], [adi], [soyadi], [ogrMail], [sifre], [ogrNo], [tc]) VALUES (4, N'Cumali', N'Cuma', N'cumali@cuma.com', N'123', N'151001041', N'26285617580')
INSERT [dbo].[Kullanici] ([ID], [adi], [soyadi], [ogrMail], [sifre], [ogrNo], [tc]) VALUES (5, N'Burak', N'Taş', N'burak@burak.com', N'123', N'151001041', N'26285617580')
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[OgrenciListesi] ON 

INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (1, N'Fatih', N'Karaüzüm', N'a', N'123', N'213312', N'1234', N'fatih47154@gmail.com', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (2, N'a', N'a', N'a', N'a', N'1', N'1', N'a', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (4, N'c', N'c', N'c', N'c', N'3', N'3', N'c', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (5, N'd', N'd', N'd', N'd', N'4', N'4', N'd', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (6, N'e', N'e', N'e', N'e', N'5', N'5', N'e', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (7, N'f', N'f', N'f', N'f', N'6', N'6', N'f', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (8, N'g', N'g', N'g', N'g', N'7', N'7', N'g', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (9, N'h', N'h', N'h', N'h', N'8', N'8', N'h', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (10, N'ı', N'ı', N'ı', N'ı', N'9', N'9', N'ı', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (11, N'i', N'i', N'i', N'i', N'10', N'10', N'i', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (12, N'Mehmet', N'Özçelik', N'adasdas', N'dsadas', N'sadasdasda', N'dsadasdas', N'sdadasd', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (13, N'Hamza', N'Taş', N'adasdas', N'dsadas', N'sadasdasdasadads', N'dsadasdas', N'sdadasd', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (14, N'aaa', N'aaa', N'aaa', N'aaa', N'aaa', N'aaa', N'aaa', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (15, N'bbb', N'bbb', N'bbb', N'bbb', N'bbb', N'bbb', N'bbb', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (16, N'ccc', N'ccc', N'ccc', N'ccc', N'ccc', N'ccc', N'ccc', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (17, N'ddd', N'ddd', N'ddd', N'ddd', N'ddd', N'ddd', N'ddd', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (18, N'eee', N'eee', N'eee', N'eee', N'eee', N'eee', N'eee', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (19, N'fff', N'fff', N'fff', N'fff', N'fff', N'fff', N'fff', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (20, N'ggg', N'ggg', N'ggg', N'ggg', N'ggg', N'ggg', N'ggg', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (21, N'Hamza', N'Taş', N'Mühendislik Fakültesi', N'26285617580', N'151001020', N'05346682748', N'hamza51719@ogr.duzce.edu.tr', 1)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (22, N'Cumali', N'Cuma', N'Teknoloji Fakültesi', N'26285617580', N'151001041', N'05346682748', N'cumali@cuma.com', 4)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (23, N'Burak', N'Taş', N'Mühendislik Fakültesi', N'26285617580', N'151001020', N'05346682748', N'fatihcrazyboyasadasfasdfasdfsadfsadfadsfsdafsadfasdflukukjkjkjkj@h.com', 4)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (24, N'Hamza', N'Taşkın', N'Teknoloji Fakültesi', N'26285617596', N'151001029', N'05346682748', N'resulkara@duzce.edu.tr', 4)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (25, N'Feyza', N'Kayar', N'Teknoloji Fakültesi', N'26285617596', N'151001027', N'05346682748', N'resulkara@duzce.edu.tr', 4)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (26, N'Kamile', N'kamil', N'Teknoloji Fakültesi', N'26285617596', N'151001028', N'05346682748', N'resulkara@duzce.edu.tr', 4)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (27, N'Hasan', N'kamil', N'Teknoloji Fakültesi', N'26285617596', N'151001023', N'05346682748', N'resulkara@duzce.edu.tr', 4)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (28, N'Hüsnüye', N'Hüsnü', N'Teknoloji Fakültesi', N'26285617596', N'151001024', N'05346682748', N'resulkara@duzce.edu.tr', 4)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (29, N'Düzciye', N'düz', N'Teknoloji Fakültesi', N'26285617596', N'151001025', N'05346682748', N'resulkara@duzce.edu.tr', 4)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (30, N'Mehmeyt', N'eyt', N'Teknoloji Fakültesi', N'26285617596', N'151001026', N'05346682748', N'resulkara@duzce.edu.tr', 4)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (31, N'Burak', N'Taş', N'Mühendislik Fakültesi', N'26285617580', N'151001041', N'05346682748', N'burak@burak.com', 5)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (32, N'baskan', N'baskan soyadı', N'Mühendislik Fakültesi', N'26285617580', N'151001020', N'05346682748', N'fatih@h.com', 5)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (33, N'baskan', N'baskan soyadı', N'Mühendislik Fakültesi', N'26285617580', N'151001021', N'05346682748', N'fatih@h.com', 5)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (34, N'baskan', N'baskan soyadı', N'Mühendislik Fakültesi', N'26285617580', N'151001022', N'05346682748', N'fatih@h.com', 5)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (35, N'baskan', N'baskan soyadı', N'Mühendislik Fakültesi', N'26285617580', N'151001024', N'05346682748', N'fatih@h.com', 5)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (36, N'baskan', N'baskan soyadı', N'Mühendislik Fakültesi', N'26285617580', N'151001027', N'05346682748', N'fatih@h.com', 5)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (37, N'baskan', N'baskan soyadı', N'Mühendislik Fakültesi', N'26285617580', N'151001028', N'05346682748', N'fatih@h.com', 5)
INSERT [dbo].[OgrenciListesi] ([ID], [adi], [soyadi], [fak], [tc], [ogrNo], [tel], [mail], [basvuruID]) VALUES (38, N'baskan', N'baskan soyadı', N'Mühendislik Fakültesi', N'26285617580', N'151001029', N'05346682748', N'fatih@h.com', 5)
SET IDENTITY_INSERT [dbo].[OgrenciListesi] OFF
SET IDENTITY_INSERT [dbo].[YonetimKurulu] ON 

INSERT [dbo].[YonetimKurulu] ([ID], [adi], [soyadi], [unvan], [bolum], [adres], [tc], [fakulte], [ogrNo], [gsm], [evTel], [eMail], [basvuruID], [Baskan]) VALUES (12, N'Fatih', N'Karaüzüm', N'Yönetim Kurulu Başkanı', N'Elektrik', N'Sancakla', N'eee', N'eee', N'eee', N'eee', N'12345', N'eee', 1, 1)
INSERT [dbo].[YonetimKurulu] ([ID], [adi], [soyadi], [unvan], [bolum], [adres], [tc], [fakulte], [ogrNo], [gsm], [evTel], [eMail], [basvuruID], [Baskan]) VALUES (14, N'ı', N'ı', N'Üye', N'Bilgisayar Müh', N'Sancakla', N'ı', N'ı', N'9', N'ı', N'12345', N'ı', 1, NULL)
INSERT [dbo].[YonetimKurulu] ([ID], [adi], [soyadi], [unvan], [bolum], [adres], [tc], [fakulte], [ogrNo], [gsm], [evTel], [eMail], [basvuruID], [Baskan]) VALUES (15, N'fff', N'fff', N'Üye', N'Bilgisayar Müh', N'Sancakla', N'fff', N'fff', N'fff', N'fff', N'12345', N'fff', 1, NULL)
INSERT [dbo].[YonetimKurulu] ([ID], [adi], [soyadi], [unvan], [bolum], [adres], [tc], [fakulte], [ogrNo], [gsm], [evTel], [eMail], [basvuruID], [Baskan]) VALUES (17, N'ccc', N'ccc', N'Sayman', N'Bilgisayar Müh', N'Sancaklar', NULL, NULL, N'ccc', NULL, N'12345', NULL, 1, NULL)
INSERT [dbo].[YonetimKurulu] ([ID], [adi], [soyadi], [unvan], [bolum], [adres], [tc], [fakulte], [ogrNo], [gsm], [evTel], [eMail], [basvuruID], [Baskan]) VALUES (18, N'd', N'd', N'Başkan Yardımcısı', N'Elektrik', N'Sancakla', N'd', N'd', N'4', N'4', N'12345', N'd', 1, NULL)
INSERT [dbo].[YonetimKurulu] ([ID], [adi], [soyadi], [unvan], [bolum], [adres], [tc], [fakulte], [ogrNo], [gsm], [evTel], [eMail], [basvuruID], [Baskan]) VALUES (19, N'f', N'f', N'Üye', N'Elektrik', N'Sancakla', N'f', N'f', N'6', N'f', N'12345', N'f', 1, NULL)
INSERT [dbo].[YonetimKurulu] ([ID], [adi], [soyadi], [unvan], [bolum], [adres], [tc], [fakulte], [ogrNo], [gsm], [evTel], [eMail], [basvuruID], [Baskan]) VALUES (20, N'Fatih', N'Karaüzüm', N'Yönetim Kurulu Başkanı', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[YonetimKurulu] ([ID], [adi], [soyadi], [unvan], [bolum], [adres], [tc], [fakulte], [ogrNo], [gsm], [evTel], [eMail], [basvuruID], [Baskan]) VALUES (24, N'Hamza', N'Taş', N'Sekreter', N'Elektrik', N'Sancaklar', N'dsadas', N'adasdas', N'sadasdasdasadads', N'dsadasdas', N'12345', N'sdadasd', 1, NULL)
SET IDENTITY_INSERT [dbo].[YonetimKurulu] OFF
ALTER TABLE [dbo].[Basvuru]  WITH CHECK ADD  CONSTRAINT [FK_Basvuru_Kullanici] FOREIGN KEY([kullanıcıID])
REFERENCES [dbo].[Kullanici] ([ID])
GO
ALTER TABLE [dbo].[Basvuru] CHECK CONSTRAINT [FK_Basvuru_Kullanici]
GO
ALTER TABLE [dbo].[Danisman]  WITH CHECK ADD  CONSTRAINT [FK_Danisman_Basvuru] FOREIGN KEY([basvuruID])
REFERENCES [dbo].[Basvuru] ([ID])
GO
ALTER TABLE [dbo].[Danisman] CHECK CONSTRAINT [FK_Danisman_Basvuru]
GO
ALTER TABLE [dbo].[DenetimKurulu]  WITH CHECK ADD  CONSTRAINT [FK_DenetimKurulu_Basvuru] FOREIGN KEY([basvuruID])
REFERENCES [dbo].[Basvuru] ([ID])
GO
ALTER TABLE [dbo].[DenetimKurulu] CHECK CONSTRAINT [FK_DenetimKurulu_Basvuru]
GO
ALTER TABLE [dbo].[FaliyetPlani]  WITH CHECK ADD  CONSTRAINT [FK_FaliyetPlani_Basvuru] FOREIGN KEY([faliyetID])
REFERENCES [dbo].[Basvuru] ([ID])
GO
ALTER TABLE [dbo].[FaliyetPlani] CHECK CONSTRAINT [FK_FaliyetPlani_Basvuru]
GO
ALTER TABLE [dbo].[GDanisman]  WITH CHECK ADD  CONSTRAINT [FK_GDanisman_Guncelle] FOREIGN KEY([GuncelleID])
REFERENCES [dbo].[Guncelle] ([ID])
GO
ALTER TABLE [dbo].[GDanisman] CHECK CONSTRAINT [FK_GDanisman_Guncelle]
GO
ALTER TABLE [dbo].[GDenetimKurulu]  WITH CHECK ADD  CONSTRAINT [FK_GDenetimKurulu_Guncelle] FOREIGN KEY([GuncelleID])
REFERENCES [dbo].[Guncelle] ([ID])
GO
ALTER TABLE [dbo].[GDenetimKurulu] CHECK CONSTRAINT [FK_GDenetimKurulu_Guncelle]
GO
ALTER TABLE [dbo].[GFaliyetPlani]  WITH CHECK ADD  CONSTRAINT [FK_GFaliyetPlani_Guncelle] FOREIGN KEY([faliyetID])
REFERENCES [dbo].[Guncelle] ([ID])
GO
ALTER TABLE [dbo].[GFaliyetPlani] CHECK CONSTRAINT [FK_GFaliyetPlani_Guncelle]
GO
ALTER TABLE [dbo].[GOgrenciListesi]  WITH CHECK ADD  CONSTRAINT [FK_GOgrenciListesi_Guncelle] FOREIGN KEY([GuncelleID])
REFERENCES [dbo].[Guncelle] ([ID])
GO
ALTER TABLE [dbo].[GOgrenciListesi] CHECK CONSTRAINT [FK_GOgrenciListesi_Guncelle]
GO
ALTER TABLE [dbo].[Guncelle]  WITH CHECK ADD  CONSTRAINT [FK_Guncelle_Kullanici] FOREIGN KEY([kullanıcıID])
REFERENCES [dbo].[Kullanici] ([ID])
GO
ALTER TABLE [dbo].[Guncelle] CHECK CONSTRAINT [FK_Guncelle_Kullanici]
GO
ALTER TABLE [dbo].[GYeniUye]  WITH CHECK ADD  CONSTRAINT [FK_GYeniUye_Guncelle] FOREIGN KEY([GuncelleID])
REFERENCES [dbo].[Guncelle] ([ID])
GO
ALTER TABLE [dbo].[GYeniUye] CHECK CONSTRAINT [FK_GYeniUye_Guncelle]
GO
ALTER TABLE [dbo].[GYonetimKurulu]  WITH CHECK ADD  CONSTRAINT [FK_GYonetimKurulu_Guncelle] FOREIGN KEY([GuncelleID])
REFERENCES [dbo].[Guncelle] ([ID])
GO
ALTER TABLE [dbo].[GYonetimKurulu] CHECK CONSTRAINT [FK_GYonetimKurulu_Guncelle]
GO
ALTER TABLE [dbo].[OgrenciListesi]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciListesi_Basvuru] FOREIGN KEY([basvuruID])
REFERENCES [dbo].[Basvuru] ([ID])
GO
ALTER TABLE [dbo].[OgrenciListesi] CHECK CONSTRAINT [FK_OgrenciListesi_Basvuru]
GO
ALTER TABLE [dbo].[YeniUye]  WITH CHECK ADD  CONSTRAINT [FK_YeniUye_Basvuru] FOREIGN KEY([basvuruID])
REFERENCES [dbo].[Basvuru] ([ID])
GO
ALTER TABLE [dbo].[YeniUye] CHECK CONSTRAINT [FK_YeniUye_Basvuru]
GO
ALTER TABLE [dbo].[YonetimKurulu]  WITH CHECK ADD  CONSTRAINT [FK_YonetimKurulu_Basvuru] FOREIGN KEY([basvuruID])
REFERENCES [dbo].[Basvuru] ([ID])
GO
ALTER TABLE [dbo].[YonetimKurulu] CHECK CONSTRAINT [FK_YonetimKurulu_Basvuru]
GO
