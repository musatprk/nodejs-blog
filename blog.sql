-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `abid` int(11) NOT NULL AUTO_INCREMENT,
  `abhed` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `abcon` text COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`abid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

INSERT INTO `about` (`abid`, `abhed`, `abcon`) VALUES
(1,	'Ben Musa Toprak',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod elit a ligula iaculis, non cursus nisl ultricies. Praesent mollis ut justo eu pellentesque. Sed vitae orci vel sem ultricies scelerisque. Vivamus orci diam, pharetra a turpis et, ullamcorper molestie lacus. Integer blandit, arcu eget aliquet dictum, nulla nulla porttitor libero, nec ultrices elit tellus a sem. Donec gravida condimentum magna. Sed at semper dolor. Pellentesque quis elementum magna. Maecenas pulvinar rhoncus congue.\r\n\r\nQuisque malesuada non odio id semper. Phasellus blandit nunc a mattis cursus. Ut quis massa a lacus auctor mattis in id sem. Sed eu odio vitae arcu egestas accumsan. Aliquam nec ex sit amet libero interdum ornare. Pellentesque a enim at lectus ultricies ornare. Duis nec sagittis elit, in hendrerit sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque sollicitudin scelerisque interdum. Aenean leo mauris, sollicitudin nec scelerisque eget, sodales id lectus. Suspendisse scelerisque augue quis velit tincidunt ultricies. Praesent lacinia ultrices metus sed vestibulum. Nunc ac aliquet sem. Nulla facilisi. Duis vel suscipit mi. Praesent mollis turpis justo, id dictum magna efficitur id.\r\n\r\nNullam rhoncus velit vitae rutrum ultricies. Suspendisse eget purus efficitur, mollis metus ut, tincidunt purus. Nullam lacinia, nulla a laoreet maximus, lacus mi tempor dui, at vehicula dolor neque eu massa. Sed lacinia dolor vel scelerisque porta. Suspendisse sodales sed lorem pellentesque finibus. Maecenas facilisis vel orci vitae congue. Fusce nec ante tempus, auctor lacus at, gravida mi. Phasellus feugiat sem porta urna malesuada aliquam. Maecenas vitae libero rutrum, rutrum lorem et, volutpat nunc. Sed suscipit a metus id feugiat. In non mi pretium nunc semper ultrices. Praesent ac felis maximus, tempus nibh tincidunt, gravida augue.\r\n\r\nVestibulum condimentum consectetur neque sed blandit. Donec nibh quam, pellentesque eu velit a, volutpat mollis metus. Donec auctor sit amet nunc et placerat. Duis leo erat, viverra a ipsum nec, facilisis rhoncus justo. Nam blandit quam ipsum, in ornare augue bibendum a. Ut a facilisis velit. Cras sem turpis, vulputate sit amet turpis eu, pellentesque sagittis dolor. Vivamus id iaculis ex, ac malesuada lorem. Donec tempor elementum felis vel convallis. Nulla et diam et justo tempus sodales faucibus ac urna. Pellentesque iaculis porttitor eros, eu volutpat tortor vestibulum eu. Nunc a tempor neque. Aenean ac est dolor. Morbi eget fermentum mi. Phasellus nec nisi magna.\r\n\r\nNam sapien augue, dapibus in mauris vel, efficitur fermentum leo. Fusce pulvinar sed mauris nec gravida. Nunc et feugiat nisi. Suspendisse sit amet velit purus. Nam sodales rhoncus est, ac placerat diam tristique ultrices. Ut fringilla sollicitudin tellus, id sollicitudin felis congue vel. Nam malesuada enim vitae risus fermentum volutpat. Morbi bibendum nibh sit amet ullamcorper sollicitudin. Nullam rhoncus placerat ipsum, vel vulputate arcu vehicula ultrices. Maecenas fermentum malesuada libero, a tempor nulla aliquam sit amet.\r\n\r\nInteger rutrum felis magna. Vestibulum non aliquam dolor. Ut auctor justo eros, et porttitor tellus pharetra sit amet. Quisque ligula diam, accumsan in nulla fringilla, accumsan efficitur diam. Sed iaculis metus sed dolor ullamcorper, ac mollis diam rutrum. Nullam nec.');

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `comname` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `comment` text COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`comid`),
  KEY `cid` (`cid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `content` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

