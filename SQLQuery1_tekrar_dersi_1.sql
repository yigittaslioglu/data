/* SQL SORGULARI ÇALIÞMA 3. hafta -----------------------------*/
/*BURADA YGTASLÝ DATABASEDEN BAÞLIYORUM*/

Create Database DenemeDatabase /*create database komutu veritabaný oluþturmaya yarayan bir komuttur ve 
üç temel komuttan biridir. sadece f5 tuþu ile komutlarýmý çalýþtýrabilir ya da seçip f5e bassarak sadece o komutu çalýþtýrabilirim
bu komutu çalýþtýrmadan önce hangi veritabanýnda çalýþtýðýný bilmem gerekiyor yukarýdan kontrol ediyorum bunun için ve master yazdýðýný görüyorum
bu komutu veritabaný sisteminin motoruna yani engine'nine gönderiyorum ve bu komutun çalýþmasýný saðlýyorum. komutu çalýþtýrdýktan sonra güncel durumu
görebilmek için sol tarafa gidip güncelleme butonuna basmam gerekmektedir. bundan sonra alter komutuna geçeceðim*/


Alter Database DenemeDatabase Modify Name = DenemeDatabase3; /*burada veritabanýnýn alter komutu ile düzenle demiþ oluyorum ve Modify modifiye etmekten
gelir. alter de deðiþtirmek demektir. yani veri tabanýnýn ismini deðiþtir ve DenemeDatabase3 þeklinde düzenle demiþ oluyorum. bunun için alter komutumu 
önce yazdým ve sonra database ismini deðiþtirmek istediðim için database yazdým ve güncel ismini yazdým. daha sonra modify name diyerek ismini
deðiþtirmek istediðimi belirttim ve güncel ismi eþittir yazdým. komutlarýn mantýðý biraz daha ingilizce cümle yapýsýndadýr.
bu yüzden önce veritabanýný düzelt diyorum, sonrasýnda bana hangi veritabanýný düzeltmek istediðimi soruyor. ismini veriyorum ve ne þekilde düzeltmek
istediðimi söyleyerek komutu bitiriyorum. emir cümlesinden sonra nesneyi söylüyorum ve sonra neyi düzelteceðini söylüyorum.*/

/*refresh için database üstüne gelip en üstteki, sonra sað týk yapýp refresh de diyebilirim.*/

Drop Database DenemeDatabase3; /*veritabanýný silmek çok basit drop komutunu kullanýp yine database de deðiþiklik yapmak istediðim için database 
yazýyorum ve en sonunda da silmek istediðim veritabanýnýn ismini veriyorum. bu sayede veritabanýný silmiþ oluyorum. bunu ayný þekilde veritabaný üzerine gelip
sað týk delete diyebilirim. ancak aþaðýdaki kutularý tiklemem lazým yani mevcut baðlantýlarý kapat demem lazým. ancak bunlarý komutla yapmak çok daha önemli
*/


/*yukarýdaki master yani hangi dbde olduðumu gösteren kýsýmda kodla iþlem yapabilmek için Use deyip db ismini yazmak gerekiyor*/
Use ygtasli /*þeklinde. bundan sonra yazýlan kodlarý o dbye gönderecek*/

/* tablo olulturmak için yine create komutunu kullanmam gerekiyor ve create table dedikten sonra tablonun ismini vermem gerekiyor
sonrasýnda parantez açýyorum ve aþaðýda kapatýyorum artýk her þey bu parantez içerisinde olacak.*/
Create Table OGR11(
kayitno int identity(1,1),
tcno1 nvarchar(11) not null,
ad nvarchar(50) not null,
soyad nvarchar(50) not null,
dogtar smalldatetime not null
)
/*kayitno diyerek tablomun adýný ve sonrasýnda int yazarak tablomda yer alacak verinin türünü yazmýþ oluyorum. her zaman identity kullanmak zorunda deðilim
ancak kullanýrsam direkt olarak içerisinde veriyle baþlamýþ olacak ve 1den baþlayarak her seferinde 1 atýrarak veriler devam edecek, birdaha da ben
deðiþtiremem. artýk elimle buraya veri girmeme gerek yok ben bir veri silsem bile en son kaldýðý yerden devam edecek. sonrasýnda virgül koyup bir alt satýra
geçiyorum ve tcno yazýp yeni sütun ismimi belirtiyorum. tcno verisini, eðer herhangi bir sayýsal veriyle matematiksel iþlem yapmayacaksam bunu 
text olarak tutmak daha saðlýklýdýr. kuralýna uyarak text þeklinde tutacaðým. bu yüzden nvarchar(11) diyorum yani verimi texte dönüþtürmek için nvarchar
veri türünü kullanýyorum ve parantez içerisinde 11 yazýyorum yani maksimum 11 karakterli olmasýný istiyorum. sonuna da not null ekliyorum yani bunu 
herhangi bir iþlemde varsayýlan olarak boþ geçemezsiniz demek. sonrasýnda ad ve soyad için de ayný þeyi yapýyorum ve boþ geçememesini saðlaýð istediðim
maks karakter sayýsýný giriyorum. doðum tarihine geldiðimde ise smalldatetime veri türünü kullanýyorum ancak datetime veri türünü de kullanabilirim.
artýk çalýþtýrmaya hazýrým ve bu kodu çalýþtýrdýðýmda bana belirlediðim özelliklerde bir tablo oluþturacak. sol tarafta tablolarýmýn altýnda 
tablolarýmýn özelliklerini de görebilirim sonrasýnda bunlarý da inceleyeceðiz. tables altýnda oluþturduðum tablea týklayýp columns kýsmýna geldiðimde 
oluþturduðum sütun isimleri ve özelliklerini görebiliyorum burada not null kýsýtlamasý ve veri türümü görebiliyorum. oluþturduðum tabloda sað týklayýp
design dersem oluþturduðum tabloyu grafiksel bir arayüzle göreceðim. select top 1000 verinin içeriðini görmek için kullanýlýr. edit top 200 rows dediðimde
ise, bana 200 satýr edit etmeme izin veriyor. çünkü örn 100milyon satýrlýk bir tabloda bu sorguyu yanlýþlýkla çalýþtýrýp kaynaklarý bitirmemek için bu 
þekilde sýnýrlar koyulmuþ. özelliklerden kalkar ama kaldýrma. ya da yukarý çýkarýlabilir sýnýr. buna týklayýnca tablom geliyor.*/

/*artýk burada kendi tablomu görüyorum ve buradan ilk kaydýmý oluþturabilirim. kayitno kýsmýnda veri giremediðimi görebilirim çünkü o sütunu
otomatik dolduracak þekilde yaptým. sonrasýnda tcmi adýmý vs yazarak sütunlarýmý dolduruyorum. date sütununda aralarýna nokta koyarak doldurdum ve 
aþaðýki satýra oklardan indiðimde artýk kayýdým yapýlmýþ oldu ve sýrayý da otomatik vermiþ oldu. tcno kýsmýnda 11 karakter doldurma zorunluluðum yok 
ancak en fazla 11 karakter girme zorunluluðum bulunmakta bu sýnýrý aþmaya çalýþtýðýmda bana bir hata ile karþýlaþtýðýna daire bir mesaj verecek.
yani daha azýna itiraz etmeyecektir ancak daha fazlasýna yer ayýrmadýðým için itiraz edecektir.*/

/*Alter komutun ile alýþtýrma yapacaðýz. tabloyu düzeltmek için alter table komutunu kullanýyorum. bundan önce db demiþtik þimdi table diyorum.
eðer mevcut tabloda bir deðiþiklik yapmak istiyorsam bunu alter table komutu ile yapacaðým. bunun için alter tabledan sonra çalýþacaðým tablonun
ismini yazacaðým.*/

Alter Table OGR11 Add Ana_adi nvarchar(50) 
Alter Table OGR11 Add Baba_adi nvarchar(50) /*alter table ve çalýþacaðým tablo adýný yazdýktan sonra eklemek istediðim tablo ismini yazdýktan sonra
veri türümü ekliyorum ve içerisine ne kadar sýnýr olmasýný istediðimi yazýyorum. sonra tablo columns kýsmýný refresh ediyorum ve görünüyor. sonradan
oluþturduðum için de içerilerinin boþ olmasý normal. tablo sayfsýna geçip ctrl 1,2,3 tuþarýn bastýðýmda bana diðer tablo sayfalarýný açacak örn diagramý da
*/

Alter Table OGR11 Add sil tinyint /*tabloma sil adýnda ve tinyint veri tipinde bir sütun daha ekliyorum. yani veri türü 1 ile 255 arasýnda küçük bir tür*/

Alter Table OGR11 Alter column sil smallint /*veri türünü deðiþtireceðim alter table OGR11 dedikten sonra deðiþiklik iþlemi yapacaðým için tekrardan alter diyeceðim.
alter column diyerek sütun üzerinde deðiþiklik yapacaðým için column diyorum ve sütun ismimi yazdýktan sonra yeni veri türümü yazýyorum. smallint 65.535e
kadar veri alabilmektedir.*/

Alter Table OGR11 Alter column sil int /*tekrardan veri türü deðiþikliði yaparak int yaptým.*/


Alter Table OGR11 Add constraint ck_sil1 check ([sil] <= 1200) /*bu bir sýnýrlamadýr. bundan sonra sil alanýna 1200den büyük bir sayý girilemeyecek.
bu veri bütünlüðünü saðlamak üzere yapýlan bir iþlemdir. sil sütunuma bir sýnýrlama koymuþ oldum. bundan sonra yanlýþlýkla girilebilecek büyük sayýlar 
vs için de sýnýrlama koymuþ oldum. bunun için veya benzeri þeyler için de check yazabilirim aslýnda kontrol bluklarý gibi çalýþýyorlar.
örn ders kodu gireceðim. ancak hiç olmayan bir dersin kodunu girdim yani bu tazr bir kontrol yazmazsam yeni bir des kodu oluþturmuþ mu olacaðým, bunun
olmamasý gerekmektedir. ya da tombul parmak sendromlarýný engelleyebilmek için kullanýlýrlar. bunu yine oluþturduðum ck üzerine gelip saðtýk modify diyip
grafik arayüz üzerinden de düzeltebilirim.*/




/*index iþlemleri*/
/*tablomda çok fazla satýr varsa verilerimi bulmakta zorlanabilirim. bir tcno arayacaksam gidip tüm tcnolarý aramama gerek yok bunun için index oluþturuyorum,
bunun için uniq indexte oluþturulabilirim ancak uniq indexler daha farklý þekilde oluþturulabilir.index oluþturmak için Create index demem gerekiyor
ve sonra index adýný belirlemem gerekiyor bundan sonra on diyip hangi tablo üzerinde oluþturacaksam onu yazmam gerekiyor. sonra da hangi sütunda yazacaðýmý
yazmam gerekiyor*/

Create index Indx_tcno1 on OGR11(tcno1)/*çalýþtýrdýktan sonra sol tarafta indexes alanýnda oluþturduðum indexi görebilirim. index oluþturmanýn örn cinsiyet 
için bir mantýðý yok zaten ya kadýn ya da erkek olacaktýr ancak fazla uniq deðiþken içeren sütunlar için oluþturmak mantýklýdýr. bunlara ek olarak default
da ekleeybilirim Default(0) dediðimde 0 dolu olarak gelecektir oluþturduðum veri. örn: */

Alter Table OGR11 Add logtar datetime Default(getdate()) /*default olarak gün dolu gelecek bir tablo oluþturabiliyorum. o anýn gününü ekleyecek
veriyi ekleyip tabloyu ctrl r ile tekrardan çalýþtýrdýðýmda günü eklediðini görebiliyorum. bu kodda alter table OGR11 dedikten sonra logtar adýnda
bir tablo oluþturmadým ancak kodumu çalýþtýrdý bu sayede logtar adýnda bir tablo da eklemiþ oldu ve datetime verisi eklemek istediðimi söyledim ve 
burada da default olarak eklenen anýn tarihini eklemek istediðimi söyledim ve artýk o sütunlar otomatik olarak dolu gelecek. bunlar verileri loglamak için
kullanýlabilir bu satýrýn ne zaman oluþturulduðunu anlamak için kullanýlýr. yani ben buraya artýk bir deðer girmezsem kodun oluþturulmuþ olduðu tarih 
girilecek.*/


/*þimdi de unique index oluþturacaðým*/
Create Unique index  Indx_ad on OGR11(ad) /*ad alanýnda bir unique index oluþturdum ve adýný verdim. artýk ad alanýnda birden fazla ayný adý 
giremeyeceðim bunu sadece uniq index nasýl oluþturulabilir görmek için yazdým. normalde böyle bir þey yapmamam gerekiyor.burada addan sonra virgül
koyup soyad þeklinde de devam edebilirdim ve bu uniq indexi birden fazla alanda tanýmlamýþ olabilirdim. ancak burada adý ve soyadý aynný anda olmamalý.*/



/*View konusu: aslýnda görünüm oluþturmak için kullandýðýmýz bir yapý.*/
Select tcno1, ad from OGR11 /*sadece tcno ve adýný görmek istediðim için ogr11 tablosundan onlarý seçtim. iþte ben bu sorguyu bir görünüm olarak 
kaydedebilirim ve tekrar tekrar ayný sorguyu yazmak yerine bu görünümü çaðýrabilirim. bunun için create view komutunu kullanmam gerekiyor ve sonra yine
isim vermem gerekiyor aralarýna da as yazmam gerekmektedir.*/

CREATE VIEW OGRtcad AS
Select tcno1, ad from OGR11 /*viewlerde bu tablomu görebilirim. aslýnda olulan þey bir tablo olarak gözüküyor ancak bu aslýnda sanal bir tablo
bunun seçimi de aþaðýdaki örnekte yer alýyor*/


Select * from OGRtcad /*çýkan sonuçta görüldüðü gibi tamamýný seçmeme raðmen tablom ogrtcad olduðu için sanal tablomun tamamý geldi normal bir tabloymuþ
gibi çalýþmakta. bundan sonra viewimde alter iþlemi ile güncellemeler de yapabilirim.*/

Alter view OGRtcad 
as
Select tcno1, ad,soyad from OGR11 /*ogrtcad tablomu güncellemiþ oldum ve artýk adýn yanýnda soyad kolonunu da getirecek. bunu yapmak için alter komutumu
kullandým, yine güncelleme yapmak istediðim sütunu seçtim araya as dedim ve select seçimlerimi yaptým daha sonrasýnda bu seçimlerimin orijinal tablodan
gelmesi gerektiði için fromdan sonra orijinal tablomun adýný yazdým.*/

Drop view OGRtcad /*ya da drop ile viewimi silebilirim.*/


/*bu ünitede bilmemiz gereken en son þey ise bir prosedür yazmaktýr.*/

Create Procedure gettc5
as
 begin
  select tcno1 from OGR11
end

/*burada bir prosedür oluþturmuþ oluyorum create metodu ile kullandým ve procedure oluþturmak istediðim için onu yazdým sonrasýnda da procedureme bir 
isim verdim asden sonra istediðim parametreleri yazabilirdim ancak ben bu sefer yazmayacaðým. beginden sonra da tüm select sorgularýmý yazýyorum.
en sonuna da end diyerek proceduremi bitiriyorum. bunu gözlemlemek için programmabilitynin altýnda stored procedures kýsmýnda görebilirim. bunu modify
edebilirim ve geliþtirmemede sýnýr yok son 17dk anlatýyor. tam olarak anlamadým neden kullanýlýyor bakacaðým.*/


/*bu ünidete bilmen gereken þeyler kesinilkle create alter ve drop bu komnutlarý iyice hatmetmen lazým sakýn kaçýrma. bu ünite burada bitti.*/




/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/

