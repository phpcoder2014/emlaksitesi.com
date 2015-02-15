-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Kas 2014, 20:26:00
-- Sunucu sürümü: 5.6.16
-- PHP Sürümü: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `emlak_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_emlak`
--

CREATE TABLE IF NOT EXISTS `tbl_emlak` (
  `emlak_id` int(11) NOT NULL AUTO_INCREMENT,
  `emlak_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `emlak_sahibi` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `alan` varchar(5) COLLATE utf8_turkish_ci NOT NULL,
  `emlak_turu` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `durum` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `sehir` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ilce` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `oda` varchar(5) COLLATE utf8_turkish_ci NOT NULL,
  `salon` varchar(2) COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `kategori` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Pazar_yeri` int(11) NOT NULL,
  `Metrobus` int(11) NOT NULL,
  `Merkezi` int(11) NOT NULL,
  `Esyali` int(11) NOT NULL,
  `Okul` int(11) NOT NULL,
  `Deniz` int(11) NOT NULL,
  `Koy` int(11) NOT NULL,
  `dag` int(11) NOT NULL,
  `bahceli` int(11) NOT NULL,
  `metro` int(11) NOT NULL,
  `otogar` int(11) NOT NULL,
  `bos` int(11) NOT NULL,
  `kiraci` int(11) NOT NULL,
  `kapici` int(11) NOT NULL,
  `park` int(11) NOT NULL,
  `merkeze_uzak` int(11) NOT NULL,
  `sehir_disi` int(11) NOT NULL,
  `aidatli` int(11) NOT NULL,
  `sifir` int(11) NOT NULL,
  `ikinci_el` int(11) NOT NULL,
  `resim_1` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `resim_2` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `resim_3` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `resim_4` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `resim_5` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `resim_6` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`emlak_id`),
  KEY `resim` (`fiyat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=20 ;

--
-- Tablo döküm verisi `tbl_emlak`
--

INSERT INTO `tbl_emlak` (`emlak_id`, `emlak_baslik`, `emlak_sahibi`, `alan`, `emlak_turu`, `durum`, `sehir`, `ilce`, `adres`, `oda`, `salon`, `aciklama`, `fiyat`, `kategori`, `Pazar_yeri`, `Metrobus`, `Merkezi`, `Esyali`, `Okul`, `Deniz`, `Koy`, `dag`, `bahceli`, `metro`, `otogar`, `bos`, `kiraci`, `kapici`, `park`, `merkeze_uzak`, `sehir_disi`, `aidatli`, `sifir`, `ikinci_el`, `resim_1`, `resim_2`, `resim_3`, `resim_4`, `resim_5`, `resim_6`) VALUES
(2, 'Boğazda 3+1 daireler', 'Nihat Şendil', '120', '', 'Kiralık', 'Bursa', '', '', '3', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci.', '450', '1', 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 'property-small-1.png', 'property-large-1.jpg', 'property-large-2.jpg', 'property-large-3.jpg', 'property-large-4.jpg', ''),
(3, 'Sahibinden acil satılık', 'Hasan Durmaz', '145', '', 'Satılık', 'Balıkesir', '', '', '4', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '125,000', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-2.png', 'property-large-2.jpg', 'property-large-3.jpg', 'property-large-4.jpg', 'property-large-5.jpg', ''),
(4, 'Deniz manzaralı daire', 'Erkan Şahin', '124', '', 'Kiralık', 'Bursa', '', '', '2', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio.Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio.Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '250', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-3.png', 'property-large-3.jpg', 'property-large-2.jpg', 'property-large-4.jpg', 'property-large-6.jpg', ''),
(5, 'Satılık çiftlik evleri', 'Samet Şener', '1250', '', 'Satılık', 'Çanakkale', '', '', '6', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '250,000', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-4.png', 'TuzlaEmlakKonutlari2_05.jpg', 'property-large-2.jpg', 'property-large-3.jpg', 'property-large-4.jpg', ''),
(6, 'Kiralık sezonluk villa', 'Demet Ak', '250', '', 'Kiralık', 'Bursa', '', '', '4', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '450', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-5.png', '95b69c7a0c11d643c09257b59839f426.jpg', '', '', '', ''),
(7, 'Öğrenciye eşyalı ev', 'Tanrıverdi Emlak', '145', '', 'Kiralık', 'Bursa', '', '', '3', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '375', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-6.png', '', '', '', '', ''),
(8, 'Öğrenciye eşyalı daire', 'Serkan Okur', '142', '', 'Kiralık', 'Bursa', '', '', '3', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '450', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-1.png', 'property-large-1.jpg', 'property-large-2.jpg', 'property-large-3.jpg', 'property-large-4.jpg', ''),
(9, 'İhtiyaçtan acil satılık çiftlik', 'Hamza Sert', '2500', '', 'Satılık', 'Balıkesir', '', '', '6', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '325,000', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-2.png', '', '', '', '', ''),
(10, '1+1 Öğrenci Apartı', 'Serkan Okur', '123', '', 'Kiralık', 'Karacabey', '', '', '3', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '465', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-3.png', 'property-large-1.jpg', 'property-large-2.jpg', 'property-large-3.jpg', 'property-large-4.jpg', ''),
(11, 'Komple satılık bina', 'Öztürk Ceylan', '125', '', 'Satılık', 'İstanbul', '', '', '3', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '650,000', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emlak_resim.php_.jpg', 'property-large-1.jpg', 'property-large-2.jpg', 'property-large-3.jpg', 'property-large-4.jpg', ''),
(13, 'İhtiyaçtan acil satılık', 'Semra solmaz', '90', '', 'Satılık', 'Ankara', '', '', '3', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '75,000', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gazeteemlakilan.jpg', 'property-large-1.jpg', 'property-large-2.jpg', 'property-large-3.jpg', 'property-large-5.jpg', ''),
(14, 'İhtiyaçtan acil satılık', 'Semra solmaz', '90', '', 'Satılık', 'Ankara', '', '', '3', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '75,000', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gazeteemlakilan.jpg', 'property-large-1.jpg', 'property-large-2.jpg', 'property-large-3.jpg', 'property-large-5.jpg', ''),
(15, 'İhtiyaçtan acil satılık çiftlik', 'Hamza Sert', '2500', '', 'Satılık', 'Balıkesir', '', '', '6', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '325,000', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-2.png', '', '', '', '', ''),
(16, '1+1 Öğrenci Apartı', 'Serkan Okur', '123', '', 'Kiralık', 'Karacabey', '', '', '3', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '465', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-3.png', 'property-large-1.jpg', 'property-large-2.jpg', 'property-large-3.jpg', 'property-large-4.jpg', ''),
(18, 'Sahibinden acil satılık', 'Hasan Durmaz', '145', '', 'Satılık', 'Balıkesir', '', '', '4', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '125,000', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-2.png', 'property-large-2.jpg', 'property-large-3.jpg', 'property-large-4.jpg', 'property-large-5.jpg', ''),
(19, 'Öğrenciye eşyalı ev', 'Tanrıverdi Emlak', '145', '', 'Kiralık', 'Bursa', '', '', '3', '', 'Etiam at ante id enim dictum posuere id vel est. Praesent at massa quis risus cursus tristique vel non orci. Phasellus ut nisi non odio', '375', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'property-small-6.png', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_irtibat`
--

CREATE TABLE IF NOT EXISTS `tbl_irtibat` (
  `ilet_id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` varchar(250) COLLATE utf32_turkish_ci NOT NULL,
  `email` varchar(250) COLLATE utf32_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf32_turkish_ci NOT NULL,
  `zaman` varchar(25) COLLATE utf32_turkish_ci NOT NULL,
  PRIMARY KEY (`ilet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_uye`
--

CREATE TABLE IF NOT EXISTS `tbl_uye` (
  `uye_id` int(11) NOT NULL AUTO_INCREMENT,
  `kadi` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `pass` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`uye_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `tbl_uye`
--

INSERT INTO `tbl_uye` (`uye_id`, `kadi`, `pass`) VALUES
(1, 'admin', '123456');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