INSERT INTO `comment` (`comid`, `cid`, `comname`, `comment`) VALUES
(24,	2,	'oyuncu',	'baya iyi olmuş oyun'),
(25,	3,	'telefoncu',	'güzel telefon'),
(26,	4,	'coder',	'bir şey olmaz'),
(27,	5,	'coder hemşire',	'öldürdü bizi corona'),
(28,	6,	'new',	'mükemmel topluluk'),
(29,	1,	'oyuncu 1',	'zaten mükemmel oyundu şimdi daha iyi olmuş'),
(34,	1,	'oyuncu 2',	'aynen'),
(35,	1,	'oyuncu 3',	'hoşuma gitti');

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL AUTO_INCREMENT,
  `contactemail` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `contactmes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `contact` (`contactid`, `contactemail`, `contactmes`) VALUES
(1,	'musa.tprk2@gmail.com',	' sfdgdsgfgsasfdasdfdfsfsdfsdfssfss'),
(6,	'sa@gmail.com',	' merhaba nasılsınız');

DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `chd` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `con` text COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

INSERT INTO `content` (`cid`, `chd`, `con`) VALUES
(1,	'Beklenen Haber Geldi Euro Truck Simulator 2’ye Gelecek Türkiye Haritasının Çıkış Tarihi Belli Oldu',	'Merhaba bugün merakla beklenen ETS2(Euro Truck Sımulator 2) ye gelecek Türkiye haritasının çıkış tarihi açıklandı Türkiyede büyük bir kitlesi olan oyunun yapım şirketi SCS Software oyuna Road to the Black Sea adında bir DLC ekleyeceğini açıklamıştı  Türk oyuncuların merakla beklediği DLC içinde İstanbul Romanya ve Bulgaristanı barındıracak Daha ayrıntılı bakarsak bizi bu yeni DLC’de neler bekliyor?\r\n\r\n10.000 kilometreden fazla yol\r\nKeşfedilmeyi bekleyen Romanya, Bulgaristan ve Türkiye’nin bir parçası\r\nAvrupa’nın en büyük şehri İstanbul\r\n11 yeni yerel şirket ve endüstri\r\n20 yeni büyükşehir ve birçok ufak yerleşim alanı ve şehir\r\nŞehirlerin ünlü simgeleri\r\nKarakteristik Balkan mimarisi\r\nYepyeni 3D objeler\r\nYemyeşil iklim koşullarına uygun bitki örtüsü\r\nYerel yapay zeka trenler, tramvayları ve trafik araçları\r\nRomanya ve Bulgaristan kırsallarında at arabaları\r\nÇeşitli sınır kontrolleri ile birlikte sınır noktaları\r\nDanube nehir feribotu\r\nKaradeniz bölgesi başarımları\r\nGelelim şimdi DLC nin çıkış tarihine bugün SCS Software den beklenen açıklama geldi.Şirket blogundan yapılan paylaşıma  göre DLC 5 Aralık  2019 tarihinde oyun sevenler ile buluşacak DLC yi Steam de istek sayfanıza eklemek isterseniz burdan ulaşabilir ve çıkar çıkmaz satın alabilirsiniz'),
(2,	'TÜRKİYE’NİN İLK HİKAYE MODLU FPS TABANLI OYUNU SOLDİERS OF THE UNIVERSE',	'Merhaba bugün size Türkiye’nin hikaye tabanlı fps türündeki ilk oyunu olan SOLDIERS OF THE UNİVERSE\r\n(SOTU) oyununu anlatacağım ilk olarak oyunun geliştiricileri Rocwise Entertainment şirketi oyun 7 kişilik bir ekiple 7 ayda yapıyor ve oyun sektörüne ilk bu oyunla hızlı bir giriş yapıyor\r\nve güzel tepkiler alıyor nedeni gerek hikayesi gerek geliştiricileri tamamının Türk olması oyuna pozitif yönde bir artı sağlıyor gelelim oyunun hikayesine oyun 15 Temmuz ve Terörle Mücadeleyi anlatıyor\r\nOyunun geçtiği mekanlar;\r\nCizre/Şırnak /Türkiye\r\nNusaybin/Mardin/Türkiye\r\nCerablus /Halep/Suriye\r\nEl-bab /Halep/Suriye\r\nSultanahmet/İstanbul/Türkiye\r\nKahramanımızın adı Hakan uzun yıllar yurt dışında görev yapmış babasının ölümü ile Türkiye’ye dönüyor ve Armoya adlı bir ekip ile tanışıp gizli görevler yapıyor oyun maalesef erken erişimde birkaç tepki aldı bunlar bilgisayar tarafından kontrol edilen oyuncuların katkı vermemesi düşük sistemler için optimizasyon hataları seslendirmelerde senkron kaymaları gibi gibi ama oyun genel olarak oynanabilir geliştirilebilir yönü olduğu kadar iyi yönleride var oyun fiziği patlama efektleri fiyatının uygun oluşu cop ve multiplayer modu ve unreal engine 4 ile geliştirme imkanı oyuncuları mutlu edecek düzeyde her ne olursa olsun ülkemizde böyle işlerin yapılması gurur verici gelelim aklınızdaki soruya ? oyun Türkçe, geliştiriciler Türk neden ismi Türkçe değil Rocwise Entertainment şirketi oyunu tüm dünyada yayınladığı için oyuna İngilizce bir isim vermişler ayrıca oyunda Türkçe İngilizce ve Arapça dublaj olacak ve 8 dilde altyazı olucağınıda söyleyelim. Oyunumuzun sistem gereksinimleri\r\n• 64-bit işlemci ve işletim sistemi gerektirir.\r\n• İşletim Sistemi: Windows 7 64-Bit or later.\r\n• İşlemci: Intel Core i3-3225 @ 3.30GHz.\r\n• Bellek: 4 GB RAM.\r\n• Ekran Kartı: nVidia GeForce GTX 500 Series 1GB / AMD Radeon HD 6000 Series 1GB.\r\n• DirectX: Sürüm 11.\r\n• Depolama: 15 GB kullanılabilir alan.\r\n• Ses Kartı: N/A.\r\nOyuna Aşağıdaki linkten ulaşabilirsiniz.\r\nhttps://store.steampowered.com/app/640050/Soldiers_of_the_Universe/'),
(3,	'GALAXY NOTE 10 VE NOTE 10+ İNCELEME',	'Merhaba bugün size Galaxy UNPACKED 2019 tanıtılan Samsung Galaxy Note 10 ve Note10+ tanıtacağız öncelikle bu Note ilkleri barındıran bir seri Samsung ilk defa bir Note serisinde iki farklı seçenekle karşımıza çıktı ve Apple çok eleştirdiği 3.5 mm Jak girişini kaldırdı ve Samsung un ilk 5G destekleyen cihazı oldu ve Samsung 5G destekleyen cihazlarında öncüsü oluyor Şimdi gelelim özelliklerine Galaxy Note 10’da ekran çözünürlüğü 2280 x 1080 piksel ve Galaxy Note10+’da ise 3040 x 1440 piksel olarak açıklanıyor ve Galaxy Note10 401 ppi ve Galaxy Note10+ 498 ppi olduğunu söyleyelim.Ekran Galaxy Note10 da 6.3 inch Galaxy Note10+ da ise 6.8 Samsung burdada Note serisinin ekran boyutu en küçük ve büyüğünü yapıyor ve Ekran Gövde oranı en yüksek Note olarak karşımıza çıkıyor Ekran Corning Gorilla Glass 6ile korunuyor ve gücünü 7nm mimarisine sahip Exynos 9825’ten alıyor. Ancak, bazı pazarlarda telefonların Snapdragon 855 ile geldiğini hatırlatalım. Samsung’un yakın zamanda tanıtılan Exynos 9825 işlemcisinin 2.73 GHz hızında çalışan iki adet M4 Mongoose çekirdeğine, 2.31 GHz hızında çalışan iki adet Cortex A75 ve 1.95 GHz hızında çalışan dört adet Cortex A55 çekirdeği eşlik ediyor. Gelelim Ram ve Depolama burada cihazlar birbirinden ayrılıyor Galaxy Note10 8 GB RAM ve 256 GB Dahili hafıza olarak karşımıza çıkıyor ve Micro SD kart girişi yok Aksine\r\nGalaxy Note10+ ise 12 GB RAM ve 256-512 GB Dahili Hafıza sçenekleri ve Micro SD kart girişi ile hafıza arttılabilir şekilde tanıtıldı Kamera olarak ise Samsung S10 da ilk kez karşımıza çıkan ekranda kamera deliği tasarımı Note 10 serisin de kendini gösteriyor ve iki telefonda da 10 Megapiksel çözünürlüğünde f/2.2 diyafram değerine sahip tek kamera kullanılıyor.Arka kamerada ise gene telefonlar birbirinden ayrılıyor Note 10 üçlü kamera kurulumu olurken Galaxy Note 10 Plus dörtlü kamera kurulumuyla geliyor. 16 Megapiksel çözünürlüğündeki f/2.2 diyafram değerine sahip ultra geniş açılı ana kamera 123 derecelik fotoğraflar çekebiliyor. 12 Megapiksel çözünürlüğündeki OIS destekli, 77 derecelik fotoğraflar çekebilen geniş açılı kamera ve 12 Megapiksel çözünürlüğünde OIS destekli telefoto kamera da üçlü kamera kurulumunun diğer üyeleri olarak karşımıza çıkıyor. Plus versiyonda ek olarak derinlik algılayan kamera kullanılıyor. Batarya ise Note 10 3.500 mAh ve Note10+ ise 4.300 mAH olarak tanıtıldı kutudan 25W adaptör çıkıyor fakat yeni tanıtılan 45W süper hızlı şarj teknolojisini destekleyen modeller için ekstra adaptör almak gerekiyor.45 W adaptörde 30 dakikada şarjı doluyor. Güvenlik ise cihazda parmak izi okuyucu mevcut Note aksine parmak okuyucu telefonun arka kısmında değil S10 da gördüğümüz gibi ekrana gömülü olarak geliyor ve Note 9 da gördüğümüz gibi Yüz tanıma sistemide var. Ve Note serisinin olmazsa olmazı S PEN Note 10 ve Note10+ S PEN bulunuyor ve S PEN ‘e farklı sensör eklenmiş ve Samsung bu kontrolün geliştiricilere paylaşması yeni bir özellik yani S PEn kullanarak oyun ve programları kullanabileceğiz.Gelelim fiyat Galaxy Note 10 Türkiye fiyatı 9.899 TL Note 10+ Türkiye fiyatı ise 11.399 TL olarak resmi sitede satışta. Ayrıca ön siparişte Galaxy Buds‘ın da hediye olarak verildiğini hatırlatalım. Ve renk seçeneği olarak Duman Siyahı,Fildişi Beyazı ve Ay Tozu Beyazı olarak karşımıza çıkıyor.'),
(4,	'Yapay Zeka Bilinçsiz Öğrenme Sorunsalı',	'Yapay zekanın ne demek olduğunu, nasıl çalışmalar yapıldığını hepimiz biliyoruz. Bu yüzden bu tanımlama kısmını geçerek asıl değinmek istediğimiz konuya geliyoruz. Öğrenme. Ama bilinçli olarak değil. Bilinçsizce.\r\nŞöyle ki, herkes tarafından yapay zekanın bilinç kazanıp kazanamayacağı tartışılırken aslında insan zekasında bilinçsiz öğrenme kabiliyeti olduğu dikkatlerden kaçıyor gibi. İnsan beyni bir konu hakkında bilgi sahibi olurken aynı aşamada dolaylı olarak farklı konularda da bilgi sahibi olma yeteneğine sahip. Biz bunu kartopu etkisi şeklinde adlandırdık. Örneğin bisiklet sürmeyi öğrenen bir çocuğu ele alalım. Bisikleti sürebilmek için bisiklet ile dengede durması gerektiğini, pedal çevirmesi gerektiğini öğrenmekte. Bunların pek çoğunu bilinçli olarak yapmakta. Ancak kartopu etkisi demiştik. İşte burada bisiklet sürmeyi öğrenen bir çocuk bisiklet sürmenin haricinde kartopu etkisiyle bilinçsiz bir şekilde sadece bisiklet sürdüğünü düşünürken çevresel faktörleri de beyin süzgecinden geçirerek yere düştüğündeki acıyı, sürtünmeden yırtılan kıyafetin hassasiyetini, rüzgarın hissini, arkadaşlarının vereceği tepkileri, bisikletini nereye park etmesi gerektiği, diğer bisikletlerden farkını, yolda daha önceden bilmediği ama karşılaşabileceği tehlikeleri, bir taşın üzerindeki geçtiğinde taşın sert bir cisim olduğuna dair hissi bile değerlendiriyor. Örnekleri sayısız şekilde çoğaltabiliriz. Peki yapay zekada böylesine bir öğrenme yeteneğine ve tekniklerine sahip bir algoritmanın fiziksel karşılığı var mı? Böyle bir çalışma yapılmış mı? Yapıldıysa saniyede milyarlarca bilgi işleyebilen bu bilgisayarların sizin yıllar süren bilinçsizce yaptığınız değerlendirmeleri saniyeler içinde yaparak ne büyük bir bilgi üretebileceğini hayal edebiliyor musunuz? Herhangi bir duyu organı olmayan bu zekaya kamera, mikrofon gibi uzuvlar yerleştirerek bu yetileri hangi ölçüde kazandırabiliriz? Bu zekanın sınırlarını nasıl belirleyebiliriz? Gerçekten yapay zekaya bu şekilde bilinçsizce öğrenme yeteneğini kazandırabilir miyiz yoksa sınırlarını gerçekten bizim belirleyeceğimiz yapay zeka adında bahsedilenin aksine sadece gelişmiş bir kuantum bilgisayar algoritması olarak mı kalacak?'),
(5,	'Corona Virüs’ün Teknoloji’de Nelere Yol Açtı?',	'Geçtiğimiz günlerde sağlığımızı tehdit eden Corona Virüs(Covid-19) ile ilgili Microsoft’un Bing ekibi tarafından anlık olarak yayılımı takip edebileceğiniz internet sitesini buradaki yazımızda paylaşmıştık.\r\nBu yazımızda ise Corona Virüsün teknoloji alanına etkilerini ele almaya çalışacağız.\r\nDünya genelinde aralarında Microsoft, Amazon, Google, Twitter gibi teknoloji devlerinin de bulunduğu, ülkemizde ise Yemeksepeti, GittiGidiyor gibi birçok firma virüsün yayılmasına engel olmak adına evden çalışma konusunda çalışanlarını teşvik ettiği bilinmekte. Ülkemizde de ortaya çıkan vakalar sonucunda #evdekal çağrısı hızla yayılırken insanlar kendilerini ve etraflarındakileri korumak adına evlerinden çıkmamaya hatta home ofis çalışmaya başladılar.  Hal böyle olunca zaruri alışveriş ihtiyaçları online olarak gerçekleştirilerek e-ticaret satışlarını ciddi ölçüde artırdı. En çok sipariş edilen ürünler ise kolonya, dezenfektan, maske, sabun gibi hijyenik ve medikal ürünlerin olduğu görülmekte.\r\n\r\n \r\n\r\nOyun Sektörünü Ciddi Oranda Değiştirdi\r\nE-ticaret sektörü dışında oyun sektörü de ciddi oranda değer kazanmış vaziyette. Evde vakit geçirmekte zorlanan insanlar oyun oynamayı tercih etmiş gibi gözüküyor. Öyle ki dev oyun platformu Steam, muhtemelen Corona virüsü salgını nedeniyle evinde oturanlar sayesinde Twitter’da paylaşılan veritabanı istatistiklerine göre 15 Mart Pazar günü platform üzerinden 6.2 milyon kişi aynı anda oyun oynayarak yeni bir rekora ulaştı. Counter-Strike: Global Offensive oynayanların sayısı ise 14 Mart Cumartesi günü  1 milyonu geçerek bir rekora imza attı. 1 milyonun üzerini daha önce PUBG ve Dota 2 geçmişti. Bunun yanı sıra oyun sektörünün en önemli konferanslarından birisi olarak bilinen Game Developers Conference ve pek çok espor organizasyonu Corona virüs nedeniyle ileri tarihlere ertelendi. PAX East’e Sony katılmadığı için The Last of Us 2’nin ilk halka açık gösterimi ve TwitchCon 2020 iptal olduğunu duyurdu. Dünya’nın en büyük oyun fuarlarından birisi olan E3, bu sene yapılmayacağını, etkinliğin dijital ortama taşınması için çaba gösterdiklerini duyurdu.\r\nSosyal medya platformlarını da etkileyen salgın pek çok yanlış ve yanıltıcı bilgi içermekle birlikte çok sayıda yeni uygulamaya da ev sahipliği yapmaya başladı.\r\nInstagram tarafından yapılan yazılı açıklamada platformda bulunan Corona virüsü temalı tüm filtrelerin engellendiği ve bundan sonra da bu tür filtrelere ulaşılamayacağı yer aldı. Bir kişinin yüzünü tarayarak Corona virüsü teşhis edebildiklerini iddia eden hesapların ve filtrelerin de engellendiği bildirildi.\r\nTeknoloji alanında yeni gelişmeler oldukça bu yazımızın sürekli olarak güncelleneceğini belirterek son olarak küçük uyarılar yapalım. Dünya genelinde tedirginlik yaratın salgın ile ilgili panik yapılmamasını, yetkililerin uyarılarını önemle dikkate alarak kişisel hijyeni korumaya önem vererek toplu ortamlardan mümkün oldukça uzak kalınması gerektiğini vurgulayalım. #evdekal'),
(6,	'New node social yayında',	'bizi takip edin @newnodesocial');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `usid` int(11) NOT NULL AUTO_INCREMENT,
  `usname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `uspaswrd` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`usid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `users` (`usid`, `usname`, `uspaswrd`) VALUES
(1,	'musa',	'00000000');

-- 2021-01-18 20:18:11