/* BURADAN SONRA NORTHWÝND DATABASEDEN DEVAM EDÝYORUM.*/
/* SQL SORGULARI ÇALIÞMA 4. HAFTA --------------------------------*/
/*6. üniteyi iþeyeceðiz.*/

select 'hello world' as mesaj /*ilk olarak merhaba dünya yazdýrmayý öðrendik, bunu sleect komutuyla yapabiliriz. içerisindeki mesajý týrnaklar çerisinde
yazýyoruz ve kodumu çalýþtýrdýðýmda mesajýmý görebiliyorum. sütunuma baþlýk eklemek için ise as kelimesini kullanýyorum ve sütunumun baþlýðýnýn ne
olmasýný istiyorsam sonrasýnda onu yazýyorum.*/

/*where komutu sorguma filtre eklememi saðlayabiliyor. seçilen komutu sýnýrlamama yarýyor, groupby gruplama için kullanýlýr, having grupladýðýmzý verileri
kýsýtlamak için kullanýlýr yine, order by ise sýralama yapmamý saðlamaktadýr, defterdeki mantýksal iþleme sýralamasýný bil.*/

select * from Çalýþanlar /*bazen köþeli parantez kullanmam gerekibilir, select seçim yapmaya yarar ve * tüm sütunlar demektir. from ile de hangi
sütunu tablodan almam gerektiðini söylemektedir. select ile hepsini seçtiðim için tüm sütunlar gelecektir.*/


select Ad, Soyadý, [E-posta Adresi] from Çalýþanlar /*ilk sorgumuz olarak select ile ad, soyadý ve e posta sütunlarýmý getireceðim ve bunu from ile çalýþanlar
tablomdan getirmek istiyorum. ancak e posta ayrý kelimeler içerdiði için bunu köþeli parantez ile yazýyorum ve sorgumu çalýþtýrýyorum. çünkü ayrý kelimeler
ile anlamayabiliyor. select seçimim ile ilgilendiðim sütunlarý görüntülemiþ oldum*/


select Ad, Soyadý, [E-posta Adresi] into deneme2 from Çalýþanlar /*burada sorgumu into ile deneme isimli dosyaya kaydetmek istedim, into komutu fromdan
önce yazýlýr bu select ile yaptýðým sorgumu bu þekilde kaydetmek için kullanýlýr. bu dosyayý yani yeni tablomu tables altýnda görebilirim. bu tablo
oluþturduðum sorgumun tablolarýný içermektedir.*/


select * from deneme2 /*artýk oluþturduðum deneme2 isimli tablomu seçebilirim * ile tüm sütunlarýný seçiyorum.*/


drop table deneme2 /*into ile oluþturduðum tableýmý drop table komutu ile siliyorum. burada droptan sileceðim þeyin türünü söylemeyi unutmamam lazým.*/



/*DISTINCT KOMUTU--------------------------------------------------------*/

/*disting benersiz hale yani tekil hale getirmek demektir dolayýsýyla distence komutu benzersiz hale getirmek için kullanýlýr. bunu çalýþanlardaki
iþ ünvanlarý kýsmýnda deneyelim*/

select [Ýþ Unvaný] from Çalýþanlar /*iþ ünvanlarýný incelediðimde tekrar eden iþ ünvanlarý olduðunu görüyorum. bunu distence ile tekil yani unique hale
getireceðim.*/

select distinct [Ýþ Unvaný] from Çalýþanlar /*bu komutu çalýþtýrdýðýmda artýk hepsi tekil gelmiþ oldu ve bu þekilde unique deðerlere ulaþabilirim
bu komut selectten hemen sonra kullanýlýr seçeceðim sütunlarýn isimlerini yazmadan önce. ikisini de ayný anda seçip çalýþtýrýp bakabilirim.*/




/*ORDER BY KOMUTU--------------------------------------------------------*/
/*Order by komutu sýralama yapmak için kullanýlýr.*/

select * from Çalýþanlar/*öncelikle tüm çalýþanlar tablosunu bir görüntülemek istiyorum ve sleect all yapýyorum sonrasýnda ad soyad ve þehir ile sýralama
yapacaðým*/

select Ad, Soyadý, Þehir from Çalýþanlar
order by Ad /*order byda neye göre sýralamak istiyorsam ona göre sýralama yapmam lazým önce ada göre sýralamak istiyorsam order bydan sonra Ad demem lazým.
artýk select ile tüm seçtiðim sütunlarý ad sütununa göre sýraya dizecek. ad sýralamasý da nvarchar veri olduðu için alfabetik olarak sýraya dizecek.*/

select Ad, Soyadý, Þehir from Çalýþanlar
order by Þehir /*þehir isimlerine göre sýralýyorum*/

select Ad, Soyadý, Þehir from Çalýþanlar
order by Ad, Þehir /*önce ada göre sonra þehire göre sýralýyorum, yani önce adlarýn alfabetik sýrasýna göre sonra da denk gelen þehirlerin alfabetik sýrasýna
göre sýralýyorum*/

select Ad, Soyadý, Þehir from Çalýþanlar
order by Ad, Desc Þehir /*eðer tersine bir sýralama yapmak istiyorsam desc yazmam gerekmektedir, azalandan artana sýralamasý ascending þeklinde varsayýlan
olarak sýralýyor ama descengind ile tersine sýralýyor ve bunu hangisinde istiyorsam onun hemen önüne yazmam gerekmektedir.*/


select Ad, Soyadý, Þehir, [E-posta Adresi] from Çalýþanlar
order by [E-posta Adresi] /*e posta adresindeki sýraya göre çalýþanlar tablosundan select ile seçtiðim sütunlarý sýraladým. daha sonrasýnda len ekleyeceðim*/


select Ad, Soyadý, Þehir, [E-posta Adresi] from Çalýþanlar
order by len([E-posta Adresi]) /*þimdi sýralama deðiþecek çünkü e posta adreslerinin karakter sayýlarýn göre sýralamamý deðiþtirmiþ oldum. burada select
sorguma ekstradan lenli bir e posta adresi yazarsam çýktýlarýmda karakter sayýlarýmý da gösterecek. yani ben select sorgularýma tablomda olmayan bir þey
yazarsam ancak mantýklý olmasý lazým bunu çýktýlarýmda bana gösterebiliyor. sonrasýnda column name vs de ekleyebiliyorum.*/


select Ad, Soyadý, Þehir, [E-posta Adresi], LEN([E-posta Adresi]) from Çalýþanlar
order by len([E-posta Adresi]) /*e posta adreslerimin karakter sayýlarýný gösterecek len fonksiyonumu select sorgularýmýn içerisine yazarak görebiliyorum
ve burada azalan sýrada olduðunu görebiliyorum. bu tür fonksiyonlar sorgunun genellikle her yerinde kullanýlabiliyor.*/


/*top(3) diyerek de sorgumun ilk 3 satýrýný görmek gibi iþlemler de yapabilirim. bunu da selectten sonra sütun isimlerimi yazmadan hemen önce yazmam
gerekmekte*/

select top(3) Ad, Soyadý, Þehir, [E-posta Adresi], LEN([E-posta Adresi]) from Çalýþanlar
order by len([E-posta Adresi]) /*top(3) ile ilk 3 satýrýmý gördüm topun içerisine ne yazarsam o kadar satýr görebiliyorum. böylece karakter uzunluklarý
en kýsa olan isimleri görmüþ oldum. buna da desc ekleyebilirim.*/

select top(3) Ad, Soyadý, Þehir, [E-posta Adresi], LEN([E-posta Adresi]) from Çalýþanlar
order by len([E-posta Adresi]) desc, Þehir /*desc þehir diyerek þehirin tersine göre sýralayarak en uzun e postalara sahip son þehirleri görebiliyorum

order by komutu mantýksal sýralamada sonda olduðu için her türlü iþlem yapýldýktan sonra order by sorgularý çalýþýr bunu unutma.*/




/*WHERE KOMUTU--------------------------------------------------------*/
/*Where komutu yazdýðým sorgularda sýnýrlama yapmak / filreleme yapmak için kullanýlýr. örn: */

select [Ürün Kodu], [Ürün Adý], [Liste Fiyatý] from Ürünler 
where ([Ürün Adý]='Ceviz') /*select ile seçilen sütunlar ürünler tablosundan getirilsin ve bu sütunlar ürün adý ceviz olanlar için getirilsin dedim
bunun dýþýnda mantýksal operatörler de var. bunlara bak*/


select [Ürün Kodu], [Ürün Adý], [Liste Fiyatý] from Ürünler 
where ([Liste Fiyatý] > 10) /*seçilen sütunlarý ürünler tablosundan getiriyorum ancak liste fiyatý 10un üzerinde olanlar için bunlarý getiriyorum.
ayný anda birden fazla filtreleme de yapabilirim örn:*/


select [Ürün Kodu], [Ürün Adý], [Liste Fiyatý] from Ürünler 
where ([Liste Fiyatý] > 10) and ([Liste Fiyatý] < 50) /*þimdi de liste fiyatý 10dan büyük 50den küçük olanlar gelecek. where komutu ister 50 tablo
birletirilmiþ olsun ister sonrdan tablo eklenmiþ olsun her satýra bu koþullarý uygulamaktadýr bunu unutma. yani koþullarý saðlayan tüm satýrlarý getir.
and operatörü kullanýlýrken baðlanan iki koþulu saðlayan satýrlar gelir sadece. tabii ki yine order by kullanýlabilir.*/


select [Ürün Kodu], [Ürün Adý], [Liste Fiyatý] from Ürünler 
where ([Liste Fiyatý] > 10) and ([Liste Fiyatý] < 50)
order by [Liste Fiyatý] /*yaptýðým sorguyu ayný þekilde býraktým ve order by ile liste fiyatlarýný artan fiyatlara göre sýraladým. yani fiyatlarým
10dan büyük olan ilk deðerden baþlayarak 50in altýnda olan son deðere kadar sýralanacak. ancak iki farklý liste fiyatý sorgusu yazmak yerine 
between de kullanabilirim.örn: */


select [Ürün Kodu], [Ürün Adý], [Liste Fiyatý] from Ürünler 
where [Liste Fiyatý] between 10 and 50
order by [Liste Fiyatý] /*bu þekilde iki kere liste fiyatý yazmak zorunda kalmam ancak burada dikkat etmem gereken þey 10u ve 50yi yazarken dahil etmesi
yani büyük eþit ve küçük eþit þeklinde kullanmasýdýr. bunun baþýna not da koyabilirim bu da yazdýðým sorgunun deðilini yani tersini almama yarar.*/


select [Ürün Kodu], [Ürün Adý], [Liste Fiyatý] from Ürünler 
where [Liste Fiyatý] not between 10 and 50
order by [Liste Fiyatý] /*not between ile 50 ve 10 dýþýnda kalanlarý getirecek. eðer ben bir þeyin olurunu biliyorsam deðilini bulabilmek için 
not operatörünü kullanabilirim. bunu devam ettirip ekstradan bir not between de daha yazýp filtrelememi ikinci kez yapabilirim örn buradan 2 ve 4 
arasýnda bulunan deðerleri de sileceðim*/


select [Ürün Kodu], [Ürün Adý], [Liste Fiyatý] from Ürünler 
where ([Liste Fiyatý] not between 10 and 50)
and ([Liste Fiyatý] not between 2 and 4)
order by [Liste Fiyatý] /*sorguma ekstradan bir filtre ekleyip liste fiaytýmda bulunan 2 ve 4 deðerleri arasýndaki sorgularý da not between ile 
çýkardým. yani yine bir sorgunun olurunu bilip notýný yazarak sorgumdan çýkarmýþ oldum. ekstra bilgi olarak birden fazla filtreleme yapýlacaksa
andler arasýnda parantez kullanmak faydalý olabilir. andlerin doðru þekilde çalýþabilmesi için.burada iki koþul var ve bu koþullarý üst üste çalýþtýrýdým.
10 ile 50 arasýnda olmasýn ve 2 ile 4 arasýndakiler olmasýn demiþ oldum. 1.08.00 da kaldým.*/


/* LÝKE OPERATÖRÜ -----------------------------------------------------*/
/*like operatörü ürün adlarýný görüntülemek için kullanýlýr. bir ifadenin anahtar þekilde ifadelerini oluþturmak için kullanýlýr, yani anahatar kelimeler
veya harfler ile filtreleme yapabilir veya istediðim þeyi bulabilirim. ya da tüm bu þekillerde sýnýrlandýrma yapabilirim.*/

select [Ürün Adý] from Ürünler
where [Ürün Adý] like '%B%'
order by [Liste Fiyatý] /*içerisinde b harfli olan ürünleri getirdi ve liste fiyatýna göre sýraladý. bu sýnýrlamayý artýrýp arkasýna bir harf daha
yazabiliriz aþaðýdaki gibi bu sýnýrlamaya harf eklerken yine yüzde ifdesi ile kapamam lazým.*/


select [Ürün Adý] from Ürünler
where [Ürün Adý] like '%B%Ý%'
order by [Liste Fiyatý] /*bu þekilde harf ekleyerek demek istediðim þey b harfinden sonra i aharfli olanlarý bana getir demektir.*/


select [Ürün Adý] from Ürünler
where [Ürün Adý] like '%B%I'
order by [Liste Fiyatý] /*eðer sonundaki % iþaretini kaldýrýrsam bitsin demek oluyor, yani burada ý ile bitsin demek istedim ve bana ý ile biten 
ürün adlarýný ürünler tablosundan getirerek liste fiyatýna göre sýraladý. yüzdeyi koyarsam ise içerisinde geçsin demek oluyor.*/



select [Ürün Adý], [Liste Fiyatý] from Ürünler
where [Ürün Adý] like '%B%I'
order by [Liste Fiyatý] desc /*liste fiyatlarýný görüp ayrýca liste fiyatlarýnýn tersi þeklinde sýraladým. ürünler de içerisinde b geçip ý ile biten 
ürünlerdir.*/




/* ÝN OPERATÖRÜ -----------------------------------------------------*/
/*in operatörü içerisinde sadece söylediðim þeyi getiren operatördür var mý diye sormama yarar.*/

select [Ürün Adý], [Liste Fiyatý] from Ürünler
where [Ürün Adý] in ('Ceviz', 'Hint Çayý')
order by [Liste Fiyatý] desc /*sýnýrlamak için de in komutunu kullanabiliyorum yani sadece yazdýðým þeyleri arayabiliyorum. ceviz ve hint çayýný 
bulmak istedim ve ilgili tablo sütunlarý yazýp where ile sorgularýmý yazýp buldum. not þeklinde de kullanabilirdim o zaman da ceviz ve hint çayý dýþýndaki
tüm ürünlerimi getir demiþ olurdum*/



select [Ürün Adý], [Liste Fiyatý] from Ürünler
where [Ürün Adý] not in ('Ceviz', 'Hint Çayý')
order by [Liste Fiyatý] desc /*not diyerek yine olurunu bildiðim bir sorgunun deðilini aldým. yani ceviz ve hint çayý dýþýndaki tüm ürünlerimi getir dedim.*/
/*ek bilgi null sqlde boþ olan anlamýna gelir. is not null boþ olmayanlar demektir. bunun kullanýmýyla ilgili farklý kullanýmlar kitapta mevcut*/



/* WHERE ÝLE TABLO BÝRLEÞTÝRME / TABLOLARI BÝRBÝRÝNE BAÐLAMA ÝÞLEMLERÝ-------------------------------------------*/
/*iki tabloyu birbirine baðlamanýn farklý yöntemleri vardýr bunlardan biri where ile baðlamaktýr.*/


