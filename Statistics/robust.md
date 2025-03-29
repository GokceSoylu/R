# Robust (Sağlam) Yöntemler ve İstatistikte Kullanımları

Robust (sağlam) istatistik, uç değerlere (outliers) ve anormal dağılımlara karşı duyarlı olmayan yöntemleri ifade eder. 
Geleneksel istatistiksel yöntemler (örneğin, ortalama ve standart sapma) aşırı uç değerlerden kolayca etkilenirken, 
robust yöntemler bu tür sapmalara karşı daha dayanıklıdır.

## Önemli Robust Yöntemler ve Kullanımları

> ### 1️⃣ Trimmed Mean (Kırpılmış Ortalama)
Uç değerleri azaltmak için veri setinin belirli bir yüzdesini (örn. %10 veya %20) uçlardan keserek hesaplanan ortalama.
Kullanımı:
Finans (Hisse senedi fiyat analizlerinde uç değerleri azaltmak)
Ekonomi (Enflasyon hesaplamalarında anormal verileri kırpmak)


> ### 2️⃣ Median (Ortanca)
Veri kümesindeki en orta değerdir. Aritmetik ortalamaya göre uç değerlere daha az duyarlıdır.
Kullanımı:
Gelir Dağılımı Analizi (Çok yüksek maaşlar nedeniyle ortalama yanıltıcı olabilir.)
Tıp ve Biyoloji (Hasta verileri analizinde uç değerlerden kaçınmak)


> ### 3️⃣ Median Absolute Deviation (MAD - Medyan Mutlak Sapma)
Medyan etrafındaki sapmaları ölçer ve standart sapmaya sağlam bir alternatif sunar.
Kullanımı:
Makine Öğrenimi (Anomali tespitinde uç değerlerden etkilenmeyen bir yayılım ölçüsü olarak)
Sensör Verileri Analizi (Örneğin sıcaklık sensörlerinin hatalı ölçümlerini göz ardı etmek için)


> ### 4️⃣ Interquartile Range (IQR - Çeyrekler Arası Aralık)

Veri setinin %25 (Q1) ile %75 (Q3) arasındaki kısmını kullanarak yayılımı ölçer.
Kullanımı:
Veri Temizleme (Aykırı değerleri belirlemek ve filtrelemek için)
Sosyal Bilimler (Öğrenci sınav sonuçlarında anormal düşük veya yüksek notları göz ardı etmek)

> ### 5️⃣ Winsorized Mean (Winsorize Edilmiş Ortalama)
Uç değerler kırpılmaz, ancak uç değerler yerine uçlara yakın değerler konularak ortalama hesaplanır.
Kullanımı:
Finansal Veri Analizi (Anormal piyasa hareketlerinin etkisini azaltmak)
İklim Bilimleri (Aşırı sıcaklık değerlerinin iklim ortalamalarına etkisini en aza indirmek)


###  📌 Özet:
Robust yöntemler uç değerleri ve anormal dağılımları dikkate alarak güvenilir istatistikler üretmek için kullanılır.
Trimmed Mean, Median, MAD, IQR, Winsorized Mean gibi yöntemler, standart yöntemlerden daha dayanıklıdır.
Makine öğrenimi, finans, tıp, ekonomi ve sosyal bilimlerde yaygın olarak kullanılır.