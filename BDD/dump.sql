-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: localhost    Database: musicCharts
-- ------------------------------------------------------
-- Server version	8.0.44-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Album`
--

DROP TABLE IF EXISTS `Album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Album` (
  `id` varchar(100) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `coverUrl` text,
  `realeaseYear` int DEFAULT NULL,
  `artistId` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `artistId` (`artistId`),
  CONSTRAINT `Album_ibfk_1` FOREIGN KEY (`artistId`) REFERENCES `Artist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Album`
--

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
INSERT INTO `Album` VALUES ('MPREb_31kw8EL7MPE','Soda Pop (from the Netflix film KPop Demon Hunters)','https://lh3.googleusercontent.com/XD2LrVCu9Y_EwxkKpkVFcXXbJa14w_Z_AFGOuJ5fY935mlAEsowjxAXA_9m5PDNEDTOOU3dZDVTBuEVq=w544-h544-l90-rj',2025,'UCIz8Vvt9ux6x7Ryi2sqG1ww'),('MPREb_32tx5KxVW31','Et si j\'échoue ??','https://lh3.googleusercontent.com/yZw1y0tNFfCqosXT_2iLZcO46AZf_YRcSr1D7OhH-Q0MFXMoeGASqVBietNvH0EvX4OnCoBN5AxGXVT2kA=w544-h544-l90-rj',2025,'UCyZcMAUMmpOxrbcKtApZBAg'),('MPREb_4CS0DARWiic','Franchement !','https://lh3.googleusercontent.com/h_WsCpmm9cCXmmg6uNvvjd2tJrPdDJJR84D8YCKeFPGDnV4cApK8aVfqOm7je9Yk7Aicp0bxon-7oFcm=w544-h544-l90-rj',2025,'UCDBNRVcVAZ2qRUvmTvm9VbA'),('MPREb_4lkn39VEYHp','ENCORE / VIANO','https://lh3.googleusercontent.com/AaENvZoVO0j3TK9UVjAVMLkdCM_xi3bN3rJe1qKGhsUsS4EO0Cu3O2zGNYEtmtO3UctUWywKebcoVJWF=w544-h544-l90-rj',2025,'UC-8TG2HoLIehbIab3ea6seg'),('MPREb_5AL32Lli7K9','Minimum ça','https://lh3.googleusercontent.com/vT17oba7kUCX9rDoBE38B3ZVPermtrk9T2l5nD-ul7Hu94J-XUGuqXcY5Jw1uUOlCsWT_PVVyE46J7-q=w544-h544-l90-rj',2024,'UCQd6Wy2xD2G8Q6a_PRh0EIQ'),('MPREb_7PehrOVCp9d','Zoo (De \"Zootopie 2\")','https://lh3.googleusercontent.com/vtaS2wtJSjBfzXIfCW1OfJe4tGhq9ERzciiIcZEWQKmCON5grr-hnngpZSzpDB5Am78D8A_jyimr-Jc=w544-h544-l90-rj',2025,'UC0L4FNvqduCM49XPjb8dZHQ'),('MPREb_8B6isuTVwhv','NO BATIDÃO','https://lh3.googleusercontent.com/eEXqI0KeotuaiRx4PjiopjPnlTBj9aiSXbY1NmzielYry7Mvs-WRANaJiivV62Zl6ufFtOwDMUtRmKVf=w544-h544-l90-rj',2025,'UCDx-HqH50Z2wks1xClUeD-Q'),('MPREb_a6loogRbBoY','Rebanav 126bpm','https://lh3.googleusercontent.com/XH-mPZrRnv7ez8VNGMEm3XO73SJfzlYLNMSPehOH7dEBo64hFjuHOtp3bb_ebIPmp7VStlxJjYxuZ5xy=w544-h544-l90-rj',2025,'UCg_XPtYIk56q3Vq2WhvChyA'),('MPREb_BIgkXzzhpJf','SOIS PAS TIMIDE','https://lh3.googleusercontent.com/1Ybnl1oFroi40JlrMSdoUPRlPXSuy7J4Ults27mwh-uFzmfpRhGqAQddCnjDvYkSt4ZsAZixkj70Ot3z=w544-h544-l90-rj',2024,'UCanUjmTDohFr8OMpfk5xWBQ'),('MPREb_CMV1ocGXH1o','LES DIAMANTS DE BOKASSA','https://lh3.googleusercontent.com/PGnOoukACuui-IAYKbLchmfwRPp36UfewFJDJY9X_oHuzyQoJgQoe5dn0qYXt1A_1JJ4PKN6CiVHz6Q=w544-h544-l90-rj',2026,'UCBNTNHPngOpC-yeC8VpAPJQ'),('MPREb_fcsPMu1qX7k','DICTIONNAIRES','https://lh3.googleusercontent.com/PGnOoukACuui-IAYKbLchmfwRPp36UfewFJDJY9X_oHuzyQoJgQoe5dn0qYXt1A_1JJ4PKN6CiVHz6Q=w544-h544-l90-rj',2026,'UCBNTNHPngOpC-yeC8VpAPJQ'),('MPREb_fWFQSgXPxcu','Golden (from the Netflix film KPop Demon Hunters)','https://lh3.googleusercontent.com/1U-1pXbvkpvGXGUIFs5m6RXz4Fmdvqo1zzQw8eY7b4G9iwpE6vaRclt8Ov5CS8ldROIQGu2InpGuSJSW=w544-h544-l90-rj',2025,'UCB-w1qXuClYVjJV49lVothw'),('MPREb_Gw5O30lL6dp','Adriano','https://lh3.googleusercontent.com/jF76kGDI78IwY5sY2ac3Vj5QKAQmedWVpaDcPMJKpKzKTOurpDEXmmaQ2E3MaY0BC7RMU7e31PQp6tky=w544-h544-l90-rj',2025,'UC2ISePqOr39OQ90kNN1WLjA'),('MPREb_Gw5TqFVjZ8p','Zoo (From \"Zootopia 2\"/Japanese Single Version)','https://lh3.googleusercontent.com/fYPRrq3PWuCRmt0SgyA5kM_G3B7MMztNVvST20iJlXQ0LLZFXRNeFqVIvK_-ogH7T5Z1gIJeyb6ViCI=w544-h544-l90-rj',2025,'UCo6JijJGA3IvIiPsawDK3Ww'),('MPREb_hI9FYFLyaZq','SPIDER','https://lh3.googleusercontent.com/l_yaBFRDtoRponWL2NcDccWjHPQ08k5pHJ19533d5Qmn7YIAjuoLtyPEuU1JjwEV6AiiSQY-3rIQNu8=w544-h544-l90-rj',2024,'UCanUjmTDohFr8OMpfk5xWBQ'),('MPREb_HNMbrxQhnoV','LE NORD SE SOUVIENT : L\'ODYSSÉE','https://lh3.googleusercontent.com/D_4rkn1Kx-C678pbsRd2xREyXXkG5Atday7YbbUuH6FJBj0NdAKouhTT4D1xmx7B4x4gox__MYt6zFnf=w544-h544-l90-rj',2025,'UCanUjmTDohFr8OMpfk5xWBQ'),('MPREb_hrVIIxIju4y','RUINART','https://lh3.googleusercontent.com/xdnQNWPJRWwShYD00KsdWENexZJppM34B5nFWsHIC-9WfZ_ULbkFeYxwG3hQq3WTCjjMVN-o1oQyiWg=w544-h544-l90-rj',2025,'UC-vYcQ39gufSn-dT_H-0LRg'),('MPREb_iz15ByIewM7','LOVE YOU','https://lh3.googleusercontent.com/8G6lBMst77i8vku32WezNA1JsZkp81tu1yH0KerpodTo6tlTLR9p-aiSA9yce7KngpW5xHDzgLvluuNv=w544-h544-l90-rj',2025,'UCwvAKJiU1dS_QZAQukDFqYA'),('MPREb_JCxqCCAndci','Merry Christmas','https://lh3.googleusercontent.com/p2KexwmjEYAxWpU8YDL5ZO-BcH1Qnr51nznrX04W-5a16aKWCAwCaEgzwP7cMrCjJhmlJvuxilrCXU0=w544-h544-l90-rj',1994,'UCKRnq8aBOCanYlffje7HyvA'),('MPREb_juB1OemsBgo','AVTLR','https://lh3.googleusercontent.com/dcxKhqhxKG_5_pNSGhCcsVTaNf7Z2gUpSIrZZoH8isOUamCVAuN8VE3emQCW1jT8PRm94TcA_vu5fRreMg=w544-h544-l90-rj',2025,'UC59RK_AEwNpJcwSqlyh0Etg'),('MPREb_K99Lwuu94yM','LAST CHRISTMAS','https://lh3.googleusercontent.com/Pz95hD_2FIXOs_PVPdgpO-KqcdOmpsNCFnrS5IBgNJan--EyjjLph4cdRr_9xVeybgbDobaTDdH30Qam=w544-h544-l90-rj',1984,'UCpVKXA1YEpLtD_keJogkCwg'),('MPREb_kkaiFvSguk2','Piano','https://lh3.googleusercontent.com/Im0gWjS3ned0cjRNO_-BwAGYs4uD1_iGjnYlYN-C1GhlE6osjZYEcr5uHOre0xL0ihNzKPcxb6crkHs=w544-h544-l90-rj',2025,'UCm6FmMolN-n38Oj8-ZHVuHg'),('MPREb_LBTRiE8c95e','CIEL','https://lh3.googleusercontent.com/0N5ki-Gg3jT66KbMsKHwT-edhf5auxZzj-TpXCmxG_k5fDdTD0qkTEubpqykxxySYZ1SqjEI1QhzpTw=w544-h544-l90-rj',2024,'UCanUjmTDohFr8OMpfk5xWBQ'),('MPREb_liIzj2ETJ2X','Génération impolie','https://lh3.googleusercontent.com/tCOoWSeLeM26OLP8tE8Fs39gZMMck4JuNju_gVzKy_aLXRV1_ht_AMHWTdUJ1B-ZMw0sjCDolzTL4IGFPg=w544-h544-l90-rj',2025,'UCTgYX4pz2sIy6sQXNPpG77w'),('MPREb_LN7AN3mXXn2','C\'est nous dans le top (Brainrot)','https://lh3.googleusercontent.com/krZHsBFEOZaNdCvKl8AljE_KueuFP0jCpUsFGPViXOBBr-HprhITG5bv-AUmE3OlCuo_AGgZnjEoO6R7lA=w544-h544-l90-rj',2025,'UC7Z88bJsuBp7RcvjnTXMiTw'),('MPREb_nlU7m8mWzre','melodrama','https://lh3.googleusercontent.com/geLzD_LNGRxHC2guELmZr-GX3pjIevYlEGa_K3cCtQ_OGbU1Pa0NwpvIdnVFb_W4RbBzIXyWnYz9G8yE=w544-h544-l90-rj',2025,'UCLxywkV1hSsZPvRvRGjQh3g'),('MPREb_ONSmOOFQO0L','Gabriela','https://lh3.googleusercontent.com/Boy9TIypluE9O8sPJO_lM_ldzEi22070TzsJDoB4TkhXUzDsneRqhjWTRVtBSrDHwuw4afG6GdAd46LHSQ=w544-h544-l90-rj',2025,'UCX9kfYB9t0tnd6DYUC2iuKg'),('MPREb_p4xqaimeUsk','Golden (from the Netflix film KPop Demon Hunters)','https://lh3.googleusercontent.com/1U-1pXbvkpvGXGUIFs5m6RXz4Fmdvqo1zzQw8eY7b4G9iwpE6vaRclt8Ov5CS8ldROIQGu2InpGuSJSW=w544-h544-l90-rj',2025,'UCB-w1qXuClYVjJV49lVothw'),('MPREb_p6BGcsuOpGt','The Life of a Showgirl','https://lh3.googleusercontent.com/ZpWD37EEQE_LVuQ_O03cRmz5mZA7jG0gKGLt-49uHNDX6DycysijGGSOX9woU-OfQR5jyahz3aEdmBmm3A=w544-h544-l90-rj',2025,'UCPC0L1d253x-KuMNwa05TpA'),('MPREb_RqdUcr5MR7A','Focus Mentalité','https://lh3.googleusercontent.com/d_B5eusinwcrKaak4VtKcOdkHFvxr0XpIy_QJxpvk41QBISWDRXNMDO19vH3iBJVmdeTelGdVlmph8W1uw=w544-h544-l90-rj',2025,'UCYID1DFIZ-UiEEZLnX_2bZA'),('MPREb_T8O62LRx3Xq','Skywalker Haze - A COLORS SHOW','https://lh3.googleusercontent.com/AxOd69ldeeLlqvtWfMqZnaymSvTonKpp1oLxLJ91FsjuM4jDiHUlPrALbbkTxQqtiB-FJyjhkEqa_9HW=w544-h544-l90-rj',2025,'UCBNTNHPngOpC-yeC8VpAPJQ'),('MPREb_UhI8E0HJjgi','Liens du 100','https://lh3.googleusercontent.com/Xc0eDuoMj9PxU-LCz3ph3cZFPBf3qLorYPR4aSX-24UXh0OQEKeUoT9syBnjUXFSK7CqDbIIsIrImTiP=w544-h544-l90-rj',2022,'UC5EcLJpzLGa11Efh7kNy7Wg'),('MPREb_vE4he82snnf','Africa Jungle Part.1','https://lh3.googleusercontent.com/Y2SRnxKNcixplNksq70ySS0g1oVkLd162yu36v8ZatBZElu4VT7klq-W3pQJo3D1Joys2XFOmKR2Thq9=w544-h544-l90-rj',2025,'UC1oWkNTMwjVinfReZBfktXA'),('MPREb_VrEPYY0zzud','+971','https://lh3.googleusercontent.com/-2ima7O-764hEy7v2KHqIqaPu3GUlm_hMp25XjzGXC2e4lZXVuKAj7OE46jYl4aFIyQdlpPcVR-5nSoO=w544-h544-l90-rj',2025,'UCBNTNHPngOpC-yeC8VpAPJQ'),('MPREb_wBXS6fgt5p4','NINAO','https://lh3.googleusercontent.com/nP-TKIxXIvDsi7ks98DDhYjNQn4kpH9CXbUVdPDdKZWxZSpCaSQrHf7UYU-ZLgry2dsEOtHOQPpfWLYG=w544-h544-l90-rj',2025,'UCanUjmTDohFr8OMpfk5xWBQ'),('MPREb_XPa88PCrFLH','Un monde à l\'autre','https://lh3.googleusercontent.com/YPInCcD2UkGKq5UWYsehnqczuMjJk_YhPSLg09oFvwu646v2ajprzHBAfujowt08rnw87G6yoIQxQ-fQ=w544-h544-l90-rj',2025,'UCDuwbf08V3JpXNWAP0IYzIQ'),('MPREb_XQM6b6wUBFb','A LA VIE A LA MORT','https://lh3.googleusercontent.com/F9G6qs9mqkDiMUxRREz85Oy9-Ml6GbpeExOVsY-TSzn0SJ377Kg9hWcDTiBde4unYh-3RUtNXb-LAdXE=w544-h544-l90-rj',2024,'UC5EcLJpzLGa11Efh7kNy7Wg'),('MPREb_XzGDisPGrji','BLOQUÉ','https://lh3.googleusercontent.com/Lf2T2thTMCgiBFEqT3b2Xkc6nz5rP7f24ACxL7qDOx8oLh1Zb0-CDLrxxURHlnNLwAblpt4Sp-yMPIA=w544-h544-l90-rj',2025,'UCanUjmTDohFr8OMpfk5xWBQ'),('MPREb_yC5612QDRuK','APOCALYPSE','https://lh3.googleusercontent.com/6n0PtyQNPMSCObJyXT5kNoUqpQayChvq384C05ZSAmuGaLT_YTnsILTROMLw7_Sj5V7TgKm-2IA-NPTapA=w544-h544-l90-rj',2024,'UCkD8FdHTwzIo2lJGoSeXSXQ'),('MPREb_YgmdjPeJgi2','The Fate of Ophelia (Loud Luxury Remix)','https://lh3.googleusercontent.com/b5-7-XZQSU_SxtKrHTy-Bk_GiRVy9eg1efE1PfgM0qTKt88xAKs5tNTE5hqRQybh62OwXWzbHOk2o3xuxg=w544-h544-l90-rj',2025,'UCPC0L1d253x-KuMNwa05TpA'),('MPREb_Yh5sjpWkLbj','Soleil Bleu','https://lh3.googleusercontent.com/pN2wKwgbYeer4qo8Jvm4B4jpsp1LNW7ymYpgTW8la9bOMdtEjgYvhobhKTUZxorhX74J4eRMLisYLDI=w544-h544-l90-rj',2025,'UCu0sXCoo4bZBJXTQwKEIT3Q'),('MPREb_yM8wGaNXllD','MON BÉBÉ','https://lh3.googleusercontent.com/unKcnz3a5RSpYdQpq2Nci-ZnbMv91Um45ObThcNnSgVnTiqVvuRzcgLwo0XheAyBV3t3jrZuI90gF7H1=w544-h544-l90-rj',2025,'UCqJdiFli4XZWXWoBVLkjfeg'),('MPREb_ZeTClpnMFWx','Soda Pop','https://lh3.googleusercontent.com/XD2LrVCu9Y_EwxkKpkVFcXXbJa14w_Z_AFGOuJ5fY935mlAEsowjxAXA_9m5PDNEDTOOU3dZDVTBuEVq=w544-h544-l90-rj',2025,'UCIz8Vvt9ux6x7Ryi2sqG1ww');
/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artist`
--