select top(3) Müþteriler.Þirket, Müþteriler.Soyadý, Müþteriler.Ad, Müþteriler.[No], Sipariþler.[Müþteri No]
from Sipariþler, Müþteriler
where Sipariþler.[Müþteri No] = Müþteriler.[No] /*sipariþler tablomda sipariþ bilgilerim var müþteriler tablomda ise müþteri bilgilerim var. bu iki
tabloyu birbiri ile birleþtireceðim. ikisini de no kýsýmlarýndan birleþtireceðim. tablolarý birbirleri ile yabancý anahtarlar ile baðlayacaðým. çünkü 
sipariþler tablosundaki müþteri no ile müþteriler tablosundaki no bilgisi ayný ve bunlarý baðlamam gerekiyor. müþteriler tablosunda müþteri no sipariþler
tablosunda da no diye bir tablo olmadýðý için ikisini birbirine baðlamam gerekiyor. o yüzden iki alaný baðlamam gerekiyor. wherei hep sýnýrlama ve
filtreleme için kullanabileceðimi biliyordum ancak tablo baðlamak için de kullanabilirim. burada görmek istediðim tüm sütunlarý yazdýktan sonra from ile
hangi tablolardan gelmek istediklerini yazýyorum sonra where ile hangi tablodan ve hangi sütunu birleþtirmek istediðimi yazýyprum sonra eþittir diyip
tekrardan tablo ve sütun ismini yazýyorum bu sayede hangi tablolardan hangi sütunlarý birleþtirmek istediðimi anlýyor ve birleþtirip sorgumu çalýþtýrýyor.*/


/*bunu inner join ile de baðlayabilirim inner join fromdan sonra yazýlýr on edatý ile kullanýlýr. önce hangi tablolarý baðlamak istediðim yazýlýr sonra
on denir ve hangi sütunlarý baðlamak istediðim yazýlýr.*/

select Müþteriler.Þirket, Müþteriler.Soyadý, Müþteriler.Ad, Müþteriler.[No], Sipariþler.[Müþteri No]
from Sipariþler inner join Müþteriler
on Sipariþler.[Müþteri No] = Müþteriler.No /*az önce where komutu ile yaptýðýmýz iþin aynýsýný þimdi inner join ile yaptýk mantýðý tamamen ayný,
önce baðlayacaðým tablo isimlerini söylüyorum sonra tablo isimlerini baðlayacaðým sütunlar ile birlikte söyleyip select sorgumda görmek istediðim 
sütunlarýmýn isimlerini yazýyorum.*/

/*a ve b tablolarýný birbiri ile baðla kitapta örnekleri var. son 20 dk bunu anlatýyor.kýsa bir örn: */

select * from
A inner join B on A.A_Id = B.B_Id /*id kýsýmlarýndan iki tabloyu birbirine baðladým.*/

/*hocanýn kodlarýný aþaðýya býrakýyorum. çalýþ gerizekaklý*/,

--1)
Select A.Ad,B.Name,A.A_Id,B.B_Id  from 
A inner join B on A.A_Id=B.B_Id

--2)
Select A.A_Id,A.Ad,B.B_Id , B.Name from 
A Left Outer join B on A.A_Id=B.B_Id

--3)
SELECT A.A_Id, A.Ad, B.B_Id, B.Name
FROM A INNER JOIN B ON A.A_Id < B.B_Id

/*bu baðlantýlar bizim için oldukça önemli ve sürekli kullanacaðýz. 136. sayfada full outer join vs.*/




/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI ÇALIÞMA 5. HAFTA ------------------------------------*/

select * /*select ile tüm sütunlarýmý seçiyorum sonrasýnda from ile hangi tablodan gelmesi gerektiðini seçiyorum ve inner join ile hangi tablolarý*/
from Sipariþler As S /*baðlamak istediðimi söylüyorum. sornasýnda bunlara as ile kýsaltma isimler veriyorum. on burada baðlama edatý nereden baðamam*/
inner join Müþteriler as M on S.[Müþteri No] = M.No /*gerektiðini sölüyorum. inner joinden sonra ikinvi hangi sütun baðlanacaksa o yazýlýr sonrasýnda on
denir ve tablolar hangi ortak sütunlarýndan baðlanacaksa onlar yazýlýr.*/


/*buna ek olarak ben sadece müþterilerin adýný ve iki str ifadeyi birleþtirip ad ve soyadý da getirebilirim*/
select S.[Sipariþ No], Ad +' '+ M.Soyadý, [Sipariþ Tarihi]
from Sipariþler As S 
inner join Müþteriler as M on S.[Müþteri No] = M.No
order by M.No
/*inner joine ile birebir baðladým. sonrasýnda select kýsmýna görmek istediðim sütunlarý teker teker yazdým ve ad ve soyadýný görmek istediðim için
ekstradan bir sütunmuþ gibi ikisini birleþtirerek yazdým ve istersem column name de verebilirim. en son da sipariþ tarihi ekledim. sonrasýnda da
order by ile müþteri noya göre sýraladým.*/

/*eðer istersem tabloma ikinci bir inner join yazarak ikinci tablo ile baðlayabilirim. bunu yaparken önce tablo ismimi vermem gerekiyor.on kýsmýnda baðlantý 
kýsmý kuruluyor*/
select S.[Sipariþ No], Ad +' '+ M.Soyadý, [Sipariþ Tarihi],[Ürün No]
from Sipariþler As S 
inner join Müþteriler as M on S.[Müþteri No] = M.No
inner join [Sipariþ Ayrýntýlarý] as SA on S.[Sipariþ No]=SA.[Sipariþ No]
order by M.No
/*yine inner join mantýðýný kullanarak önce eklemek yani yeni baðlamak istediðim tablo ismini verdim sonrasýnda on ile hangi sütunlarýndan baðlamak 
istediðimi söyledim. sonrasýnda selectime ürün no yu da ekliyorum ve verimin arttýðýný görüyorum. burada incelediðimde örn aliye berberin 3 adet sipariþinde
1, 43, 81 nolu ürünlerimi aldýðýný görüyorum. mantýksal olarak doðru þekilde baðlamam çok önemli. hatalý sorgu yapabilrim ve karþýma veri gelebilir
ancak sorgunun çalýþmasý sorgunun doðru olduðu veya mantýksal olarak doðru veya ulaþmak istediðim sonuç olduðu anlamýna gelmez. sonrasýnda sorguma bir inner 
join ekleyeceðim*/



select S.[Sipariþ No], Ad +' '+ M.Soyadý, [Sipariþ Tarihi],[Ürün No], U.[Ürün Adý], SA.Miktar, SA.[Birim Fiyat]
from Sipariþler As S 
inner join Müþteriler as M on S.[Müþteri No] = M.No
inner join [Sipariþ Ayrýntýlarý] as SA on S.[Sipariþ No]=SA.[Sipariþ No]
inner join Ürünler as U on U.No = SA.[Ürün No]
order by M.No /*toplamda 4 tablo baðlamýþ oldum. artýk kodumu çalýþtýrdýðýmda her bir üründen kaçar tane aldýklarýný ve birim fiyatlarýný görebiliriz.*/


/*ayný koda ek olarak ben iki sütunu çarpýp bunlarýn toplam tutarlarýný görmek istersem bu bir seletc komutudur ve bunu en üste yazmam gerekir.
as diyerek de normalde tablomda olmayan bu veriye isim verip kodumun çýktýsýna eklyebilirim. Bu þekilde birim fiyat çarpý miktar ile toplam harcama
tutarýmý bulabilirim.*/
select S.[Sipariþ No], Ad +' '+ M.Soyadý, [Sipariþ Tarihi],[Ürün No], U.[Ürün Adý], SA.Miktar, SA.[Birim Fiyat], SA.Miktar * SA.[Birim Fiyat] AS Tutar
from Sipariþler As S 
inner join Müþteriler as M on S.[Müþteri No] = M.No
inner join [Sipariþ Ayrýntýlarý] as SA on S.[Sipariþ No]=SA.[Sipariþ No]
inner join Ürünler as U on U.No = SA.[Ürün No]


/*bu kodu þu þekilde de yazabilirim okunabiliriliði artmaktadýr.*/
select S.[Sipariþ No], 
Ad +' '+ M.Soyadý, 
[Sipariþ Tarihi],
[Ürün No], 
U.[Ürün Adý], 
SA.Miktar, 
SA.[Birim Fiyat], 
SA.Miktar * SA.[Birim Fiyat] AS Tutar

from Sipariþler As S 
inner join Müþteriler as M on S.[Müþteri No] = M.No
inner join [Sipariþ Ayrýntýlarý] as SA on S.[Sipariþ No]=SA.[Sipariþ No]
inner join Ürünler as U on U.No = SA.[Ürün No]

/*burada uygun þekilde eþleþme yapýldýktan sonra sadece tek bir tablodaki uygun deðerleri deðil baþka tablodaki uygun deðerleri de çarpabilirim.*/



/************* GROUPBY BY  ve COUNT KULLANIMI ***************/

select [Müþteri No] from Sipariþler /*kodumun çýktýsýný incelediðimde görüyorum ki müþteri numaralarý birden fazla kez tekrar ediyor. hepsini bir kez
görmek istersem yani özetlemeke istersem group by kullanmam gerekiyor. bu yüzden müþteri no ile group by alýyorum.*/

group by [Müþteri No] /*group by ile kodumu tekrar çalýþtýrdýðýmda 47 adet satýrýmýn 15 satýra düþtüðünü ve verimin özet þekilde yani sadece unique
deðerlerinin geldiðini görüyorum. burada en az 1 kere sipariþ vermiþ kiþileri görüyorum. verilerimi tekilleþtirdim burada. güzel yaný verilerimi
tekilleþtirdikten sonra örn count gibi metodlarý kullanabilirim.*/


select [Müþteri No], COUNT(*) as siparissayisi /*koduma ek olarak tüm sipariþlerin sayýsýný hesaplatýp unique deðerlerimden kaç sipariþ gelmiþ görebilirim.*/
from Sipariþler
group by [Müþteri No]
/*kodumun çýktýsýný incelediðimde 1 numaralý sipariþten 2 adet geldiðini görebiliyorum. hatta buna order by da ekleyebilirim countuma göre*/


select [Müþteri No], COUNT(*) as siparissayisi /*koduma ek olarak tüm sipariþlerin sayýsýný hesaplatýp unique deðerlerimden kaç sipariþ gelmiþ görebilirim.*/
from Sipariþler
group by [Müþteri No]
order by COUNT(*) desc /* desc ile de sýralamayý tersine çevirebilirim. yani en çok sipariþ vermiþ müþteirleri azalan þekilde sýralayacaðým.
grouplama iþimi kolaylaþtýran bir iþlem ancak doðru þekilde yapmam gerekmektedir. group by yaparken select içerisine yazmadýðým bir sütunu kullanamam
o sütunu öncelikle selectte yazmam gerekir illa yazacaksam baþka bir iþlem daha yapmam gerekiyor. çünkü grouplamadýðým þeyi tekilleþtirmem gerekiyor önce
*/


/*bunlara ek olarak müþteri adlarýný görüntüleyerek kiþilerin tutarlarýný bulabilmek için inner joinle tablolarý birleþtirmem lazým.*/
select Müþteriler.Ad +' '+ Müþteriler.Soyadý as musteriadi_soyadi, COUNT([Müþteri No]) AS siparissayisi
from Sipariþler
inner join Müþteriler on Sipariþler.[Müþteri No] = Müþteriler.No
Group by Müþteriler.Ad +' '+ Müþteriler.Soyadý
Order by Müþteriler.Ad +' '+ Müþteriler.Soyadý
/*kodumun çýktýsýný incelediðimde sipariþ veren kiþilerin adlarýný ve kiþilerin kaç adet sipariþ verdiklerini görebiliyorum, þimdi de soyadý ekleyeceðim
groupby ve order byda da select kýsmýnda yazdýðým þeyi yazmam gerekiyor ki çýktýsýný hata almadan görebilelim. no colulmn name dediði için de select
kýsmýnda as diyerek bir kolon ismi verebilirim.*/




/*buna ek olarak her bir müþterinin toplam kaç tllik satýn alma iþlemi yaptýðýný bulacaðým. buradaki sorgumu sadece isim ve soyisim olarak 
tekilleþtirmem gerekiyor. adsoylarým ile tuttar bilgim bana ana olarak lazým olan bileþenlerim. yaptýðým iþlem burada öncelikle ihtiyacým olan
tüm veri setini hazýrlamak sonrasýnda ise özetleme iþlemine geçmek.*/
select M.Ad +' '+ M.Soyadý as ADSoy, SUM( Miktar * [Birim Fiyat]) as Tutar
from Sipariþler as S
inner join Müþteriler as M on S.[Müþteri No] = M.No
inner join [Sipariþ Ayrýntýlarý] as SA on S.[Sipariþ No] = SA.[Sipariþ No]
inner join Ürünler as U on U.No = SA.[Ürün No]

group by M.Ad +' '+ M.Soyadý
/*burada artýk her bir müþterinin adý ve soyadýnýn yanýnda toplam ne kadarlýk bir satýn alma yaptýðýný görebiliyorum. burada isim ve soyisimi tekil
hale getirirken unutmamam gereken þey tablonun yanýndaki sayýsal deðerlere bir þeyler yapmam lazým ki sorgum tekil hale geldiðinde de çalýþsýn.
yani özetleme iþlemini çalýþabilir þekilde yapmam lazým. buraad tutarlarý topladýk. aliye berberin toplam ödemesini bulduk. bu ödemeyi kaç ürün için
yaptýðýný bulacaðým þimdi de.*/

select M.Ad +' '+ M.Soyadý as ADSoy, SUM( Miktar * [Birim Fiyat]) as Tutar, COUNT(S.[Sipariþ No]) as Siparis_Adet
from Sipariþler as S
inner join Müþteriler as M on S.[Müþteri No] = M.No
inner join [Sipariþ Ayrýntýlarý] as SA on S.[Sipariþ No] = SA.[Sipariþ No]
inner join Ürünler as U on U.No = SA.[Ürün No]

group by M.Ad +' '+ M.Soyadý
/*count ekleyerek kaç adet sipariþ için bu ödemeyi yaptýðýmý bulabildim. sipariþ no mu saydýrdým. yani aliye berber 2410 tllik ödemeyi 4 ürün satýn alarak
yapmýþ. ancak kaç adet sipariþte bunlarý yapmýþlar bilmiyorum. bunu da sipariþ noyu benzersiz þekilde saydýrýrsam kaç adet sipariþte bunlarý satýn almýþlar
bulabilirdim.distinc eklmeme gerekiyor tekrardan countuma */

select M.Ad +' '+ M.Soyadý as ADSoy, 
 SUM( Miktar * [Birim Fiyat]) as Tutar, 
 COUNT(S.[Sipariþ No]) as Siparis_Adet,
 COUNT(Distinct S.[Sipariþ No]) as Siparis_Sayisi
from Sipariþler as S
inner join Müþteriler as M on S.[Müþteri No] = M.No
inner join [Sipariþ Ayrýntýlarý] as SA on S.[Sipariþ No] = SA.[Sipariþ No]
inner join Ürünler as U on U.No = SA.[Ürün No]

group by M.Ad +' '+ M.Soyadý

/*þimdi de görüyorum ki aliye berber bu sipariþleri 4 adet ürün için 2 kere sipariþ vererek 2410 tl ödeme yapmýþ. burada distinct demem sipariþ 
nolarý benzersiz olarak saydýrmama yarýyor. yani unique deðerleri saydýrdým. buna ek olarak toplam ciroyu da bulabilirim.*/

select SUM((Miktar * [Birim Fiyat])) from [Sipariþ Ayrýntýlarý] /*burada da birim fiyatlarýn toplamýný bularak, toplam sipariþlere
ne kadar ödendiðini buldum. 68.137 tl tuttu.*/

