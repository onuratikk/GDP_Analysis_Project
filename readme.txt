GDP Analysis Project

### Proje Özeti
Bu proje, farklı ülkelerin yıllık Gayri Safi Yurt İçi Hasıla (GDP) değerlerini analiz etmeyi amaçlamaktadır. Veri çekme aşamasından analiz ve raporlama sürecine kadar birçok aşamayı içeren bu proje, Python, SQL ve SPSS kullanılarak gerçekleştirilmiştir.  

Proje kapsamında yapılan işlemler:  
- API kullanarak veri çekme – Güncel GDP verilerinin otomatik olarak alınması.  
- SQL ile veri yönetimi ve analiz – Veritabanına aktarılan veriler üzerinde çeşitli SQL sorguları ile analizler yapılması.  
- SPSS kullanarak istatistiksel analizler ve görselleştirme – Elde edilen verilerin derinlemesine incelenmesi ve grafiklerle desteklenmesi.  
- Sonuçların raporlanması – Tüm analizlerin ve bulguların anlamlı bir rapor halinde sunulması.  


---
 Kullanılan Teknolojiler ve Araçlar  
- Python – API çağrıları, veri temizleme ve işleme için.  
- SQL (PostgreSQL / MySQL / SQL Server) – Veri tabanında analiz ve sorgulama için.  
- SPSS – İstatistiksel analizler ve grafik oluşturma için.  
- GitHub – Projenin versiyon kontrolü ve paylaşımı için.  

---

### Analiz Adımları 

1️) Veri Toplama: 
   - API ile GDP verileri çekildi.  
   - Veriler `.csv` formatında kaydedildi.  

2️) SQL ile Veri İşleme:
   - Veriler SQL veritabanına yüklendi.  
   - GDP'nin yıllara göre değişimi incelendi.  
   - En yüksek ve en düşük GDP değerleri hesaplandı.  
   - Ülkelerin yıllık ortalama büyüme oranları belirlendi.  

3) SPSS ile İstatistiksel Analiz: 
   - GDP değişim trendleri analiz edildi.  
   - Ortalama GDP ve büyüme oranları hesaplandı.  
   - Grafiklerle görselleştirme yapıldı.  

4) Sonuçların Raporlanması: 
   - Bütün analizler detaylı bir PDF raporuna dönüştürüldü.  
   - Proje, GitHub üzerinden paylaşılabilir hale getirildi.  


---

###  Gerekli Python Kütüphaneleri (requirements.txt)

requests
pandas
sqlalchemy
psycopg2
matplotlib
seaborn


