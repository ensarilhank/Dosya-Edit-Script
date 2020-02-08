# XSLT Editleyen Powershell Script

Script yüzlerce _**.xslt**_ uzantılı dosyaları otomatik olarak editlemek için yazıldı.

Script bulunduğu konumdaki klasörleri(içindeki klasörler de dahil) hepsini kontrol eder ve _**.xslt**_ dosyaların hepsini tespit eder.

Sadece **son güncellenmesi** ***belirlenen tarihten sonra*** olanları düzenler.

Scriptin çalışabilmesi için yanında **_.xml_** dosyasına ihtiyacı vardır.

Script düzenlediği dosyaların raporunu tutar ve `rapor` adıyla bulunduğu konuma bir **txt** dosyası oluşturur.

Dosyalar düzenlendikten sonra Vergi Dairesi Başkanlığının hazırladığı ***Saxon*** kütüphanesinden kontrol edilir.

Kontrol sırasında _**.xslt**_ dosyasında sorun çıkarsa sorunu `output` adıyla bulunduğu konuma oluşturduğu bir **txt** dosyasına kayıt eder.

***Scripti kullanmadan önce kendinize göre editleyiniz.***