/* ödev: 
1) ürün kategorilerine göre toplam cirolarý bulun
2) en fazla ciro yapýlan 3 ili bulun.*/


/*Veri kümelerinin birleþtirilmesi için baþka yöntemler de var bunlar genelde stok sayýlarýný bulmak için veya geriye yönelik bazý iþlemler için 
kulllanýlabiliyor. A ve B üzerinden gösterilecek.*/

select * from A

select * from B /* verilerimi inceliyorum*/


/*intersect*/
select A_Id from A
intersect
select B_Id from B
/*interesect demek A'daki A_Id ile B'deki B_Id'nin kesiþim kümesini bana görüntüle demek yani intersect iki kümenin kesiþiminde kullanýlýr ve ortak
olanlraý bana gösterir. intersect ingde kesiþim demek.*/


/*except*/
select A_Id from A
except
select B_Id from B
/*except de ayný mantýkla çalýþýr ancak iki küme arasýndaki farklarý göstermek için kullanýlýr. A'nýn B'den farkýný bana verir. tam tersini isteseydim
eðer yani bnin a dan farkýný isteyseydim byi yukarý a yý aþaðý yazmam gerekiyordu. burada aþaðý ve yukarý yazmak önemlidir.*/


/*union*/
select A_Id from A
union
select B_Id from B
/*union da iki kümeyi birleþtirmek istediðimde kullanacaðým bir sorgu. ancak her deðeri bir kez tekrar eder aynýlarý tekrar yazmaz ancak iki kere yazdýrmam
gereken durumlarda union all þeklinde yazmam gerek. bu þekilde tüm deðerleri birleþtirerek yazar.*/
select A_Id from A
union all
select B_Id from B

/*burada alabileceðimiz hatalar sayý ile metini birleþtiremeyeceðime dikkat etmem lazým. örn id alaný ile ad alanýný.*/




/*NE ÝÞE YARAR ÝNNER JOÝNDEN FARKLI OLARAK*/


/*önce stok hareketlerimi bir görüntüleyeyim*/

select * from [Stok Hareketleri] /*hareket no, ürün no, hareket türü ve miktar var. birisi stoða giriþ yapýyor diðeri çýkýþ yapýyor. union allý kullanacaðým,
burada hareket türü 1ler stoða gelenler diðerleri çýkanlar. þimdi iþlemelerime baþlayacaðým incelemek için bu þekilde bu kod ile tüm verime göz atmýþ oldum.*/


select [Ürün No], [Miktar]
from [Stok Hareketleri]
where [Hareket Türü]=1 /*bu þekilde çalýþtýrdýðýmda hangi üründen ne kadar satýn aldýðým gözüküyor where =1 ile sýnýrladým. aþaðýda tersini yapýyorum*/


select [Ürün No], [Miktar]
from [Stok Hareketleri]
where [Hareket Türü]=2 /*burada da sattýklarýmýn adedi gözüküyor. bu iki sorguyu union all ile birleþtirip miktarý -1 ile çarparsam karþýma eksili deðerler
gelecek ve iki tabloyu tam anlamýyla birleþtirip stoktan düþenleri görmüþ olacaðým. aþaðýda yapalým*/



select [Ürün No], [Miktar]
from [Stok Hareketleri]
where [Hareket Türü]=1 

union all /*bu þekilde yaparak stoktan düþenleri görebileceðim. tablonun aþaðýsýndakiler stoktan düþen adetler.*/

select [Ürün No], ([Miktar]*-1)
from [Stok Hareketleri]
where [Hareket Türü]=2
/*bunlarýn direkt olarak stoklarýný bulmak istersem ne yaparým? sqlde bir sorguyu parantez içine alýrsak bu artýk bir veri kümesi olduðu anlamýna gelir.
bu sorguyu en yukarýdan aþaðýya baþýna select yazarak parantez içine alýrsam stoklarýný bulmuþ olurum. yapalým aþaðýda tekrar.*/

select *
from
	(select [Ürün No], [Miktar]
	from [Stok Hareketleri]
	where [Hareket Türü]=1 

	union all 

	select [Ürün No], ([Miktar]*-1)
	from [Stok Hareketleri]
	where [Hareket Türü]=2) as stok /*artýk stok isminde bir tablom var ve ben bunlarý ürün nolara gröre grouplayarak stoklarýmý bulabilirim. her 
	ürün bir kere yer alsýn diyerek toplama çýkarma iþlemlerini otomatik olarak yaptýrmýþ oluyorum ve ürün no yu da select kýsmýnda görüntülemem gerekiyor
	tabii.*/


select [Ürün No], Sum(Miktar) as Stok_miktar
from
	(select [Ürün No], [Miktar]
	from [Stok Hareketleri]
	where [Hareket Türü]=1 

	union all 

	select [Ürün No], ([Miktar]*-1)
	from [Stok Hareketleri]
	where [Hareket Türü]=2) as stok

	Group by [Ürün No]

/*union allýn en temel kullanýmlarýndan biri budur. sum ile de miktarlarý toplatarak stok adedimi bulmuþ oldum. mesela stoklarý 0a düþenler var
bunlar da stoklara geldiði kadar satýldýðý anlamýna gelmektedir. yani birleþtirme iþlemlerini genelde stok hesaplama iþleri için kullanýrým ya da 
tablolarý birleþtirmem gereken yerlerde. bu ancak inner join gibi iki tabloyu birleþtirmek gibi deðil, iki veri kümesini alt alta birleþtirmek gibi
düþünülmeli. join ise baðlama iþlemi yapmaktadýr.*/



/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI ÇALIÞMA 6. HAFTA ------------------------------------*/

/*ödev sorgularý
1)kategorilere göre toplam cirolarý göstereceðim*/ 
select Kategori, SUM(Miktar * [Birim Fiyat]) as Ciro
from [Sipariþ Ayrýntýlarý] as SA
inner join Ürünler as U on SA.[Ürün No] = U.No
group by Kategori
/*burada ilk olarak selecte yýldýz koyarak from kýsmýmý yazdým hangi tablolarda çalýþacak ve birleþtireceksem onlarý yazdým sonrasýnda select kýsmýmý 
yazdým ve kategorilerin toplam cirolarýný istediðim için miktar ve birim fiyatý çarpýp sumýný aldým ve groupbyda da hata almamak için ayný zamanda 
verilerimi özetlemiþ oldum. bu þekilde sorhum tamamlanmýþ oldu. ekstra olarak kaç farklý müþteri tarafýndan alýndýðýný varsayaraksak sorguyu nasýl
geniþletiriz.?*/


select Kategori, SUM(Miktar * [Birim Fiyat]) as Ciro,
COUNT(Distinct [Müþteri No]) as UniqueMusteri
from [Sipariþ Ayrýntýlarý] as SA
inner join Ürünler as U on SA.[Ürün No] = U.No
inner join Sipariþler as S on S.[Sipariþ No] = SA.[Sipariþ No]
group by Kategori
/*burada daha sonrasýnda kaç farklý müþterinin bu kategorilerden satýn alma yaptýðýný görmüþ oldum. unutmamam gerekiyor yine gruplarken bir þeyleri
özetlemem örn toplamam ya da saydýrmam lazým yoksa görüntüleyemem.*/


/*2)en yüksek ciroyu yapan üç þehiri bulacaðým*/
select Top(3)
M.Þehir,
SUM(Miktar * [Birim Fiyat]) as Ciro

from 
[Sipariþ Ayrýntýlarý] as SA
inner join Sipariþler as S on S.[Sipariþ No] = SA.[Sipariþ No]
inner join Müþteriler as M on M.No = S.[Müþteri No]
group by M.Þehir
order by Ciro desc
/*burada yine ilk olarak baðlamam gereken tablolarý inner join ile birbirine baðladým sonrasýnda select kýsmýmý yazdým burada þehirleri görmek istediðim
için þehirleri ve yine en yüksek cirolarý görmek istediðim için birim fiyat ve miktarý çarptýrýp adýna ciro diyerek yazdýrdým en baþa da ilk 3 istediðim
için top3 yazdým sonrasýnda sýralamamý ters çevirmek için ciro desc dedim ve özetlemek istediðim yani unique deðerleri görmek için de þehire göre grupladým.
eðer örn ortalamasýna bakmak istersem de sum yerine sadece avg yazardým. içerisine de cast ... as real yazarsam gerçek veri türünü gösterir örn int deðil
buçuklu da gösterir görelim.*/

select
M.Þehir,
AVG(CAST(Miktar as real)) as Ciro

from 
[Sipariþ Ayrýntýlarý] as SA
inner join Sipariþler as S on S.[Sipariþ No] = SA.[Sipariþ No]
inner join Müþteriler as M on M.No = S.[Müþteri No]
group by M.Þehir
order by Ciro desc /*þeklinde çýktýmda orijinal veriyi yani buçuklu deðerlerini de gösterir. bazen hata olmamasý için buçuklara dikkat etmem gerekiyor.
deðerleri aþaðý yuvarlýyor yani aslýnda sadece tam sayý deðerlerini alýyor.*/


/*------TARÝH FONKSÝYONLARI----------------------------------------*/
/*veri setimdeki tarih verilerini bölerek ayrý ayrý sütunlar oluþturmayý göreceðim.*/
/*buradaki kodumda önce ay ve yýl deðerlerini ayýrmýþým sonrasýnda toplam miktar ve ortalam miktarý hesapaltýp ardýndan miktarý birim fiyat ile çarpýp
toplam ciro ve ortalama ciroyu hesaplatmýþým ve hepsinin sütunlarýna isim vermiþim. ardýndan kullanmam gereken tablolarý inner join ile birleþtirmiþim
ardýndan da yýl ve aya göre guplayarak verimi özetlemiþim.*/

Select YEAR(S.[Sipariþ Tarihi]) as YIL,
MONTH(S.[Sipariþ Tarihi]) as AY,
SUM(SA.Miktar) as top_miktar,
AVG(SA.Miktar) as ort_miktar,
SUM(SA.[Birim Fiyat] * SA.Miktar) as Top_ciro,
AVG(SA.[Birim Fiyat] * SA.Miktar) as Ort_Ciro

from Sipariþler as S inner join [Sipariþ Ayrýntýlarý] as SA
on S.[Sipariþ No] = SA.[Sipariþ No]

Group by Year(S.[Sipariþ Tarihi]), Month(S.[Sipariþ Tarihi])


/*---------------------------------SQL ÝÞLEVLERÝ ----------------------------------*/

/*choose iþlevi*/

select [Durum No],
CHOOSE([Durum No]+1, 'Yeni', 'Faturalandý', 'Sevk Edildi', 'Kapatýldý')
as Durum
from Sipariþler
/*basit mantýksal bir fonksiyonumuz. chooseda baþtakine göre bir artýrarak karþýsýma hangi kelime denk geliyorsa onu yazar. durum no 0 ise yeni
durum no 1 ise faturalandý, durum no 2 ise sevk edildi durum no 3 ise kapatýldý yazar.*/

/*IFF iþlevi*/
/*pythondaki if ile ayný mantýkla çalýþýr burada iki ý ile yazýlýr ve eðer iþlevi için kullanýlýr. bir koþul yazýlýr. programlama dilleriyle karýþtýrmamak
lazým orada iþlemler bir döngü ile yapýlýr ancak burada iþlemler her satýr için ayrý ayrý yapýlýr. örn:*/

Select [Satýnalma Sipariþi No], 
IIF([Satýnalma Sipariþi No] is null,
'Stoktan Karþýlandý',
cast([Satýnalma Sipariþi No] as nvarchar(10)) + 'nolu sipariþ ile temin edildi')
as TedarikDurumu
From [Sipariþ Ayrýntýlarý]
/*eðer satýnalma sipariþi no kýsmýnda veri boþsa karþýsýna stoktan karþýlandý yazmak istediðimizi söyledik ve sonrasýnda eðer bu alan doluysa o numarayý
yazdýrýp yanýna nolu sipariþ ile temin edildi yazmasýný istedim ve bu sütuna  da tedarik durumu dedim ve bunlarý sipariþ ayrýntýlarý tablosundan aldým. 
iiften sonra virgül koydum buradaki virgül else kýsmýna karþýlýk geliyor yani iif doðru deðilse diðer seçeneði çalýþtýrýyor. burada casti kullanmamýn
sebebi bir veri türü deðiþikliði yapmaktýr. satýnalma sipariþi no benim için normalde int bir deðer ancak sözcüklerle birleþtireceðim için onu nvarchar
deðerime dönüþtürüyorum.*/


/*CASE komutu-----------------------------------------------------*/
/*iif komutunda bir koþul yazabilirken case komutum ile birden fazla koþul yazabilirim. yazým kýralý: casei yazýyorum ifadeyi veriyorum sonrasýnda da 
koþullarýmý veriyorum örn deðer 1 ise deðer1i yazdýr deðer 2 ise deðer2yi yazdýr gibi koþullar veriyorum. en sonunda da bu durumlar çalýþmadýysa else
komutumu yazýyorum. sonuna da end yazýyorum. örn:*/

select[Durum No],
case [Durum No]
When 0 then 'Yeni'
When 1 then 'Faturalandý'
When 3 then 'Sevk Edildi'
When 9 then 'Kapatýldý'
Else 'Hata'
End as Durum

from Sipariþler
/*sipariþler tablosundaki durum no eðer 0sa yeni, 1se faturalandý, 3se sevk edildi, 9sa kaaptýldý eðer bunlar deðilse hata yaz diyorum ve end as diyerek
bu sütuna da durum ismini veriyorum ve bunu da sipariþler tablosundan çaðrýyorum. case kullanýmýnýn tamamý da görüldüðü gibi selectte bir ifade olarak
yazýlýyor. daha karmaþýk þekillerde de kullanabilirim.*/

select Miktar * [Birim Fiyat] as Ciro,
case when Miktar * [Birim Fiyat] < 1000
then 'az'
when Miktar * [Birim Fiyat] < 10000
then 'orta'
when Miktar * [Birim Fiyat] < 100000
then 'yüksek'
else 'çok yüksek'
end as CiroDurum

from[Sipariþ Ayrýntýlarý]

/*burada da yine froma kadar tüm sorgularýmý select üzerinde yazdým ve case when ile baþladým sonrasýnda miktar ve birim fiyatýmýn çarpýmýnýn 1000den 
küçük olmasý durumunda ne yazýlmasý gerektiðini söyledim, ardýndan 10.000den küçük olma durumunda ne yazýlmasý gerektiðini söyldim, ardýndan da 100.000den
küçük olmasý durumunda ne olmasý gerektiðini söyledim. en sonda hiçbir koþul saðlanmazsa ne yazýlmasý gerektiðini söyledim ve end ile case kullanýmýmý 
bitirdim as diyerek de cirodurum ismini verdim ve hangi tablodan alýnmasý gerekiyorsa from ile onu yazdým. bu sefer caseten sonra direkt bir ifade vermedim
ardýndan direkt when yazdým orada yazdým. daha karmaþýk þekilde de kullanabiliriz örn:*/

select Sipariþler.[Müþteri No], COUNT(distinct Sipariþler.[Sipariþ No]),
SUM(Miktar * [Birim Fiyat])as Ciro,
case 
when sum(Miktar * [Birim Fiyat]) < 1000 then 'az'
when sum(Miktar * [Birim Fiyat]) < 10000 then 'orta' 
when sum(Miktar * [Birim Fiyat]) < 100000 then 'yüksek'
else 'çok yüksek'
end as CiroDurum