DROP TABLE IF EXISTS `Artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Artist` (
  `id` varchar(100) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `imageUrl` text,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artist`
--

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */;
INSERT INTO `Artist` VALUES ('UC-8TG2HoLIehbIab3ea6seg','RK','https://lh3.googleusercontent.com/tpyWefk2rTwpllAgJ5BoVpCVuvU9wY8vCh8SEf0dr-b0wzb51q40MgJSwsrhM_f5LGVEy9eS2zPFNos=w2880-h1200-p-l90-rj','RK, de son vrai nom Ryad Kartoum, né le 7 novembre 2001 à Meaux, est un rappeur français.\nSon premier album studio, Insolent, est certifié disque de platine en cinq mois. S\'ensuivent notamment les opus Rêves de gosse, Neverland et Mentalité.'),('UC-vYcQ39gufSn-dT_H-0LRg','R2','https://lh3.googleusercontent.com/2YkZuCBfGn-BhH-CnTOB-ZlsowwKol7H5s0cXMa29n34teChc19USFPOmjLnSBpWQwA4e_UdphSfP-Wvbg=w1400-h583-p-l90-rj','R2, de son vrai nom Rayane Kipre, est un rappeur et chanteur français.\nEn 2025, son nouveau single Ruinart est certifié disque de diamant en un peu moins de quatre mois.'),('UC0L4FNvqduCM49XPjb8dZHQ','Disney','https://lh3.googleusercontent.com/AnXnG2-LYCt5XqtLr2bPIo1EcLJ5F4o3dEQ8lq8ERdg1KM42Bg5A48cnG0ocyA_MLERGpw10Wf8FkQLV=w1000-h416-p-l90-rj','null'),('UC1oWkNTMwjVinfReZBfktXA','Soolking','https://lh3.googleusercontent.com/_uuuGIjHQGQn6aPnmJCphBOIovtm2IfvR3IgwmicaMEqW4MQkCs27d9slqgPrEtDUI5UrzUcA1gjGOA=w2880-h1200-p-l90-rj','Soolking, de son vrai nom Abderraouf Derradji, né le 10 décembre 1989 à El Hammamet, est un chanteur, rappeur et danseur algérien.\nJusqu\'en 2013, il est connu en Algérie sous le nom de scène de MC Sool dans son groupe Africa Jungle.\nEn 2014, il commence une carrière solo en France ; quatre ans plus tard, il sort son premier album solo, Fruit du démon.\nEn 2020, il sort un deuxième opus, Vintage. Ce dernier comprend le titre Meleğim, en featuring avec Dadju, certifié disque de diamant cinq mois et demi après sa sortie en single.\nSon troisième album, Sans visa, inclut notamment le tube Suavemente, titre certifié diamant quatre mois et demi après sa sortie en single.\nEn 2025, il sort un quatrième album, Africa Jungle, en deux parties. La première partie est portée par Casanova, en featuring avec Gazo.'),('UC2ISePqOr39OQ90kNN1WLjA','Niska','https://lh3.googleusercontent.com/Gxv5pN96_10-e1xaEU48U97xM-ecSxg8cERhmvUM8JVd806xfPh-SyT6RHOV7A3Cf9FTQu8ufsUizaZE=w2880-h1200-p-l90-rj','Niska, né le 6 avril 1994 à Villeneuve-Saint-Georges, est un rappeur français.\nIl est l\'auteur de trois albums studio : Zifukoro, Commando et Mr Sal. Il produit aussi deux mixtapes, dont Le monde est méchant.\nEn 2025, son nouveau single Adriano est certifié disque de platine en deux mois et demi.'),('UC59RK_AEwNpJcwSqlyh0Etg','TKS 2G','https://lh3.googleusercontent.com/dcxKhqhxKG_5_pNSGhCcsVTaNf7Z2gUpSIrZZoH8isOUamCVAuN8VE3emQCW1jT8PRm94TcA_vu5fRreMg=w1400-h583-p-l90-rj','null'),('UC5EcLJpzLGa11Efh7kNy7Wg','SDM','https://lh3.googleusercontent.com/Ni9Qeka6nhedYRaYKLVjW5ASG3SqUCoEi4AglbUrZy0uh0Frk9Ki_t3EjBQ3OV73WGmzporjEGmKdFg=w2880-h1200-p-l90-rj','\"À LA VIE A LA MORT\", MAINTENANT DISPONIBLE !'),('UC7Z88bJsuBp7RcvjnTXMiTw','Unchained','https://lh3.googleusercontent.com/krZHsBFEOZaNdCvKl8AljE_KueuFP0jCpUsFGPViXOBBr-HprhITG5bv-AUmE3OlCuo_AGgZnjEoO6R7lA=w2880-h1200-p-l90-rj','null'),('UCanUjmTDohFr8OMpfk5xWBQ','GIMS','https://lh3.googleusercontent.com/XouB33j0TSegjTSyqqQPp1IkyFcDD58jCN2WkNqI8p8Psktap1v4Q_gGzch5XZKBU9US4KynEFkCtQc=w2880-h1200-p-l90-rj','Gims, stylisé GIMS, anciennement Maître Gims, né Gandhi Djuna le 6 mai 1986 à Kinshasa au Zaïre, est un chanteur et rappeur congolais. Il grandit en France et vit principalement entre la France et le Maroc. Il est membre du groupe de hip-hop Sexion d\'assaut. Il poursuit une carrière en solo sous le nom de Maître Gims puis Gims à partir de 2013. Au cours de sa carrière, il travaille avec plusieurs artistes internationaux tels que Sia, Pitbull, Lil Wayne, Stromae, Maluma, Sting et d\'autres. Il compte plus de 5 millions de disques vendus, dont 3 millions d\'albums depuis le début de sa carrière.\nGims commence sa carrière solo en 2013 avec la sortie de son premier album, Subliminal en mai sur les labels Wati B et Sony Music, qui atteint la deuxième place des classements d\'albums français. En décembre, il sort une réédition intitulée Subliminal la face cachée. L\'album contient des chansons telles que J\'me tire, Bella, One Shot, Changer et Zombie. Dès sa première semaine d\'exploitation, l\'album est certifié disque de platine et finira par être double disque de diamant pour plus d\'un million d\'exemplaires vendus.'),('UCB-w1qXuClYVjJV49lVothw','HUNTR/X','https://lh3.googleusercontent.com/3m16oMKLck_2JI_jRmF4cfNzohDOGjnS0v3yeo9J3b-VAmoidbDHmENAFb9NF701ogYMrDgGpgQv-A=w1500-h625-p-l90-rj','null'),('UCBNTNHPngOpC-yeC8VpAPJQ','Ninho','https://lh3.googleusercontent.com/yQl_iswNC0-s3_KPOmuwE40vlqPnt8IYJumhcYByia72wm_PvoOL85gBAM7fwP-FsN9mp2J-P0hDPu8=w2880-h1200-p-l90-rj','Ninho, de son vrai nom William Nzobazola, est un rappeur, chanteur, auteur-compositeur et entrepreneur franco-congolais, né le 2 avril 1996 à Longjumeau dans l’Essonne.\nDétenteur du record français du nombre de singles certifiés, il possède un total de 187 singles d\'or, 90 de platine et 50 de diamant en 2023.'),('UCDBNRVcVAZ2qRUvmTvm9VbA','TRIANGLE DES BERMUDES','https://lh3.googleusercontent.com/g45XHdbqHA9lQMQD2caiBFYU5hCz8T5Des4Db1mLSCRHsbDUJwusi0obLMrv7nVTE89dvakVSQWIWIf4=w2880-h1200-p-l90-rj','Après le succès fou de leur titre \"Y a une meuf\", MC YOSHI, Mauvais djo et Kokosvoice décident de former le groupe TRIANGLE DES BERMUDES.\nLeur premier album, intitulé Triangle des bermudes 1.0 a connu un succès fulgurant sur la toile et dans le monde de la nuit. '),('UCDuwbf08V3JpXNWAP0IYzIQ','GP Explorer','https://lh3.googleusercontent.com/BOnptcMdCWzB0qk6cL4gJEF4hVSaOP08iggOVxWQpD0GmLHhAxGDXrH5yBqEaQ8Giv5JKh5ftrrXINs=w2880-h1200-p-l90-rj','null'),('UCDx-HqH50Z2wks1xClUeD-Q','ZXKAI','https://lh3.googleusercontent.com/uW6yjg7LoIyB0hWEh-JsMsZt7MKUDFpNZGWxJVDfIhGPDcAML8Z5DuZCyLWc2KcJbJ5axmu0y4ywN7Mj=w1400-h583-p-l90-rj','null'),('UCg_XPtYIk56q3Vq2WhvChyA','Chily','https://lh3.googleusercontent.com/V0HIPrfL5PoWPh2nAOxJKHrXbHcjh5xwpO8MzSAZuoann74UTILPWgihH-0x6TjwQU7v1on5mnDDBz0=w2880-h1200-p-l90-rj','null'),('UCIz8Vvt9ux6x7Ryi2sqG1ww','Saja Boys','https://lh3.googleusercontent.com/WQ5-vpqWEKPunzYVV03bqvod7up-9qSa67ZHIVmcZNDjqyQY1l2VdrTVMidNDrAgxJzThrNkWUzG6cyb=w1400-h583-p-l90-rj','null'),('UCkD8FdHTwzIo2lJGoSeXSXQ','Gazo','https://lh3.googleusercontent.com/yNJXPnim7KybgI41CGElFZdL8e6Ij4fEdiEmLVXbOGroI1lSNni5FYOsIYOtZLLzOb3zFieEhf8V55a2=w2880-h1200-p-l90-rj','Gazo, nom de scène d\'Ibrahima Diakité, né le 5 août 1994 à Châteauroux, est un rappeur et auteur-compositeur-interprète français d’origine guinéenne. Il commence la musique en solo sous le nom de Bramsou ainsi qu\'avec un groupe nommé Barrodeur Music.\nGazo sort le 26 février 2021 sa toute première mixtape intitulée Drill FR, certifié double disque de platine. Sa deuxième mixtape est KMT, dévoilée le 1ᵉʳ juillet 2022 et certifiée triple disque de platine. Le 1ᵉʳ décembre 2023 sort son album en commun avec Tiakola, intitulé La mélo est gangx et certifié disque d’or moins d’un mois après sa sortie, puis platine en mars 2024. Son quatrième projet et premier album solo sort le 29 novembre 2024 sous le nom d\'Apocalypse.'),('UCKRnq8aBOCanYlffje7HyvA','Mariah Carey','https://lh3.googleusercontent.com/zQwYb_8FK0DndP_rrm-y9GW133AYS7shlNgLCsH6gwu8cp6iRhScqviVAE9LO6Qg74WvaLnDKTkiRlM=w2880-h1200-p-l90-rj','Mariah Carey [məˈɹaɪə ˈkɛəɹi], née le 27 mars 1969 à Huntington, est une auteure-compositrice-interprète, productrice et actrice américaine. Elle est révélée en 1990 par son premier album Mariah Carey porté par la chanson Vision of Love qui fait d\'elle une artiste reconnue dans son pays et à l\'international.\nElle enchaîne alors les succès avec d\'autres albums : Emotions, MTV Unplugged un premier album live, Music Box, Merry Christmas avec le titre All I Want for Christmas Is You, Daydream dont le premier titre Fantasy d\'influence hip-hop marque son évolution musicale vers plus de r’n’b, Butterfly, #1\'s et Rainbow. Elle est selon France 2 en 1995 la chanteuse qui a vendu le plus de disques dans les années 1990.\nAprès l\'échec commercial relatif de son album et de son film Glitter en 2001, elle retrouve peu à peu le niveau de succès de ses premiers albums notamment en 2005, avec l\'album The Emancipation of Mimi grâce au titre We Belong Together. Depuis 2008, elle connaît plutôt des succès modérés avec d\'autres albums. Son nouvel album Here For it All est sorti le 26 septembre 2025.\nA l\'international, elle est particulièrement connue au Canada, en Europe, au Japon et en Australie.'),('UCLxywkV1hSsZPvRvRGjQh3g','disiz','https://lh3.googleusercontent.com/_QKp0vg0wDpT60CmlogyI9k9SQJh_qmIP4eC03ZTqXXeB4OyojW9GQYwTCyHiL8FlozzDqeroMb0L1yX=w2048-h853-p-l90-rj','Disiz ou Disiz la Peste, nom de scène de Sérigne M\'Baye Gueye, né le 22 mars 1978 à Amiens, dans la Somme, est un rappeur, chanteur et comédien français.\nIl publie son premier album Le Poisson rouge, le 23 octobre 2000, qui contient le single J\'pète les plombs inspiré par le film Chute libre de Joel Schumacher, sorti l\'été 2000, un très grand succès à la vente avec 500 000 singles vendus.\nDébut 2005, Disiz est à l\'affiche du film Dans tes rêves, de Denis Thybaud, où il incarne Ixe, un jeune rappeur qui cherche à accomplir son rêve. En 2009, il annonce la fin de sa carrière de rappeur ; dans une interview accordée à Streetlive Magazine, Disiz exprime son souhait d\'orienter sa carrière musicale vers le rock et exprime aussi ses craintes par rapport à ce choix. Il revient le 8 mars 2012 avec un second roman, René, et le 26 mars avec un EP Lucide, première partie de la trilogie Lucide.'),('UCm6FmMolN-n38Oj8-ZHVuHg','Werenoi','https://lh3.googleusercontent.com/vq5uygo4_9cb_3_GeyCEAA72JkoVRoymadQrmJTxX-0ohyUdrpLsXD7tt-LAI8DmnaFPElz8RFq9HHU=w2880-h1200-p-l90-rj','On ne sait presque rien de Werenoi. Ce qui est certain, c’est que le rappeur originaire de Montreuil ne fait pas dans la fiction. Werenoi s’impose comme porte-étendard du 93, représentant d’une musique brute et sombre au possible, préférant chroniquer la vie de quartiers plutôt que manier les artifices. Il n’enjolive pas, ne ment pas, permettant à son succès de grandir grâce à son public. Et à rien d’autre.'),('UCo6JijJGA3IvIiPsawDK3Ww','Shakira','https://lh3.googleusercontent.com/5szu_R249QrTCG3OtuEVcWqDUxA_g3bosD4RXOXQpNYR8y3ujA_QK5OERj-h-TluOmZJV0m-8oQSbcc=w2880-h1200-p-l90-rj','Shakira, de son nom complet Shakira Isabel Mebarak Ripoll est une chanteuse et auteure-compositrice-interprète colombienne. Elle est connue comme la « reine de la musique latine ». Après avoir émergé sur la scène latino-américaine en se produisant dans les années 1990, elle connaît un succès international à partir de 2002 grâce au titre Whenever, Wherever et à l\'album Laundry Service. Célèbre pour ses chansons mélangeant pop latino et musique du monde, elle est également renommée pour ses talents de danseuse qu\'elle met à profit dans ses concerts et clips.\nLes chansons Whenever, Wherever et Hips Don\'t Lie sont ses deux plus grands succès avec respectivement 5 et 8 millions d\'exemplaires vendus, se classant nᵒ 1 dans une trentaine de pays. D\'autres de ses chansons figurent au premier rang dans plusieurs pays dont La tortura, Beautiful Liar, Waka Waka, Loca et Chantaje.\nEn 2010, elle interprète Waka Waka, qui est choisie par la FIFA comme chanson officielle de la Coupe du monde de football 2010 et qui devient le single le plus vendu dans l\'histoire de cet évènement.'),('UCPC0L1d253x-KuMNwa05TpA','Taylor Swift','https://lh3.googleusercontent.com/RCpTA6EXJQyjVFDosWOKa2SMmqkua_lA9mHPDWWciLwgqpZLz-k8rXWRF_367trrQ7up9BUwCbk6kRk=w2880-h1200-p-l90-rj','Taylor Swift [ˈteɪlɚ swɪft], née le 13 décembre 1989 à Reading, en Pennsylvanie, est une auteure-compositrice-interprète, actrice et réalisatrice de clips musicaux américaine.\nLa sortie de son premier album intitulé Taylor Swift lance sa carrière en Amérique du Nord dans le genre country alors qu\'elle n\'a que seize ans. Son deuxième album, Fearless, fait d\'elle une artiste à succès dans les pays anglophones. En 2012, Red, son quatrième album, s\'éloigne des sonorités country pour plaire à un public plus large et international. Son cinquième album, 1989, génère deux des plus gros tubes de sa carrière, Shake it Off et Blank Space. Son sixième album, Reputation, fait de Taylor Swift la seule artiste de l\'histoire à vendre consécutivement quatre albums à plus d\'un million de copies, la semaine de leur sortie, aux États-Unis. En 2019, son septième album, Lover, lui permet de devenir l\'artiste la plus récompensée de l\'histoire des American Music Awards.\nEntre 2019 et 2025, un conflit majeur l’oppose à sa maison de disque. Elle réenregistre alors quatre de ses anciens albums. Les versions réenregistrées rencontrent un grand succès.'),('UCpVKXA1YEpLtD_keJogkCwg','Wham!','https://lh3.googleusercontent.com/SG0Kp-3Gbx9uMLCJBRbHnjxC1J-qH3D51RHVqx4JBkgl-wK5TcifM72781sXmximicYt-QUf5DMrCg=w2880-h1200-p-l90-rj','Wham! est un groupe de musique pop britannique, formé par George Michael et Andrew Ridgeley en 1981 à Bushey.\nGeorge Michael et Andrew Ridgeley se rencontrent à l\'école en 1975. À la fin des années 1970, ils fondent avec des camarades de classe un groupe appelé The Executive. Même s\'ils ne rencontrent pas de succès, les deux amis continuent d\'écrire des chansons. En 1982, ils signent un contrat avec Innervision Records, distribué par CBS Records. Ils décident d\'appeler leur groupe Wham! et sortent ensuite leur premier album Fantastic en 1983. Celui-ci se classe à la première place du hit-parade britannique.\nWham! connaît rapidement un grand succès international entre 1984 et 1985, grâce à des chansons comme Wake Me Up Before You Go-Go, Freedom, Everything She Wants et Last Christmas. Pendant la tournée Big Tour pour leur album Make It Big, George Michael et Andrew Ridgeley sont accompagnés sur scène par deux choristes : Shirlie Holliman et Pepsi Demacque. En avril 1985, Wham! est le premier groupe occidental à se produire en Chine communiste.'),('UCQd6Wy2xD2G8Q6a_PRh0EIQ','Dr. Yaro','https://lh3.googleusercontent.com/dSSG7CBK3hKStI3MUO_SAO3NMjhel5rC__kOOCiKVoKXqNb1uRnC-9afpj-ryyO3dZ8F3H5mzXW08CvW=w2880-h1200-p-l90-rj','null'),('UCqJdiFli4XZWXWoBVLkjfeg','RnBoi','https://lh3.googleusercontent.com/unKcnz3a5RSpYdQpq2Nci-ZnbMv91Um45ObThcNnSgVnTiqVvuRzcgLwo0XheAyBV3t3jrZuI90gF7H1=w2880-h1200-p-l90-rj','null'),('UCTgYX4pz2sIy6sQXNPpG77w','Franglish','https://lh3.googleusercontent.com/r_LqSrQT7uQDhz51PwZgLwhjMEPeTxTYzAy8yy0--Ao5DO6DT6hDDzZIsB4NGxNx9QVLI9Uwj5YYZZE=w2880-h1200-p-l90-rj','Franglish, de son vrai nom Gédéon Ngolo, né le 2 août 1994 à Paris, est un chanteur de RnB, rappeur et danseur français.\nIl est l\'auteur de quatre albums studio : Monsieur, Vibe, Glish et Prime. Ce dernier opus inclut notamment le titre Position, certifié disque de diamant cinq mois après sa sortie en single.'),('UCu0sXCoo4bZBJXTQwKEIT3Q','Bleu Soleil','https://lh3.googleusercontent.com/a-/ALV-UjUCLqUvOV-PRYis3ffrIVF5o2FEUKK52WQnVauRiFFVsu7lE-Mh=w1400-h583-l90-rj-dcGXOOqrEG','null'),('UCwvAKJiU1dS_QZAQukDFqYA','Nono La Grinta','https://lh3.googleusercontent.com/a-/ALV-UjULimITuWYaQOlP-_J34K2FpsOD5X43o7szIeU3QeP_0rosVZ4r=w1206-h502-l90-rj-dcpRWMzZEK','Nono La Grinta, de son vrai nom Noé Kasiama, né le 22 février 2006 à Paris, est un rappeur et producteur français.\nSon titre phare, Paris, est certifié disque de diamant en quatre mois et demi, peu après la victoire du Paris Saint-Germain Football Club en Ligue des champions de l\'UEFA 2024-2025.'),('UCX9kfYB9t0tnd6DYUC2iuKg','KATSEYE','https://lh3.googleusercontent.com/zWSt-azDdL9AU7TqaRdi7at4sag6W80bliX8RZ6Ex-cnMIxeJ0cSg2m6KGM4Oa9C-KhnStXrq42hHjo=w2880-h1200-p-l90-rj','Katseye est un girl band américain, originaire de Los Angeles, en Californie et composé de six membres : Manon, Daniela, Sophia, Lara, Yoonchae et Megan, Sophia étant la leadeuse du groupe. Le groupe se forme en 2023 à travers l\'émission de compétition Dream Academy, un projet résultant d\'une collaboration entre la branche américaine de la société sud-coréenne Hybe Corporation et le label américain Geffen Records ayant pour but de créer un groupe de filles international, conçu pour cibler un public mondial, et formé avec les méthodes utilisées en Corée du Sud pour les groupes de K-pop.\nLe groupe sort son premier single Debut en juillet 2024 et son premier EP en août 2024.'),('UCYID1DFIZ-UiEEZLnX_2bZA','KeBlack','https://lh3.googleusercontent.com/oD_iPbD6d6_qfWV6q3EF_VazIctTH4aBsp1uXZQ4oZaddGdCouwuMKbjNgONwXso0zZYqaLl8AKKUA=w2880-h1200-p-l90-rj','L’odyssée de Keblack est unique… C’est l’histoire d’une décennie de hits, de millions de vues YouTube, mais aussi de doutes, de remises en question et finalement d’une des remontadas les plus remarquées de l’industrie musicale en 2023. Après une période d’incertitude, le chanteur a enchaîné 3 singles de diamant en l’espace de quelques-mois. « Laisse-moi », « Aucune attache » ou encore « Boucan » en featuring avec Franglish ont marqué le retour d’un des artistes les plus populaires de sa génération et cristallisent aujourd’hui les attentes autour de son projet. Sobrement intitulé « Focus », son 4eme opus résume parfaitement le statut du Mc. Titulaire indiscutable : il a connu la médaille du succès, son revers mais a toujours gardé la même passion. Pionnier de l’afro, Keblack vient récupérer son terrain avec une formule sans cesse renouvelée.'),('UCyZcMAUMmpOxrbcKtApZBAg','Bouss','https://lh3.googleusercontent.com/-zc-iismOTHLta3vSIDYjD4zIT9jr0yzXc3tT1EGwGTyJwHO3X40A8-HcLZq_poRmAjaQFlHRRrFVg=w2880-h1200-p-l90-rj','L’ascension fulgurante de Bous n’est due ni au hasard, ni à la chance. Depuis 5 ans, le chanteur et rappeur parisien parfait une musique puisée sur tous les continents et dans toutes les esthétiques.\nAprès le succès de son premier album « Depuis le temps », emmené par les singles aux dizaines de millions de streams « Parler tout bas », « Mirage » ou « Les Heures », voici donc « Et si j’échoue ? », nouveau projet aussi bien paré de rap, de R&B que de musiques africaines ou insulaires. Car c’est bien là que réside les ingrédients de sa notoriété grandissante : Bouss parvient à s’emparer de n’importe quelle musique, de n’importe quel rythme, pourvu qu’il en soit inspiré.\nCette aisance quant au métissage passe également par son style vocal. Inclassable, Bouss est aussi bien chanteur que rappeur, avec un goût aiguisé de la mélodie et des paroles contant la détermination et l’espérance en l’avenir. Il est à l’image de son époque, né d’une musique mondiale qu’il contribue désormais à définir, capable de s’emparer d’un riff de guitare congolaise pour en faire un morceau aux accents rap, d’une rythmique presque dance pour revenir sur les erreurs du passé. Sur « Et si j’échoue ? », il apparaît seul, sans featuring. Parce que Bouss a des choses à dire et qu’il profite de sa notoriété grandissante, celle qui l’a amené en tête des ventes avec « Depuis le temps », pour les exprimer. Une chose est sure : l’échec n’est aucunement envisagé.');
/*!40000 ALTER TABLE `Artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Country` (
  `id` varchar(100) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES ('PL4fGSI1pDJn5JiDypHxveEplQrd7XQMlX','Italy'),('PL4fGSI1pDJn6O1LS0XSdF3RyO0Rq_LDeI','United States'),('PL4fGSI1pDJn6puJdseH2Rt9sMvt9E2M4i','Global'),('PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','France');
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Evaluate`
--

DROP TABLE IF EXISTS `Evaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Evaluate` (
  `userId` int NOT NULL,
  `id` varchar(100) NOT NULL,
  `dateNotice` date DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `musicId` varchar(100) NOT NULL,
  PRIMARY KEY (`userId`,`id`),
  KEY `musicId` (`musicId`),
  CONSTRAINT `Evaluate_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `User` (`id`),
  CONSTRAINT `Evaluate_ibfk_2` FOREIGN KEY (`musicId`) REFERENCES `Music` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Evaluate`
--

LOCK TABLES `Evaluate` WRITE;
/*!40000 ALTER TABLE `Evaluate` DISABLE KEYS */;
/*!40000 ALTER TABLE `Evaluate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Music`
--

DROP TABLE IF EXISTS `Music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Music` (
  `id` varchar(100) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `albumId` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albumId` (`albumId`),
  CONSTRAINT `Music_ibfk_1` FOREIGN KEY (`albumId`) REFERENCES `Album` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Music`
--

LOCK TABLES `Music` WRITE;
/*!40000 ALTER TABLE `Music` DISABLE KEYS */;
INSERT INTO `Music` VALUES ('_ekNixoAiAM','Bolide allemand','MPREb_UhI8E0HJjgi'),('-46M0YWMszs','SOIS PAS TIMIDE','MPREb_BIgkXzzhpJf'),('2EUM34klsL8','Adriano','MPREb_Gw5O30lL6dp'),('2vaYqNCfhfY','Tour du monde','MPREb_vE4he82snnf'),('43vgxD5JyQQ','Golden','MPREb_fWFQSgXPxcu'),('5JIIvc5BZ4s','Paddle','MPREb_juB1OemsBgo'),('7nVctvQVz0U','The Fate of Ophelia','MPREb_p6BGcsuOpGt'),('8mk020WG3dI','BLOQUÉ','MPREb_XzGDisPGrji'),('8yDgHMNhK3E','APPELLE TA COPINE','MPREb_HNMbrxQhnoV'),('9_bTl2vvYQg','Golden','MPREb_p4xqaimeUsk'),('aEAhZpF-bCA','Soleil Bleu','MPREb_Yh5sjpWkLbj'),('BK2RQhxf8Z4','MON BÉBÉ','MPREb_yM8wGaNXllD'),('cj3Q_8L-QA8','CIEL','MPREb_LBTRiE8c95e'),('dLgtd1k7lB0','Génération impolie','MPREb_liIzj2ETJ2X'),('E3DNlAVtlMY','Soda Pop','MPREb_ZeTClpnMFWx'),('Eda7cMFY7pA','Zoo ～君がいるから～','MPREb_Gw5TqFVjZ8p'),('ERk4Lx-mOqQ','PARISIENNE','MPREb_HNMbrxQhnoV'),('fRyhqobl0sk','All I Want for Christmas Is You','MPREb_JCxqCCAndci'),('G-fCOEZnnTs','Gabriela','MPREb_ONSmOOFQO0L'),('GJvGf_ifiKw','Last Christmas','MPREb_K99Lwuu94yM'),('iK7-C9KZXJk','+971','MPREb_VrEPYY0zzud'),('jHZBT1mqVBI','A COLORS SHOW','MPREb_T8O62LRx3Xq'),('K58AefE1-v4','Piano','MPREb_kkaiFvSguk2'),('kBuO3ESCFXE','C\'est nous dans le top','MPREb_LN7AN3mXXn2'),('KJtOTXqaW9w','NINAO','MPREb_wBXS6fgt5p4'),('l5ylz9fhcbM','CARTIER SANTOS','MPREb_XQM6b6wUBFb'),('L6NvQha2FWo','Minimum ça','MPREb_5AL32Lli7K9'),('moE3QFMggu0','RUINART','MPREb_hrVIIxIju4y'),('nJl7r7waJJo','LES DIAMANTS DE BOKASSA','MPREb_CMV1ocGXH1o'),('O2tKlnfrLkY','melodrama','MPREb_nlU7m8mWzre'),('Om_gqUBQzlI','Charger','MPREb_4CS0DARWiic'),('rtIX6niRZFk','Rebanav 126bpm','MPREb_a6loogRbBoY'),('su8lPj0PFKI','SPIDER','MPREb_hI9FYFLyaZq'),('sxDWEwG4hYk','NANANI NANANA','MPREb_yC5612QDRuK'),('u1iOXfnVBtY','Zoo','MPREb_7PehrOVCp9d'),('U4ZY5EXJqGg','DICTIONNAIRES','MPREb_fcsPMu1qX7k'),('WryQZ_OPpaI','Melrose Place','MPREb_RqdUcr5MR7A'),('Y5909_w1tOc','The Fate of Ophelia','MPREb_YgmdjPeJgi2'),('y7CrvsCIjyo','Soda Pop','MPREb_31kw8EL7MPE'),('yD5SirhiSU0','Biff pas d\'love','MPREb_32tx5KxVW31'),('YIpRcM_qF9s','LOVE YOU','MPREb_iz15ByIewM7'),('yv81of-8awE','VIANO','MPREb_4lkn39VEYHp'),('ZB0amc1TZ3Y','NO BATIDÃO','MPREb_8B6isuTVwhv'),('zeKCzmAKKP4','NO BATIDÃO','MPREb_8B6isuTVwhv'),('zYR1h6v416w','Un monde à l\'autre','MPREb_XPa88PCrFLH');
/*!40000 ALTER TABLE `Music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reward`
--

DROP TABLE IF EXISTS `Reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reward` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reward`
--

LOCK TABLES `Reward` WRITE;
/*!40000 ALTER TABLE `Reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mail` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `nbMusicListen` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WeeklyTop`
--

DROP TABLE IF EXISTS `WeeklyTop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WeeklyTop` (
  `musicId` varchar(100) NOT NULL,
  `countryId` varchar(100) NOT NULL,
  `weekDate` date NOT NULL,
  `rank` int DEFAULT NULL,
  `previousRank` int DEFAULT NULL,
  PRIMARY KEY (`musicId`,`countryId`,`weekDate`),
  KEY `countryId` (`countryId`),
  CONSTRAINT `WeeklyTop_ibfk_1` FOREIGN KEY (`musicId`) REFERENCES `Music` (`id`),
  CONSTRAINT `WeeklyTop_ibfk_2` FOREIGN KEY (`countryId`) REFERENCES `Country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WeeklyTop`
--

LOCK TABLES `WeeklyTop` WRITE;
/*!40000 ALTER TABLE `WeeklyTop` DISABLE KEYS */;
INSERT INTO `WeeklyTop` VALUES ('_ekNixoAiAM','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',19,NULL),('_ekNixoAiAM','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',20,19),('-46M0YWMszs','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',16,NULL),('-46M0YWMszs','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',11,16),('2EUM34klsL8','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',20,NULL),('2vaYqNCfhfY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',14,NULL),('2vaYqNCfhfY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',14,14),('2vaYqNCfhfY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',14,14),('2vaYqNCfhfY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',15,14),('2vaYqNCfhfY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',13,14),('2vaYqNCfhfY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',18,14),('2vaYqNCfhfY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',17,14),('2vaYqNCfhfY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',20,14),('2vaYqNCfhfY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',13,14),('2vaYqNCfhfY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',15,14),('43vgxD5JyQQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',4,NULL),('5JIIvc5BZ4s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',12,NULL),('5JIIvc5BZ4s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',12,12),('5JIIvc5BZ4s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',11,12),('5JIIvc5BZ4s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',12,12),('5JIIvc5BZ4s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',14,12),('5JIIvc5BZ4s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',14,12),('5JIIvc5BZ4s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',16,12),('7nVctvQVz0U','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',20,NULL),('7nVctvQVz0U','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',15,20),('8mk020WG3dI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',19,NULL),('8mk020WG3dI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',15,19),('8mk020WG3dI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',19,19),('8mk020WG3dI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',15,19),('8mk020WG3dI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',19,19),('8mk020WG3dI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',16,19),('8mk020WG3dI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',10,19),('8mk020WG3dI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',8,19),('8yDgHMNhK3E','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',6,NULL),('8yDgHMNhK3E','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',6,6),('8yDgHMNhK3E','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',10,6),('8yDgHMNhK3E','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',14,6),('8yDgHMNhK3E','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',11,6),('8yDgHMNhK3E','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',16,6),('8yDgHMNhK3E','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',18,6),('8yDgHMNhK3E','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',17,6),('8yDgHMNhK3E','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',14,6),('8yDgHMNhK3E','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',14,6),('8yDgHMNhK3E','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',18,6),('9_bTl2vvYQg','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',2,NULL),('9_bTl2vvYQg','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',2,2),('9_bTl2vvYQg','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',2,2),('9_bTl2vvYQg','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',3,2),('9_bTl2vvYQg','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',4,2),('9_bTl2vvYQg','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',4,2),('9_bTl2vvYQg','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',5,2),('9_bTl2vvYQg','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',4,2),('9_bTl2vvYQg','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',5,2),('9_bTl2vvYQg','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',5,2),('aEAhZpF-bCA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',3,NULL),('aEAhZpF-bCA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',3,3),('aEAhZpF-bCA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',4,3),('aEAhZpF-bCA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',5,3),('aEAhZpF-bCA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',6,3),('aEAhZpF-bCA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',7,3),('aEAhZpF-bCA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',6,3),('aEAhZpF-bCA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',13,3),('aEAhZpF-bCA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',13,3),('aEAhZpF-bCA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',12,3),('aEAhZpF-bCA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',10,3),('BK2RQhxf8Z4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',4,NULL),('BK2RQhxf8Z4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',4,4),('BK2RQhxf8Z4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',3,4),('BK2RQhxf8Z4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',2,4),('BK2RQhxf8Z4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',2,4),('BK2RQhxf8Z4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',2,4),('BK2RQhxf8Z4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',2,4),('BK2RQhxf8Z4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',3,4),('BK2RQhxf8Z4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',2,4),('BK2RQhxf8Z4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',3,4),('BK2RQhxf8Z4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',3,4),('cj3Q_8L-QA8','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',15,NULL),('cj3Q_8L-QA8','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',9,15),('dLgtd1k7lB0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',15,NULL),('dLgtd1k7lB0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',15,15),('dLgtd1k7lB0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',8,15),('dLgtd1k7lB0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',6,15),('dLgtd1k7lB0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',5,15),('dLgtd1k7lB0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',5,15),('dLgtd1k7lB0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',5,15),('dLgtd1k7lB0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',8,15),('dLgtd1k7lB0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',7,15),('dLgtd1k7lB0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',6,15),('dLgtd1k7lB0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',6,15),('E3DNlAVtlMY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',17,NULL),('Eda7cMFY7pA','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',12,NULL),('ERk4Lx-mOqQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',1,NULL),('ERk4Lx-mOqQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',1,1),('ERk4Lx-mOqQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',1,1),('ERk4Lx-mOqQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',1,1),('ERk4Lx-mOqQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',1,1),('ERk4Lx-mOqQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',1,1),('ERk4Lx-mOqQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',3,1),('ERk4Lx-mOqQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',1,1),('ERk4Lx-mOqQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',1,1),('ERk4Lx-mOqQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',1,1),('ERk4Lx-mOqQ','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',2,1),('fRyhqobl0sk','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',19,NULL),('fRyhqobl0sk','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',11,19),('fRyhqobl0sk','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',10,19),('fRyhqobl0sk','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',4,19),('G-fCOEZnnTs','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',18,NULL),('G-fCOEZnnTs','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',18,18),('G-fCOEZnnTs','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',18,18),('GJvGf_ifiKw','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',7,NULL),('iK7-C9KZXJk','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',17,NULL),('jHZBT1mqVBI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',8,NULL),('jHZBT1mqVBI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',8,8),('K58AefE1-v4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',19,NULL),('K58AefE1-v4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',19,19),('K58AefE1-v4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',16,19),('K58AefE1-v4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',16,19),('K58AefE1-v4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',18,19),('K58AefE1-v4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',18,19),('kBuO3ESCFXE','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',6,NULL),('kBuO3ESCFXE','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',7,6),('kBuO3ESCFXE','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',12,6),('kBuO3ESCFXE','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',18,6),('KJtOTXqaW9w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',7,NULL),('KJtOTXqaW9w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',7,7),('KJtOTXqaW9w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',6,7),('KJtOTXqaW9w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',9,7),('KJtOTXqaW9w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',9,7),('KJtOTXqaW9w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',10,7),('KJtOTXqaW9w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',13,7),('KJtOTXqaW9w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',10,7),('KJtOTXqaW9w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',8,7),('KJtOTXqaW9w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',11,7),('KJtOTXqaW9w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',11,7),('l5ylz9fhcbM','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',17,NULL),('L6NvQha2FWo','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',19,NULL),('moE3QFMggu0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',9,NULL),('moE3QFMggu0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',9,9),('moE3QFMggu0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',12,9),('moE3QFMggu0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',8,9),('moE3QFMggu0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',8,9),('moE3QFMggu0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',9,9),('moE3QFMggu0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',9,9),('moE3QFMggu0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',11,9),('moE3QFMggu0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',10,9),('moE3QFMggu0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',9,9),('moE3QFMggu0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',12,9),('nJl7r7waJJo','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',13,NULL),('O2tKlnfrLkY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',5,NULL),('O2tKlnfrLkY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',5,5),('O2tKlnfrLkY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',5,5),('O2tKlnfrLkY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',4,5),('O2tKlnfrLkY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',3,5),('O2tKlnfrLkY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',3,5),('O2tKlnfrLkY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',1,5),('O2tKlnfrLkY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',2,5),('O2tKlnfrLkY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',3,5),('O2tKlnfrLkY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',2,5),('O2tKlnfrLkY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',1,5),('Om_gqUBQzlI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',10,NULL),('Om_gqUBQzlI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',10,10),('Om_gqUBQzlI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',9,10),('Om_gqUBQzlI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',11,10),('Om_gqUBQzlI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',12,10),('Om_gqUBQzlI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',15,10),('Om_gqUBQzlI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',19,10),('Om_gqUBQzlI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',18,10),('Om_gqUBQzlI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',15,10),('Om_gqUBQzlI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',16,10),('Om_gqUBQzlI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',20,10),('rtIX6niRZFk','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',20,NULL),('su8lPj0PFKI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',20,NULL),('su8lPj0PFKI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',17,20),('sxDWEwG4hYk','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',20,NULL),('u1iOXfnVBtY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',6,NULL),('u1iOXfnVBtY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',5,6),('u1iOXfnVBtY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',4,6),('u1iOXfnVBtY','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',4,6),('U4ZY5EXJqGg','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',14,NULL),('WryQZ_OPpaI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',11,NULL),('WryQZ_OPpaI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',11,11),('WryQZ_OPpaI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',7,11),('WryQZ_OPpaI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',7,11),('WryQZ_OPpaI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',7,11),('WryQZ_OPpaI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',8,11),('WryQZ_OPpaI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',8,11),('WryQZ_OPpaI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',9,11),('WryQZ_OPpaI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',6,11),('WryQZ_OPpaI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',8,11),('WryQZ_OPpaI','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',9,11),('Y5909_w1tOc','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',17,NULL),('y7CrvsCIjyo','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',20,NULL),('y7CrvsCIjyo','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',20,20),('yD5SirhiSU0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',13,NULL),('yD5SirhiSU0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',13,13),('yD5SirhiSU0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',13,13),('yD5SirhiSU0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',10,13),('yD5SirhiSU0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',10,13),('yD5SirhiSU0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',13,13),('yD5SirhiSU0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',14,13),('yD5SirhiSU0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',17,13),('yD5SirhiSU0','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',19,13),('YIpRcM_qF9s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',18,NULL),('YIpRcM_qF9s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',17,18),('YIpRcM_qF9s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',12,18),('YIpRcM_qF9s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-22',11,18),('YIpRcM_qF9s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-29',14,18),('YIpRcM_qF9s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-05',12,18),('YIpRcM_qF9s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',7,18),('YIpRcM_qF9s','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',7,18),('yv81of-8awE','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',16,NULL),('yv81of-8awE','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',16,16),('yv81of-8awE','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-17',15,16),('yv81of-8awE','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-25',13,16),('yv81of-8awE','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-01',16,16),('yv81of-8awE','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-12-08',20,16),('ZB0amc1TZ3Y','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-12',19,NULL),('zeKCzmAKKP4','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2026-01-19',16,NULL),('zYR1h6v416w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-09',17,NULL),('zYR1h6v416w','PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs','2025-11-10',17,17);
/*!40000 ALTER TABLE `WeeklyTop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite` (
  `musicId` varchar(100) NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`musicId`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`musicId`) REFERENCES `Music` (`id`),
  CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `User` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `have`
--

DROP TABLE IF EXISTS `have`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `have` (
  `artistId` varchar(100) NOT NULL,
  `rewardId` int NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`artistId`,`rewardId`),
  KEY `rewardId` (`rewardId`),
  CONSTRAINT `have_ibfk_1` FOREIGN KEY (`artistId`) REFERENCES `Artist` (`id`),
  CONSTRAINT `have_ibfk_2` FOREIGN KEY (`rewardId`) REFERENCES `Reward` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `have`
--

LOCK TABLES `have` WRITE;
/*!40000 ALTER TABLE `have` DISABLE KEYS */;
/*!40000 ALTER TABLE `have` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-19  5:00:52