from[Sipariþ Ayrýntýlarý]
inner join Sipariþler 
on Sipariþler.[Sipariþ No] = [Sipariþ Ayrýntýlarý].[Sipariþ No]
group by Sipariþler.[Müþteri No]
order by Ciro desc /* her müþterinin toplam harcamasýný bulduktan sonra ciro durumlarýný da yazdým tabii sonra, kaç tane sipariþ verdiklerini de buluyorum,
yani örn 28 numaralý müþteri 3 tane sipariþ verip 15432,50 tl ciro yapýp yüksek ciro durumunda yer almýþ diye yorumlamam gerekiyor.*/

/*kitaptan sayýsal fonksiyonlarý gösteriyor abs, sign, pi, ceiling, sqrt, square gibi... ayný kodlarý str fonksiyonlar için de iþledik sayfa 137,138*/
/*tarih iþlevleri için de veri türleri var. time, datetime,date, small datetime, datetime2 en ayrýntýlýsý. datetiff nasýl çalýþtýðýný bil.
varlýk iliþki þemasý çok önemli bunun nasýl yapýldýðýný öðren. özetlenmiþ deðerlerin kýsýtlanmasý iþlemi için de having kullanýlýr. having öztlenmiþ
veriyi ksýýtlamak için kullanýlýr. biri satýr biri grup bazlý ksýýtlama yapmak için kullanýlýr. group by ýn wherei gibi çalýþýr. bunu da öðren.
havingi 7. haftada anlatýyor örn notlarý zaten sýnýrlamýþýmdýr ancak bir de derim ki not ortalamasý 50nin üstünde olanlar gelsin gibi bir 
ekstra sýnýrlama yazabilirim (sayfa 144te var) ve having order bydan sonra yazýlýr.*/




/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI ÇALIÞMA 7. HAFTA ------------------------------------*/

/*datename: tarih türündeki bir verinin bir bölümünü isim olarak geri döndürür. bunlara ek olarak month = m þeklinde kýsaltmalar var kullanýrken bil.
datedýff komutu iki tarih arasýndaki farký hesaplamak ile ilgili bir komut. örn:*/

select DATEdIFF(HH,'2015/06/19 12:10', '2016/06/19 00:10') /*datedýff komutu belirtilen iki tarih arasýndaki farký hesaplamak için kullanýlýr ve 
baþýnda verdiðim parametreye göre hesaplar. benim verdiðim parametre yani hh saat olarak hesaplamasýný saðlar. iki saat arasýndaki saat farkýný hesapladý.
dk bulmak isteseydim mi demem gerekirdi. kitapta 149. sayfa datedýff, dateadd, isdate komutlarý  bunlarý bil. isdate bir metin türünün içeriðinin
tarih veri türüne uygun mu olup olmadýðýna bakar.*/


/*ALT SORGULAR-------------------------------*/
/*Alt sorgular aslýnda parantez içerisine bir veri kümesini hapsetmek oluyor. union all yaparken yapmýþtým. from bunlarýn en temel kullaným alanlarýndan
bir tanesi. alt sorgular tablo yani veri kaynaðý olarak kullanýlabilir.*/


/*ALT SORGULARIN TABLO OLARAK KULLANILMASI-------------------------------*/
Select [Ürün no], Miktar
from [Stok Hareketleri]
where([Hareket Türü]=1)
 
union all /*bu sorguyu zaten yazmýþtým hatýrlýyorum.*/

Select [Ürün no], Miktar
from [Stok Hareketleri]
where([Hareket Türü]=2)

/*bu sorguyu bir parantezler içerisine alýp bir tablo haline getireceðim. ondan önce de tarihleri görebilmek için
hareket oluþturulma tarihini ekleyeceðim. görelim:*/

select * from
(Select [Ürün no], Miktar, [Hareket Oluþturulma Tarihi] as Tar
from [Stok Hareketleri]
where([Hareket Türü]=1)
 
union all 
Select [Ürün no], Miktar*-1, [Hareket Oluþturulma Tarihi]
from [Stok Hareketleri]
where([Hareket Türü]=2)) as stok /*belirli bir tarih aralýðýndan sonraki kýsmý görmek istersem bunu where ile sýnýrlandýrabilirim.*/


/*where ile stok hareketlerinnin tarihini sýnýrlandýrdýðým.*/
select * from
(Select [Ürün no], Miktar, [Hareket Oluþturulma Tarihi] as Tar
from [Stok Hareketleri]
where([Hareket Türü]=1)
 
union all 
Select [Ürün no], Miktar*-1, [Hareket Oluþturulma Tarihi]
from [Stok Hareketleri]
where([Hareket Türü]=2)) as stok

where Tar < '2006-04-01' /*bu tarihten büyük olanlar gelmedi küçük olanlar geldi. þimdi de adet bilgilerini toplatabilirim. 
aþaðýda*/

Select [Ürün No], Sum(Miktar) as Stok from 

(SELECT [Ürün No], Miktar,[Hareket Oluþturulma Tarihi] as Tar
  FROM [Stok Hareketleri]
   WHERE ([Hareket Türü] = 1)
   UNION ALL
   SELECT [Ürün No], Miktar *-1,[Hareket Oluþturulma Tarihi]
   FROM [Stok Hareketleri]
  WHERE ([Hareket Türü] = 2)) As Stok

where Tar< '2006-04-01'

group by [Ürün No] /*groupby ile de ürün noya göre gruplamýþ oldum. ek olarak sorgunun alt sorgu olmasý için parantezler arasýnda olmas yeterli olur.*/


/*içecekler kategorisinde en az bir kere alýþveriþ yapmýþ olan müþterilerin numarasýný yazdýrmam gerekiyor.*/

Select M.No from
Müþteriler as M
inner join Sipariþler as S on S.[Müþteri No]=M.No
inner join [Sipariþ Ayrýntýlarý] as SA on SA.[Sipariþ No]=S.[Sipariþ No]
inner join Ürünler as U on U.No=SA.[Ürün No]

Where U.Kategori = 'içecekler'
group by M.No /* cansunun kodlarý bunlar ekstradan müþteriler tablosuna baðlýyordu. buna gerek yok içeriði deðiþtirmedi ancak doðru.*/
/*ek olarak bizden içecek satýn alan müþterilerin toplam cirosunu hesaplama gerekiyor þimdi de. toplam ciro lazým sadece.*/


Select 
SUM(SA.Miktar * SA.[Birim Fiyat])
from
[Sipariþ Ayrýntýlarý] SA
inner join Sipariþler as S on Sa.[Sipariþ No]=S.[Sipariþ No] /*müþteirlerin toplam cirosu. select ile toplam fonksiyonunu kullanarak ciro bulmak için kullandýðým
formülü kullandým yani miktar * biirm fiyat. from ile sipariþ ayrýntýlarý ile sipariþler tablosunu birleþtirerek istediðim sonucu elde ettim. ancak bu tüm müþteirler 
için geçerli ben sadece yukarýdaki müþteriler içi bunu hesaplamak istiyorum. bu yüzden müþterileri sýnýrlamam gerekiyor. where eklemem gerekiyor. aþaðýya eklenmiþ
halini yazýyorum tekrardan.*/


Select 
SUM(SA.Miktar * SA.[Birim Fiyat])
from
[Sipariþ Ayrýntýlarý] SA
inner join Sipariþler as S on Sa.[Sipariþ No]=S.[Sipariþ No]
where S.[Müþteri No]=1 /*müþteri no 1 olanlar ile sýnýrlamak istiyorsam bu þekilde diyebilirim. 1 ve 6 demek istiyorsam in kullanmam lazým. aþaðýda o þekilde yazdým.
1 numaralý müþteri 2410 tl harcamýþ*/

Select 
SUM(SA.Miktar * SA.[Birim Fiyat])
from
[Sipariþ Ayrýntýlarý] SA
inner join Sipariþler as S on Sa.[Sipariþ No]=S.[Sipariþ No]
where S.[Müþteri No] in (1,6,7,10,11,12,27,28,29) /*1 ve 6. müþteriler toplamda 10418 tllik harcama yapmýþ. diðer kiþileri de ekliyorum 1 ve 6dan sonra, 
istediðimiz cevaba ulaþýyoruz. bundan sonra baþka kategorideki ürünleri de ekleeybilirim ve bu sorguyu bir alt sorgu olarak kullanacaðým. aþaðýda var: */


Select 
SUM(SA.Miktar*SA.[Birim Fiyat])
From 
[Sipariþ Ayrýntýlarý] SA
inner join  Sipariþler S on Sa.[Sipariþ No]=s.[Sipariþ No]
where S.[Müþteri No] IN
(
Select
S.[Müþteri No]
From 
[Sipariþ Ayrýntýlarý] SA
inner join  Sipariþler S on Sa.[Sipariþ No]=s.[Sipariþ No]
inner join  Ürünler U on U.No=Sa.[Ürün No]
Where U.Kategori='Ýçecekler'
Group By S.[Müþteri No]
Intersect
Select
S.[Müþteri No]
From 
[Sipariþ Ayrýntýlarý] SA
inner join  Sipariþler S on Sa.[Sipariþ No]=s.[Sipariþ No]
inner join  Ürünler U on U.No=Sa.[Ürün No]
Where U.Kategori='Soslar'
Group By S.[Müþteri No]
)

/*iki tane veri kümesinin kesiþim kümesini bulmak istiyorum bu yüzden intersect ile iki veri kümesini birleþtireceðim. soslar ve içecekler kategorilerini birleþtirmiþ
olacaðým ve alt sorgu þeklinde çalýþtýracaðým. sonuç olarak 9027 çýktý bu da soslar ve içecekler kategorisinde satýn almýþ müþterilerin esiþim kümesini tekil 
olarak elde ettim ve bunlarýn toplam cirolarýný sadece bu kiþiler için hesaplattým. buna intersect yerine union deseydim çoðalacaktý bu sefer en az 1 kere içecekler
veya soslar kategorisinden alýþveriþ yapmýþ kiþileri getirip bunlarýn toplam cirolarýný bulacaktýk.*/


/*çorbalar alanýnda hiç satýn alma yapmamýþ müþterileri bulmam gerekiyor. */

Select
SUM(SA.Miktar*SA.[Birim Fiyat])
From
[Sipariþ Ayrýntýlarý] SA
inner join Sipariþler S on Sa.[Sipariþ No]=s.[Sipariþ No]
where S.[Müþteri No] IN
(
Select
S.[Müþteri No]
From
[Sipariþ Ayrýntýlarý] SA
inner join Sipariþler S on Sa.[Sipariþ No]=s.[Sipariþ No]
inner join Ürünler U on U.No=Sa.[Ürün No]
Where U.Kategori ='Çorbalar'
Group By S.[Müþteri No]
) /*serdarýn kodlar yukarýda yazdýðým kodun aynýsý neredeyse. sadece hububat yerine çorbalar þeklinde deðiþtirildi. sadece altaki kodu çalýþtýrýnca çorba alan müþterileri
görebiliyorum. þimdi de hiç müþteri tablomda alýþveriþ yapmamýþ biri var mý bunu bulmak istiyorum. aþaðýda: */

select * from Müþteriler
where 
No not in
(
select [Müþteri No] 
from Sipariþler
group by [Müþteri No] 
)
/*bu sorgum satýn alma iþlemi uygulamýþ müþterilerimi getiriyor ban ve no in kodunun içerisine not eklersem sadece bana bu kodun deðilini getirecek ve daha önce hiç
satýn alma iþlemi yapmamýþ olan müþterilerimi bulmuþ olacaðým. burada dikkat etmem gereken þey bir þeyin deðilini bulabilmek için not kullanmamýz gerektiðidir.*/

/*sipariþler tablosunda sipariþ numarasý olup da sipariþ ayrýntýlarýnda olmayan biri var mý diye bakacaðým þimdi de, çünkü bu da olabilir. sipariþ verme iþlemi
yarým kalmýþ olan da olabilir.*/

select [Müþteri No]
from Sipariþler
where
[Sipariþ No] in(

select Distinct [Sipariþ No]
from [Sipariþ Ayrýntýlarý])
group by [Müþteri No]/*sipariþ ayrýntýlarý tablosunda sipariþi olanlar bunlar, tekrardan kontrol ettim iki taraftan da çýktýlarý kontrol etmiþ oldum
bunu da gidip bir alt sorgu yapacaðým yani parantezler içerisine alýp üstüne kodlarýmý  yazacaðým. aþaðýda tekrar yazýyorum. hiç sipariþ vermeyenleri tekrar
bulacaðým. 2 numara bir öncekinde olmamalý aþaðýdakinde olmalý.*/

Select * from Müþteriler
Where No Not In (
Select [Müþteri No] From Sipariþler
where [Sipariþ No] IN ( Select Distinct [Sipariþ No] from [Sipariþ Ayrýntýlarý])
group By [Müþteri No]) 
/*bu kodda da hiç sipariþ vermemiþler var kontrol etmek istediðim için tekrar baþk þekide yazdým.*/


/*exist kullanýmý--------------------------------------*/

select Þirket
from Müþteriler as M
where Notlar exists
(seelct * from Sipariþler AS altsorgu
where altsorgu.[Müþteri No] = M. [No])
/*bu kodun üst kýsmý aslýnda þirket isimlerini görüntülüyor, ancak where ile alt sorguyla iliþkilendiriyor bu da
alt sorgudaki müþteri no ile üst sorgudaki müþteri noyu eþitliyor. yani alt taraftaki sipariþler tablosundaki
müþteri no ile üst taraftaki müþteri noyu eþitlediði zaman sadece sipariþler tablosunda yer alan müþterilerin 
þirketlerini getirmiþ oluyor. ayrýca þu an yazdýðým alt sorgu tek baþýna çalýþabilen bir sorgu deðil. çünkü myi yukarýda
tanýmladým. aþaðýda ise o m yi sýnýrladým. not exists  olmamasý gerektiði anlamýna geliyor sorgu her satýr için çalýþýyor eðer yoksa
siliyor. exists olmasý gerektiði anlamýna geliyor not ile kullanýnca olmamasý gerektiði anlamýna geliyor. yani exists ifadesi
alt tablo ile üst tablodaki müþteri numaralarýný birbirine baðlayarak sýnýrlýyor not dediðimde de orada olmayan müþterileri 
görüntüle demiþ oluyorum. alt sorgu ile üst sorguyu da bu þekilde birbirine ebaðlayabiliriz.*/



/*alt sorgular için daha karmaþýk bir sorgu inceleyelim:*/

SELECT [Sipariþ No],[Ürün No], Miktar, (Select AVG(Miktar)FROM [Sipariþ Ayrýntýlarý] WHERE [Ürün No]=a.[Ürün No] ),

Miktar-(Select AVG(Miktar) FROM [Sipariþ Ayrýntýlarý] WHERE [Ürün No]=a.[Ürün No] ) 
AS Fark
FROM [Sipariþ Ayrýntýlarý] as a
/*bu sorgu sipariþ ayrýntýlarý tablosunda her bir satýrý getiriyor ancak bunu getirirken satýlan ürünün miktarýný getiriyor 
o sipariþte, onun dýþýnda miktardan sipariþ ayrýntýlarýnda ilgili ürünün ortalama miktarýný hesaplatarak o miktardan
çýkartýyor. bu da þu demek, bugüne kadar bu üründen her defasýnda kaç kere sipariþ verilmiþse onun ortalamasýndan ne kadar yukarýda
ne kadar aþaðýda bunu hesaplatýyor.*/





/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI ÇALIÞMA 8. HAFTA ------------------------------------*/


/*INSERT INTO komutu ile baþlayacaðýz bir veriye veri ekleme ile baþlayacaðýz. eðer bir dataya veri eklemek istiyorsak bunun yazým kuralý þu þekilde:
insert into dedikten sonra hangi veri tabanýna ekleyeceksem onu söylemem gerekiyor. çünkü emir cümlesi kurduðumu unutmamam gerekiyor. örn a tablosunun içine bakýp 
a tablosuna ekleyelim. tablo ismimi söyledikten sonra, A tablosuna ekleyeceðimi söyledim ben, tablonun hangi alanlarýna veri ekleyeceðimi söylemem gerekiyor. A tablosunda
A_Id ve Ad alanlarý var bu alanlarý parantez içinde yazmam gerekiyor. bunlarýn içine ekleyeceðim için bunlarý yazdým.*/


select * from A /*a tablosuna veri eklemeye çalýþacaðým insert into ile.*/
insert into A (A_Id, Ad) /*insert intodan sonra hangi veriye ekleyeceðimi söyledim sonrasýnda da hangi tablolara ekleyeceðimi söyledim parantez içerisinde.*/
values (10,'on') /*eðer elle veri eklemek istiyorsam values demem lazým. valuesdan sonra yine parantez içerisinde eðer int deðer gireceksem normal str deðerse týrnak içinde yazmam gerek*/

select * from A /*burada veri eklerken dikkat etmem gereken þeylerden biri sütun sayýsý kadar veri eklemek zorunda olduðumdur, biri boþ kalsýn diyerek veri ekleyemem veya
sütun sayýsýndan fazla olacak þekilde veri ekleyemem. eðer yanlýþlýkla ayný veriden iki tane eklersem dikkat etmem gereken þey sadece birini silmenin bir yolunun olmadýðýdýr,
yalnýzca ikisini birden silersem olabilir çünkü baþta primeri key iþaretlemedim. bu olmadýðý için sqlinde iki veriyi ayýrt edecek bir yolu yok. illa boþ býrakmak 
istiyorsam null da ekleyebiliyorum.*/

/*valuesa ek olarak select yani bir seçme sorgusu da ekleyebiliyorum. ayný kod üzerinde görelim.*/


select * from A 
insert into A (A_Id, Ad) 

select B_Id, Name from B /*seçme sorgusu ile bu þekilde normal bir select sorgusu yaparak veri ekleyebiliyorum. values yerine selectle yazmýþ oluyorum 
bu þekilde birden fazla veri ekleyebiliyorum*/

select * from A


/*Peki kendi tablosunun içeriðini kendi tablosuna ekleyebilir miydik?*/

select COUNT(*) from A 
insert into A (A_Id, Ad) 

select B_Id, Name from B /*count ile görüldüðü þekilde tüm deðerlerini saydýrabiliyorum. buna ek olarak kendisini eklemek istediðimde kendi sütunlarýný yazmam gerekiyor*/

select COUNT(*) from A
/*-------------------------------------*/
select COUNT(*) from A 
insert into A (A_Id, Ad) 

select A_Id, Ad from A 

select COUNT(*) from A
/*kendi tablosunu kendisine eklediðimde görüldüðü gibi veri 2 katýna çýkmýþ oluyor. yani kendisinin bir kopyasýný kendisine eklemiþ oluyor. birkaç kere f5e basarak
sürekli veriyi 2 katýna çýkardým ve toplam da 13 milyon satýrlýk bir veri elde ettik ve bunu excelde yapamazdýk. þimdi de özetlerine bakacaðým.*/

select Ad, COUNT(*) from A
group by Ad /*bu kodumu çalýþtýrdýðýmda da hepsinden kaçar adet üretildiðini görebiliyorum.  çok fazla verim olduðu için þimdi onlarý temizlemem gerekiyor.
delete komutum ile temizleyeceðim ancak where ile bir koþul koymam gerekiyor.*/

select distinct A_Id from A

delete from A
/*where A_Id <7*/



select distinct A_Id from A /*hepsini silmek için wherei tamamen boþalttým.*/


/*veri giriþi olan bazý komutlar var sayfa kitap160ýnda cast, convert gibi onlarý bil.*/


/*VERÝ DÜZENLEME ÝÞLEVLERÝ*/
/*veriyi düzenleme iþlevleri önemli bizim için bunlarý bilmem lazým.*/

/*öncelikle þimdi bir tane müþteriler tablosundan bir tane çalýþmak için m tablosu oluþturacaðým.*/

Select * INTO M from Müþteriler /*bu þekilde m tablosunu oluþturdum olmuþ. tüm sütunlarý seçtim ve into diyerek tüm sütunlarýmýn kayýtlarýný yaptým ve from ile müþteriler
tablomdan almasýný saðladým m diyerek de tabloma m tablosu ismini verdim. þimdi tablomu çaðýracaðým.*/

select * from M /*örn 7. satýrdaki yani nosu 7 olan satýrdaki ismi güncelleyebiliriz.*/

update M 
set Ad = 'Ayþe Mine' /*direkt olarak bu kodu bu þekilde çalýþtýrýrsam tüm verilerimin ismi ayþe mine olurdu buna bir where ile sýnýrlama eklemem gerekiyor.*/
where No=7 /*nosu 7 olan diyerek sadece 7. sýradaki isme güncelleme yapabilirim ya da adý mine olanlar diyebiliriz ancak bu sefer tüm adý mine olanlar güncellenir.*/

select * from M /*bu þekilde sadece nosu 7 olan satýrý ayþe mine þeklinde update etmiþ oldum. bbu komutta bu þekilde kullanýlýyor. dikkat etmem gereken þey sakýn bir
sýnýrlama yazmadan kullanmamam gerektiðidir. þimdi de e posta adresini güncelleyelim görüldüðü gibi yok ancak ekleyeceðim.*/

update M
set [E-posta Adresi] = 'simdilik@yok.ama.sanane.len.com'
where No=7

select * from M /* görüldüðü gibi olmayan satýra da güncelleme iþlemi yapabiliyorum. eðer eþittir yerine > deseydim tüm müþterilerimin e posta adresi ayný olacaktý
ancak 7den büyük olanlarýn yani koþulu saðlayanlarýn. bunu yapacaðým sonrasýnda bu durumu düzelteceðim. bu durum bir fatal errordur. olmamasý gerekir.
bu durumu düzeltmek için rollback kullanýlabilir ancak biz kullanamaycaðýz. biz bu tabloyu müþteriler tablosundan aldýk ve yine tablomu müþteriler tablomdaki doðru
bilgiler ile güncelleyerek hatalarýmý giderebilirim. yani tablolarýmýn orijinalleri ile çalýþmak yerine ekstradan bir kopyasýný oluþturarak çalýþmaya dikkat etmem gerekiyor.
update komutunda select sorgualrý gibi baþka tablolardan verileri kullanabildiðime dikkat etmem gerekiyor. bunun için fromu kullanmam yeterli ve inner join eklemem lazým.
müþteriler ile m yi baðlamam lazým. yapalým.*/

update M 
set Ad = Müþteriler.Ad
from Müþteriler inner join M on M.No=Müþteriler.No /*müþteriler ile m tablosunu nodan baðladýðým için aslýnda arkada bir select sorgusu yapacak güncelleyeceði tablonun
nosu ile müþteriler tablosunun nosunu birbiri ile eþitleyecek ve karþýsýna gelen adlarý m tablosundaki adlarýn yerine yerleþtirecek.*/

select * from M


/*þimdi yapmam gereken þeyler:

-- müþteriler tablosuna Ciro isminde para birimli bir alan ekleyiniz.*/

alter table [dbo].[Müþteriler] add ciro money /*bu þekilde müþteriler tablosuna ciro isimli sütunu eklemiþ oldum*/
select * from Müþteriler

/*-- Ciro alanýna her bir müþterinin sipariþlerinden 
--hesaplanan ciro verisini güncelleyiniz.
burada yapmam gereken þey direkt bir þey eklemek yerine bir iþlem barýndýrýyor buu yüzden bunu biraz daha alt sorgu þeklinde yazmam daha saðlýklý olacak çünkü bir
tutar hesaplanacak. sonra bu tabloya isim verip inner joinle baðlarým.*/
select * from Müþteriler

Update Müþteriler
Set  ciro=c.Ciro
From 
(
Select S.[Müþteri No], Sum([Birim Fiyat]*Miktar) As Ciro
From Sipariþler S inner join [Sipariþ Ayrýntýlarý] SA 
on S.[Sipariþ No]=SA.[Sipariþ No]
Group By S.[Müþteri No]

) As C
inner join  Müþteriler On 
C.[Müþteri No] = Müþteriler.No


select * from Müþteriler

/*bu sorguda demek istediðim þey tüm müþter için örn 1 numaralý müþteriyi bul karþýsýna toplam ciroyu yapýþtýr. artýk müþterilerin bir iþlemi varsa null deðerler
yerine veriler geldi ancak bazýlarý boþ kalabilir. dikkat etmem gereken þey iç sorguda hesaplamalar yapýp üst sorgu ile eþleþtirip üst sorguya göre nerede
eþleþtirilmesi gerekiyorsa onunla eþleþtirip hesapladýðým cirolarý her müþterinin sýrasýný bulup karþýsýna cirolarý güncellemek oluyor.*/


/*harf notlaeýyla ilgili olan ödevle oyalandý sonunda. worddeki sorguyu buraya yapýþtýrýp yeni bir db oluþturuyorlar.*/



/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI ÇALIÞMA 9. HAFTA ------------------------------------*/

/*ödevin çözümüyle baþladý*/


/*DEÐÝÞKEN ÝÞLEMLERÝ----------------------------------------*/

/*deðiþken tanýmlamak için ayný programala manýtýðý gibi yukarýdan aþaðý çalýþma mantýðý vardýr. mutlaka @ iþareti ile baþalamalýdýr. bu yapý sayesinde bir sorgudaki
yapýyý alýp baþka bir sorguda kullanabiliriz gibi iþlemler yapabiliriz. programalama mantýðý ile hareket edeceðim. örnek yapalým*/

Declare @Bolum_No int;
Set @Bolum_No=1 
/*declare komutunu deðiþken tanýmlamak için kullanýyorum. declare dedikten sonra @ iþareti koyarak deðiþkenimi tanýmlamak için isim veriyorum ve hangi türde veri
olmsaý gerektiðini söylüyorum sonra aþaðýsýna set diyerek deðiþkenimi yazýyorum ve almasý gereken deðer int türünde bir deðer olduðu için int bir deðere eþitliyorum.
artýk bu benim için çalýþýp bitene kadar bir deðiþkendir. select ile seçebilirim. örn*/

select @Bolum_No /*gözükmesi için tanýmlama ile ayný anda çalýþtýrýlmalý. ayný zamanda print ile de kullanabilirim. bu da messages kýsmýnda gözükür*/
print 'merhaba dunya'
print @Bolum_No


/*bir deðiþkeni tablo olarak da yaratabiliriz bunun için yine ayný mantýðý kullanýyorum ekstra olarak sadece table demem gerekiyor.*/
declare @A Table(
id int identity(1,1),
Ad nvarchar(10)) /*bu deðiþken artýk A isimli bir tablo oldu ve iki tane sütunu oldu, bunlardan birincisi id ve int deðerinde deðer alýrken ikincisi sözel bir deðer
alabiliyor ve sütun ismi Ad ve en fazla 10 harflik bir deðer alabiliyor. artýk bu A tablosuna deðer atayabilirim.tekrardan hatýrlatmakta fayda var bu tablo biz 
çalýþtýrdýðýmýz sürece burada kullanýlýyor. identity ile 1 er 1er artmasýný söyledim*/

insert into @A (Ad)
values ('bir') /*insert into diyerek tablomun @ ile adýný söyleyip daha sonrasýnda hangi sütununa eklemek istediðimi söylüyorum ve sonrasýnda da values diyerek
ne deðer ekleyeceksem parantezler içerisine yazýyorum.*/

insert into @A (Ad)
values ('iki')

select * from @A

insert into @A (Ad)
select Ad from @A

select * from @A /*tablolarýma yine kendisini ekledim ve bir eklenmiþ bir de eklenmemiþ hallerini yazdýrdým. buradaki örnek çok mantýklý olmasa da tablo yapýsýný bilmek
gerekiyor bu tablolar oluþturulup kullanýlýp daha sonrasýnda da silinebiliyorlar.tanýmladýðým deðiþkenler programlama dillerindeki gibi kayýt altýna alýnmýyorlar
o yüzden tanýmladýðým deðiþkenlerle yazdýðým kodlarý ayný anda çalýþtýrmam gerekiyor.*/


/*AKIÞ KONTROLÜ-----------------------*/
/*akýþ kontrolleri için if else yapýsýný kullanýyoruz bu bildiðimiz if else yapýsýdýr. burada bu sefer iki f ile yazmayacaðým normal bildiðim þekilde if else þeklinde
kullanacaðým yine eðer anlamýnda kullanýlmaktadýr.*/
/*buradan sonra okul dbyi kullanarak devam ettik.*/
use Okul
Declare  @Ogrsay int

Select @Ogrsay=Count(*) From Ogr

IF @Ogrsay>50
 Print 'Öðrenci Sayýsý 50 den fazla'
   else 
   Print 'Öðrenci Sayýsý 50 den az'

/*deðiþkenimi oluþturuyorum ve bunlarý saydýrýyorum sonrasýnda eðer sayý 50den fazlaysa öðrenci sayýsý elliden falza yazdýrmasýný söylüyorum
deðilse az yazdýrmasýný istediðimi söylüyorum. ifin en kolay basit þekilde kullanýmý bu þekilde ve buna benzer þekillerde olabilir. görüldüðü gibi artýk bir 
sonuç üretmiyor çünkü select ile sorgumu seçmedim. bu sorgu sadece öðrenci say deðerine veri aktarýyor o kadar. bu yüzden bana herhangi bir sorgu sonucu döndürmüyor
sadece sorgu sonucunu bir deðiþkene atýyor.*/


/*Case yapýsý------------------------------*/
/*öðrendiðimiz case yapýsýyla ayný sadece burada programlama içerisinde baðlanma saðlýyor. örn yazmadý bunun örnleri 2. kitapta mevcut.*/


/*While yapýsý var yine ayný mantýk þart saðlandýðý sürece sorgunun çalýþmasýna devam edilen bir yapý. kitaptan bir örn yazalým.*/
DECLARE @sayac INT
DECLARE @toplam INT
SET @sayac=1 
SET @toplam=0 
WHILE (@sayac<=100)
 BEGIN
 Set @toplam=@toplam+@sayac
 Set @sayac=@sayac+1
 END
 Print @sayac
 Print @topla
 /*neden çalýþmadý anlamadým hocanýn kodu azcýk daha farklý sadece bakacam sonra, burada da yine continue ve break komutlarý çalýþýyor. ekstra örn:*/

  DECLARE @sayac INT
 DECLARE @toplam INT
 SET @sayac=1 
SET @toplam=0 
WHILE (@sayac<=100)
 BEGIN
 Set @toplam=@toplam+@sayac
 Set @sayac=@sayac+1
 If @toplam >3000 
BREAK
 ELSE 
CONTINUE
 END
 Print @sayac
 Print @Toplam

 /*bu sefer çalýþtý.*/


 /*GOTO YAPISI--------------------------------------*/

/*ETÝKET verilerek kullanýlýyor buna bir örn kitaptan:*/

DECLARE @sayac INT
 DECLARE @toplam INT
 SET @sayac=1 
SET @toplam=0 
Basla: 
Set @toplam=@toplam+@sayac
 Set @sayac=@sayac+1
 If  (@sayac<=100) 
GOTO basla
 Print @sayac
 Print @Toplam /*birden yüze kadar olan sayýlarýn toplamýný while ile deðil de goto ile hesaplýyor.*/



/*DÝNAMÝK SORGULAR -----------------------------------------------*/
/*dinamik sorgularda sorguyu kendimiz elde edip çalýþtýracaðýz.*/

DECLARE @tabloAdi VARCHAR(50)
SET     @tabloAdi='Ogr'
DECLARE @Sorgu VARCHAR(50)
SET     @Sorgu='SELECT * FROM '+@tabloAdi
EXECUTE(@Sorgu)

/*çalýþtýrdýðým gibi direkt dosyanýn içi geldi. burada dikkat etmem gereken þey dinamik sql sorgularý
yaparken excute komutunu kullanabildiðimdir. buralarý gidip kitaptan okuyabilirsin.*/


/*ÝMLEÇ ÝÞLEMLERÝ---------------------------------------------------*/

/*Zaman zaman hoca imleç iþlemlerini kullandý. örn tarihler arasýndaki zaman farkýný hesaplamak için  bunu kullandýk. þu anda da örn okuldaki tüm öðrencilerimizin
isimlerini yan yana bir text olarak elde etmek istediðimiz düþünelim. çalýþma mantýðý hedef bir deðiþken belirleme ve tüm stýrlarda buna uygun iþlemi yapmak üzerine
oluyor. çok farklý kullaným amaçlarý olabiliyor. öðrenciler tablosu için yapýyoruz*/

DECLARE @ADSOY nvarchar(100)
DECLARE @HEDEF nvarchar(max)

--Ýmleç veri kümesi için tanýmlanýr.
DECLARE Ogr_cursor CURSOR FOR
SELECT Adsoy from Ogr Order By ADSOY Desc 
--Ýmleç açýlýr
Open Ogr_cursor 

-- ilk kayýt talep edilen veri kümesi sýrasý ile okunur.
--(Ad ve Cins deðiþkeni sorgu ile ayný sýrada olmalý )

FETCH NEXT FROM ogr_cursor INTO @ADSOY /*öðrenciler tablosundaki deðerleri adsoy deðiþkenine aktarýyoruz cursor da satýr aralarýnda gezinecek olan þeye denir. teker teker satýrlarý yazýyorum*/

SET @HEDEF= 'Sýnýfýmýzda ' 
SET @HEDEF=@HEDEF + @ADSOY 

FETCH NEXT FROM ogr_cursor INTO @ADSOY

--While döngüsü ile son kayda gelinceye kadar birer birer ilerleme kurgulanýr.

WHILE @@FETCH_STATUS = 0
Begin
   
   SET @HEDEF=@HEDEF +', '+  @ADSOY -- Her bir veri metne eklenir. 

   FETCH NEXT FROM ogr_cursor INTO @ADSOY--Soraki kayda iler-lenir.
END
SET @HEDEF= @HEDEF +' adlý öðrenciler bulunmaktadýr.' 
Select @HEDEF
--Ýmleç kapanarak silinir.
Close ogr_cursor
deallocate ogr_cursor


/*bu ünitede deðiþken tanýmlamak ve tablo yapýsýný öðrenmek önemli. strude prosedür ve triggerlarý öðreneceðiz bir de.*/





/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI ÇALIÞMA 10. HAFTA ------------------------------------*/

/*stored prosedür. aslýnda saklý yordamlar demek oluyor. içeride ön tanýmlý olarak yapýlan iþlemlerden bahsediyor. ilk stored prosedürümüzü yazabiliriz.*/
/*il ismini girelim o ildeki müþterilerin toplam cirosunu bulup gelen bir stored prosedür yazalým. programmabilitynin altýna stored procedureye gelip sað týklayýp
new dersem ban gidip stored procedure yazmak için bir þablon açacak ayný html ! demek gibi. sonrasýnda o þablon üzerinden devam ederek kendi prosedürümü oluþturabilirim.*/

/*stured prosedürler güncelleme yaptýklkarýnda 0 ve 1 gibi þeyler döndürürler ya da bazý mesajlar döndürebilirler. CREATE procedure dedikten sonra prosedürümün 
ismini yazmam gerekiyor. daha sonrasýnda parantez içinde yazarak @ ile yazmam gerekiyor. burada deðiþken gibi kullanýyorum ancak bu bir parametre iþlevi görecek.
@ ile yazdýktan sonra da bir isim veriyorum ve veri türünü yazýyorum veri türünü yazdýktan sonra eðer stured prosedürü geri döndüreceksek yanýna out yazýyoruz. sonrasýnda
bu paramtrem çalýþacak ve benim prosedürümün içerisine bir parametre gelecek. daha sonrasýnda ciro ile ilgili sorgumu begin altýna yazmam mümkün. biz onu ilgili select
sorgusunu sýnýrlamak için kullanacaðýz.*/

Alter PROCEDURE ILCIROSU 
	(@iladi nvarchar(50) )

AS
BEGIN
	
	select sum([Sipariþ Ayrýntýlarý].Miktar * [Sipariþ Ayrýntýlarý].[Birim Fiyat]) as Ciro
	from Sipariþler
		inner join [Sipariþ Ayrýntýlarý] on Sipariþler.[Sipariþ No] = [Sipariþ Ayrýntýlarý].[Sipariþ No]
		inner join Müþteriler on Sipariþler.[Müþteri No] = Müþteriler.No

where (Müþteriler.Þehir = @iladi or @iladi='Tüm')

return 1

END
GO /*bu benim stured prosedürüm. beginden sonra da istediðim ciro ile ilgli olan sorgumu yazdým. en sonuna da bir geri döndürme istediðim için return 1 yazdým.
end ve go ile de bitirdim. kodu çalýþtýrdýktan sonra programmabilitynin altýnda ilcirosu prosedürümü direkt görebiliyorum. bunu çalýþtýrmak için sað týklayarak execute
dedimeme gerekiyor. execute dedikten sonra bana direkt olarak bir pencere açacak ve bu pencereden bazý ayarlamalar yapmam gerekecek. açýlan pencerede yapmak istediðim
sorgu için bir il yazmam gerekcek örn orada sinop yazdýktan sonra bana o ilin cirosunu hesaplayarak döndürecek. o pencereyi açmak için; sað týkla execute dedikten sonra
pencere açýlacak açýldýktan sonra value kýsmýna sinop yazýyorum. yeni bir pencere açýldý ve bu pencerede çalýþan kodlar çýktý aslýnda bu kodlar da direkt olarak çalýþabiliyor
ancak bu kodlara bir parametre yazmak gerekiyor. yani ben burada bu parametereleri deðiþtirerek istediðim tablolarý otomatik olarak hesaplatabilirim. kodlarda da sinopun
olduðu yer parametre ve buradaki þehri deðiþtirince baþka þehirlerin de hesaplamalarý yapýlabiliyor. þehri deðiþtirip f5 yaptýðýmda yeni hesaplama oluþmuþ oluyor. mutlaka
begin ve end bloklarý var bunlarý yazmam gerekiyor. begin ve end bloklarý arasýndaki kodlar çalýþtýrýlacak. biz bir tablo istemiþtik bir tablo geldi eðer iki tablo isteseydik
iki tablo gelecekti.*/

/*birçok stored prosedur oluþturulabilir farklý farklý örn dinamik bir stured prosedür de oluþturulabilir. ek olarak execute dedikten sonra açýlan penceredeki exec ifadesi
prosedürü çalýþtýran komuttur. bunu bilmekte fayda var. eðer parametre göndermeden bunu yazmak isteseydik yine hiçbir þey yazmadan da bunu çalýþtýrabilirdik. ek olarak
tüm dediðimde tüm ciroyu nasýl göstermesini saðlardým bunu yapmam lazým. tüm dediðimde tüm illerin cirosunu bana gösterecek þekilde kodlarý güncellemem lazým. where
satýrýnda deðiþiklik yapmam gerekir. burada öyle bir güncellem yapacaðým ki tüm ifadesini yazdýðýmda bana tüm illerin cirosunu hesaplayarak döndürecek. where kýsmýnda
or diyerek bir de @iladi=Tüm þeklinde bir güncelleme yaparsam ikinci bir seçenek olarak parametreyi tüm verdiðimde tüm illerin cirosunu hesaplayacak. bunu kontrol
etmek için de sadece select kýsmýný çalýþtýrdýðýmda zaten tüm illerin cirosunu hesapladýðýný görebiliyorum. */



/*þimdi de öyle bir stored prosedür yazacaðým ki tablo adýný gönderdiðimde bana satýr sayýný veren bir prosedür yazacaðým. þu þekilde oluþturmam gerekiyor.*/

alter procedure satirsayisi
(@tabloadi nvarchar(50))

as 
begin

declare @ST int
declare @sorgu nvarchar(1000)

	set @sorgu = 'select COUNT(*) from' + @tabloadi
	execute(@sorgu)

	select @st=count(*) from Müþteriler

return @st
end
/*hocada 3 satýr bende 1 satýr veri çýktý baya az veri varmýþ. taþýyýcýlar yerine müþteriler tablomu çalýþtýrdým. n ile boþluk býrakmadýðým için olmuþ boþluðu býrakýnca
düzeldi. müþterilerin altý çizili olmasýn raðmen çalýþtý. bu þekilde dinamik tablolar oluþturabiliyorum. iþime yarayan þekillerde bu þekilde otomatik olarak hesap
yapacak tablolar oluþturabilirim. burada bilmem gereken ekstra þeyler create procedure, alter procedure ve drop procedure þeklinde. bunlarý yazmayý bilmem gerekiyor ve
bu procedurlere default deðer de verebiliyorum yani parametre vermeden de çalýþmalarýný saðlayabiliyorum. procedurelerdeki top5 de bir procedure ve sýralama yapýyor.
bildiðin fonksiyon yazar gibi yazabiliyorum. saklý yordama olan kodlarý oku ve çalýþ. 

-----------sayý deðerli fonksiyonlar. kiþinin doðum tarihini gönderdiðimizde kiþinin yaþýný
hesaplayan bir fonksiyon yapabiliriz. create fonciton ile yazýlýyor. return ile bir geri dönüþ yaptýrýlýyor. fonksiyonlar da basit*/

Create function Yas(@Dogumyili int)
returns int
as 
begin
	declare @hesap int
	  set @hesap=YEAR(GETDATE()) - @Dogumyili /*burada year getdate sistem tarihini yýla dönüþtür ve getir demek oluyor. ve bundan doðum yýlýný çýkarýyor.*/
	return @hesap /*hesap kýsmýný döndürüyorum.*/
end


/*stured prosedure gibi bu sefer fonksiyon yazmýþ olduk. programmabilitynin altýnda bu sefer functions kýsmýnda scalar valued kýsmýnda yazdýðým fonksiyonu görebiliyorum.
artýk bu fonksiyonu kullanabilirim yas fonksiyonumun altýnda parametrelerimi de görebiliyorum. yani artýk stured prosedürümü þu þekilde oluþturabilirim fonksiyonumu
kullanarak.*/

select dbo.Yas(1975) /*görüldüðü gibi fonksiyonum yaþ fonksiyonunun içerisine parametre girince yýlýmýza göre olan yaþý hesaplýyor.tabi bunu bu þekilde kullanmak için
yazmadýk bunu gidip bir tabloda kullanabilirim. örn sayýsal bir sütunla deneyelim.*/

select dbo.Yas([No] + 1900) /*tüm sýra nolarýn 1900 ekleyip yaþ fonksiyonuma gönderdim. ve sonuçlarý yaþ hesaplanmýþ gibi elde edeceðim.*/
	from [Northwind].[dbo].[Müþteriler] /*sonuçlar 122 yaþ varmýþ gibi baþlayýp aþaðý doðru devam ediyor.*/



/*tablo deðerleri fonksiyonlar. burada da yine bir parametre var ve bu parametreye göre bir tablo döndürüyor. örn:*/

create function fn_calisanlarlistele()
returns table
as 
return select * from Calisanlar  /*çalýþmadý bakacaðýz.*/




/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI ÇALIÞMA 11. HAFTA ------------------------------------*/

/*ödev 3 ile baþladý dersin baþýnd aödev 3 ü çzöüyor. ödev3 önemli tek baþýna bi çözemey çalýþ sýnav çalýþmasý gibi olacak. dersin son yarým saatinde hoca
kendi de soru üretti onlara bak. 10.dkda da var.*/





/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI ÇALIÞMA 12. HAFTA ------------------------------------*/
/*triggerlar sýnavda dahil deðil ancak genel kültür açýsýndan bilmek önemli. triggerlar otomatik rapor oluþturma ve veri tutarlýlýðýný saðmak için önemlidir.
triggerlar bir olay olduðunda kendi kendini çalýþtýran stured prosedürlerdir. tetikleme olayý veriye bir tablo eklenmesi olabilir. tabloya veri ekleme veya silme
olabilir. þimdi birkaç tane trigger yazacaðýz. iþ hayatýnda trigger yazmak gerekli olabiliyor. bu yüzden bilmekte fayda var. müþteriler tablosunda çalýþalým. müþteriler
tablosuna geldim ve sað týkladým, script table as dedim, create dedim, new query editor window diyorum ve bu sayede müþteriler tablomun bir kopyasýný oluþturmuþ oluyorum.
hoca bunun kodunu chate attý o yüzden new query açýp deniyorum. denediðim kodu buraya yepýþtýracðým. iþte kod:*/

CREATE TABLE [dbo].[M_Yedek](
 [No] [int] ,
 [Þirket] [nvarchar](50) NULL,
 [Soyadý] [nvarchar](50) NULL,
 [Ad] [nvarchar](50) NULL,
 [E-posta Adresi] [nvarchar](50) NULL,
 [Ýþ Unvaný] [nvarchar](50) NULL,
 [Ýþ Telefonu] [nvarchar](25) NULL,
 [Ev Telefonu] [nvarchar](25) NULL,
 [Cep Telefonu] [nvarchar](25) NULL,
 [Faks Numarasý] [nvarchar](25) NULL,
 [Adres] [nvarchar](max) NULL,
 [Þehir] [nvarchar](50) NULL,
 [Eyalet/Ýl] [nvarchar](50) NULL,
 [Posta Kodu] [nvarchar](15) NULL,
 [Ülke/Bölge] [nvarchar](50) NULL,
 [Web Sayfasý] [nvarchar](max) NULL,
 [Notlar] [nvarchar](max) NULL,
 [Ekler] [varchar](8000) NULL,
 [ciro] [money] NULL)

 /*birkaç tane trigger daha azacaðýmýz için bir tane daha M_Eklenen þeklinde bir trigger yazacaðýz.*/

 CREATE TABLE [dbo].[M_Eklenen](
 [No] [int] ,
 [Þirket] [nvarchar](50) NULL,
 [Soyadý] [nvarchar](50) NULL,
 [Ad] [nvarchar](50) NULL,
 [E-posta Adresi] [nvarchar](50) NULL,
 [Ýþ Unvaný] [nvarchar](50) NULL,
 [Ýþ Telefonu] [nvarchar](25) NULL,
 [Ev Telefonu] [nvarchar](25) NULL,
 [Cep Telefonu] [nvarchar](25) NULL,
 [Faks Numarasý] [nvarchar](25) NULL,
 [Adres] [nvarchar](max) NULL,
 [Þehir] [nvarchar](50) NULL,
 [Eyalet/Ýl] [nvarchar](50) NULL,
 [Posta Kodu] [nvarchar](15) NULL,
 [Ülke/Bölge] [nvarchar](50) NULL,
 [Web Sayfasý] [nvarchar](max) NULL,
 [Notlar] [nvarchar](max) NULL,
 [Ekler] [varchar](8000) NULL,
 [ciro] [money] NULL,
 tarih datetime)

 /*ilk önce silinme triggerý yazacaðýz. otomatik olarak silme iþlemi yapacak. öncelikle triggerýn þablonunu görelim. bir trigger yazarken mutlaka bir tabloya baðlamamýzü
 gerekiyor çünkü bir oly tanýmlayacaðýz. o yüzden müþteriler tabloma gelip artýya basýyorum altýnda yer alan trigger kýsmýna sað týklayýp new trigger diyorum. 
 bana hemen þablon bir yazým kuralý penceresi açýlýyor zaten. hazýr olarak beni oraya gönderiyor. triggerýmdan yeþil yorum satýrlarýný kalabalýk yapmamasý için
 kaldýrýyorum ve öncelikle bir isim veriyorum. yazdýðým trigger þablonu aþaðýda sonra güncellediðimiz halini de yazacaðým aþaðýya.*/


CREATE TRIGGER <Schema_Name, sysname, Schema_Name>.<Trigger_Name, sysname, Trigger_Name> 
   ON  <Schema_Name, sysname, Schema_Name>.<Table_Name, sysname, Table_Name> 
   AFTER <Data_Modification_Statements, , INSERT,DELETE,UPDATE>
AS 
BEGIN
	SET NOCOUNT ON;
END
GO


/*trigger ilk olarak açýldýðýnda bu halde oluþmuþ oluyor. daha sonrasýnda aþaðýdaki hale getiriyorum.*/


CREATE TRIGGER Trg_Musteri_Silme /*bu kýsýmda triggerýma diðer nesneler ile karýþmamasý için isim trg ile baþlayan bir isim verdim*/
   ON  Müþteriler /*bu kýsýmda triggerýmý tablo için yazdýðým için müþteriler tablomu yazmam gerekiyor.*/
   AFTER DELETE,UPDATE> /*buradaki after edatý befaore da olabilir after da olabilir. after kullanýlýr genelde yani bir iþlem
   bizim yazdýðýmýz koda göre bir silinme iþlemi yapýldýktan sonra bunu otomatik olarak çalýþtýracak. afterdan sonra delete, update ve insert olabiliyor. biz þu an
   deleteyi kullanacaðýz. þu an þablonum hazýr. trigger þablonum bu þekilde olmalý.*/
AS 
BEGIN

	SET NOCOUNT ON;

END
GO

/*-----------------------------**********---------------------aþaðýda dersin kalanýnda çalýþtýðým komutlarý koyuyorum.*--------------------------**********-----*/

CREATE TRIGGER Trg_Musteri_Silme /*bu kýsýmda triggerýma diðer nesneler ile karýþmamasý için isim trg ile baþlayan bir isim verdim*/
   ON  Müþteriler /*bu kýsýmda triggerýmý tablo için yazdýðým için müþteriler tablomu yazmam gerekiyor.*/
   AFTER DELETE /*buradaki after edatý befaore da olabilir after da olabilir. after kullanýlýr genelde yani bir iþlem
   bizim yazdýðýmýz koda göre bir silinme iþlemi yapýldýktan sonra bunu otomatik olarak çalýþtýracak. afterdan sonra delete, update ve insert olabiliyor. biz þu an
   deleteyi kullanacaðýz. þu an þablonum hazýr. trigger þablonum bu þekilde olmalý.*/
AS 
BEGIN
	
INSERT INTO [dbo].[M_Yedek]
([No],[Þirket],[Soyadý],[Ad],[E-posta Adresi],[Ýþ Unvaný],[Ýþ Telefonu],[Ev Telefonu],[Cep Telefonu],
[Faks Numarasý],[Adres],[Þehir],[Posta Kodu],[Web Sayfasý],[Notlar],[Ekler],[ciro], tarih)


SELECT [No],[Þirket],[Soyadý],[Ad],[E-posta Adresi],[Ýþ Unvaný],[Ýþ Telefonu],
[Ev Telefonu],[Cep Telefonu],[Faks Numarasý],[Adres],[Þehir],[Eyalet/Ýl],[Posta Kodu],[Ülke/Bölge],
[Web Sayfasý],[Notlar],[Ekler],[ciro],GETDATE()
FROM deleted /* müþteriler yerine buraya deleted diyeceðim. bu tablodan alýnan verilerle gidip müþteriler tablosunda silinen kýsýmlarý yedekleyecek.*/


END
--*****************************************************************************************************
-- hocanýnki çalýþtý benimki çalýþmadý baakacaaazzz aþaðýdaki hocanýnki.

CREATE TRIGGER Trg_Musteri_Silme
   ON  Müþteriler
   AFTER DELETE
AS 
BEGIN



  INSERT INTO [dbo].[M_Yedek]
           ([No],[Þirket],[Soyadý],[Ad],[E-posta Adresi],[Ýþ Unvaný],[Ýþ Telefonu],[Ev Telefonu]
,[Cep Telefonu],[Faks Numarasý],[Adres],[Þehir],[Eyalet/Ýl],[Posta Kodu],[Ülke/Bölge],[Web Sayfasý]
,[Notlar],[Ekler],[ciro],tarih)

SELECT [No],[Þirket],[Soyadý],[Ad],[E-posta Adresi],[Ýþ Unvaný],[Ýþ Telefonu],[Ev Telefonu]
,[Cep Telefonu],[Faks Numarasý],[Adres],[Þehir],[Eyalet/Ýl],[Posta Kodu],[Ülke/Bölge],[Web Sayfasý]
,[Notlar],[Ekler],[ciro],getdate()
  FROM deleted



END


/*bir müþteriyi silince yani silme iþlemi yapýldýktan sonra bu iþlemi geri almak pek mümkün olmuyor. yani müþteriyi sildikten sonra yedek tablosuna atan bir sorgu 
yazacaðým. yani bu tetiklendiðinde silinen satýrý alýp oraya eklemek istiyorum. silme iþlemleri aslýnda deleted tablosunun içerisinde saklanýyor. ben de silinen kýsmý
bu tablodan alýp ilgili yere ekleyeceðim. ben de gidip m_yedek tablosuna insert yapacaðým. m_yedek tabloma gelip sað týkladým, script table as dedim, insert to dedim,
new query editor dedim ve bana bir pencere açýldý. insert into kýsmýný ve sütun isimlerini alýp begin kýsmýna yapýþtýrýyorum, sonra da bir select  sorgusu yazacaðým,
müþteriler tabloma geldim sað týkladým, select top 1000 dedim ve oradaki select tablosunu da alýp trigger þablonumda insertün altýna ekledim. ancak top 1000 kýsmýný
sildim. sonra alta basýlý tutup sütun isimlerinin yanlarýndaki boþluklarý yukarýdan aþaðýya seçip siliyorum ve yan yana kolay okunacak uzamayacak þekilde tekrar yazýyorum.
daha sonra tarih sütununu da triggerýma eklememk istediðim için bu kodu önce çalýþtýrýyorum 'alter table [M_Yedek] add tarih datetime' bu kodla yedek tabloma tarih sütununu
eklemiþ oluyorum ve artýk triggerýma da ekleyebileceðim. böylelikle verinin silinip eklenme zamanýný da bilmiþ olacaðým. artýk bunu müþteriler tablosunun altýndaki 
trigger kýsmýna refresh yaptýktan sonra görebileceðim. bundan sonra kodumda bir deðiþiklik yaparsam creat yerine alter demem lazým. ben bu sayfalarý kapatsam bile 
daha sonrasýnda triggerýmýn üzerine gelip sað týkla modify desem yazdýðým kod bana direkt olarak açýlacak. gerekli deðþiklikleri yapýp kaydedersem artýk deðþikliklerim
kaydolmuþ olacak. þimdi triggerýmý deneyeceðim bakalým çalýþýyor mu. çalýþtý þu komutlar ile kontrol ettim:*/


select * from Müþteriler /*müþterileri görüntülüyoum altýna da yedeði görüntülüyorum*/
select * from [dbo].[M_Yedek] /*müþteri no 28i silelim bakalým nolacak*/

delete from Müþteriler where No > 29

select * from Müþteriler /*diðerlerine tekrar bakýyorum ne deðiþti diye*/
select * from [dbo].[M_Yedek] /*evet triggerým çalýþýyor. çalýþmazsa hocanýn veriyi korumak için yazdýðý þeylereden dolayý olmuyor yoksa olmalý ve görüldüðü gibi tarih
silinme verisi de gelmiþ. yani artýk bir hata olduðunda bu silinen verileri geri getirmek mümkün olacak. birden fazla veri silinmiþ olsa bile. þimdi de inserted metodu
ile eklenen verileri de müþteriler eklenen tablosuna trigger ile ekleyeceðim.*/

/*kendim bir trigger yazýp bunu m_eklenen tablosuna koyacaðým.*/

/*müþteriler tablosunda olup müþteri eklenen M_Eklenen tablosunda olmayanlarý M_Eklenene ekleyeceðiz.*/

Create Trigger Trg_Musteri_eklenen ON Müþteriler
After Insert
AS
BEGIN
 insert into M_Eklenen ([No], [Þirket], [Soyadý], [Ad], [E-posta Adresi], [Ýþ Unvaný], [Ýþ Telefonu], [Ev Telefonu], [Cep Telefonu], [Faks Numarasý], [Adres], [Þehir], [Eyalet/Ýl], [Posta Kodu], [Ülke/Bölge], [Web Sayfasý], [Notlar], [Ekler], [ciro], [tarih])
 Select                 [No], [Þirket], [Soyadý], [Ad], [E-posta Adresi], [Ýþ Unvaný], [Ýþ Telefonu], [Ev Telefonu], [Cep Telefonu], [Faks Numarasý], [Adres], [Þehir], [Eyalet/Ýl], [Posta Kodu], [Ülke/Bölge], [Web Sayfasý], [Notlar], [Ekler], [ciro], getdate()
 From Müþteriler  where no Not in (Select no from Müþteriler)
END

/*þeklinde olmalý eklenen triggerým. yukarýdaki sýralama ile alttaki sýralamanýn ayný doðrultuda olmasý gerektiðini unutmamam gerekiyor yoksa yanlýþ sýrayla yanlýþ veriler
gider. buna dikkat etmeyi unutma. not in kullandým yani içerisinde olmayanlarý ancak exist ile de yapýlabilir. artýk müþterilerin altýnda triggerým 1ken 2 oldu. artýk
ne zaman bir veri ekleme iþlemi yapsam direkt olarak buraya da otomatik olarak eklenecek. müþteriler edit top200 diyerek tablomu açýp elle veri ekliyorum ve bakalým
triggerým çalýþacak mý görelim. sorgumda select no from müþteriler yerine M_Eklenen olmalýydý ancak bunu alter ile düzelteceðim sorgumda yanlýþ var. düzeltiyorum.
*/

ALTER Trigger [dbo].[Trg_Musteri_eklenen] ON [dbo].[Müþteriler]
After Insert
AS
BEGIN
 insert into M_Eklenen ([No], [Þirket], [Soyadý], [Ad], [E-posta Adresi], [Ýþ Unvaný], [Ýþ Telefonu], [Ev Telefonu], [Cep Telefonu], [Faks Numarasý], [Adres], [Þehir], [Eyalet/Ýl], [Posta Kodu], [Ülke/Bölge], [Web Sayfasý], [Notlar], [Ekler], [ciro], [tarih])
 Select                 [No], [Þirket], [Soyadý], [Ad], [E-posta Adresi], [Ýþ Unvaný], [Ýþ Telefonu], [Ev Telefonu], [Cep Telefonu], [Faks Numarasý], [Adres], [Þehir], [Eyalet/Ýl], [Posta Kodu], [Ülke/Bölge], [Web Sayfasý], [Notlar], [Ekler], [ciro], getdate()
 From Müþteriler  where no Not in (Select no from M_eklenen)
END

/*bu sefer eklenen veriler gelmiþ. triggerým çalýþýyor. edit top200 diyerek m_eklenen tablomu gözlemledim ve içerisinde veri olduðunu gördüm.*/

/*þimdi de müþteriler tablosunda bir güncelleme olduðunda m_eklenen tablosunda müþterilerin þirket adý adý ve soyadý güncellensin iþlemini yapacaðým.*/

Create Trigger Trg_Musteri_Guncelleme ON Müþteriler /*trigerýmýn þablonu bu þekilde olmalý. içerisine de begin kýsmýna yani gerekli update sorgusunu eklemem gerekiyor*/
 After Update /*eklenmiþ halini aþaðýya yazýyorum.*/

 As
 Begin 
 
 END

/* eklenmiþ hali aþaðýdaki.-----------------------------*/


Alter Trigger Trg_Musteri_Guncelleme ON Müþteriler /*önce creatti sonra alter yaptým tekrar çalýþtýramayacaðým için.*/
 After Update

 As
 Begin
 
  -- Bu sorgu Müþteriler tablosundaki 3 alanýn deðiþikliðini güncellemek için yazýlmýþtýr.
  UPDATE M_Eklenen
 SET  Þirket =Müþteriler.Þirket, Soyadý =Müþteriler.Soyadý, Ad =Müþteriler.Ad
 FROM  Müþteriler INNER JOIN          M_Eklenen ON Müþteriler.No = M_Eklenen.No

 END
 /*bu þekilde artýk bir güncelleme olduðunda tablom da güncellenecek.*/




 /***************************************************************/
select * from M_Eklenen
select * from Müþteriler

update Müþteriler  
set Soyadý='Türk' where Soyadý='Çinli'


select * from M_Eklenen
select * from Müþteriler

/*yukarýdaki sorgular ile bir güncelleme iþlemi yapýp kontrol ettiðimde triggerýmýn çalýþtýðýný görmüþ oldum. yukarýdaki sorgu müþteriler tablosundaki bir soyadý
güncellemesi yapmakta ve diðer kodlar tablolarý göstermektedir.*/

/*þimdi de artýk Sipariþ ayrýntýlarý tablosunda bir satýr eklendiðinde Müþteriler tablosunda yer alan Ciro verisini güncelleyen tetikleyiciyi yazýnýz þeklinde
bir trigger yazacaðým.*/

Alter TRIGGER [dbo].[Trg_ciro_deneme4] /*triggerýmý oluþturmak için baþta create dedim sonra alter dedim.*/
ON [dbo].[Sipariþ Ayrýntýlarý]
AFTER INSERT
AS
BEGIN

UPDATE Müþteriler
SET Müþteriler.ciro = (SELECT SUM(sa.[Birim Fiyat] * sa.[Miktar]) FROM [Sipariþ Ayrýntýlarý] sa
inner join Sipariþler s On sa.[Sipariþ No]=s.[Sipariþ No]
WHERE s.[Müþteri No] = Müþteriler.[No]);
END;

/*triggerým bu þekilde olmalý kontrol etmek için sipariþ ayrýntýlarýna edit dedim. 80 numaralý sipariþi buldum sonra sipariþler tablosuna geçip edit diyip 80 nolu sipariþe
bakacaðým. ordan da 4 numaralý müþteriye ait olduðunu görüyorum. yani 4 numaralý müþteri noya sahip müþterinin verilerini kontrol edeceðimi buldum.*/

select * from Müþteriler 
where No=4 /*burada müþterimin cirosunu kontrol ediyorum ve buraya veri ekleyerek deðiþip deðiþmediðini göreceðim. sipariþ ayrýntýlarý tabloma gidip 80noya veri ekliyorum
gidip elle verimi ekledim ve insert intodan dolayý müþterinin cirosu artmýþ oldu. trigerda haat yaparsam veya herhangi bir hata oluþabilecek durum varsa 
error handling yapýlmalý ve transection yazýlmalý.*/



/*----------------------------------DERSLER BURADA BÝTTÝ----------------------------------*/


/*MS SQL ÖDEV ÝÇÝN ARAÞTIRILMASI ÝSTENEN KONULAR:
1)RANK 
2)NTILE
3)DENSE_RANK
4)ROW_NUMBER 
KOMUTLARI ARAÞTIRILIP NASIL ÇALIÞTIÐI ÖÐRENÝLECEK VE NORTHWÝND VERÝ TABANINDA UYGULANACAK.*/