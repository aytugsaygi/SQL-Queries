SELECT * FROM Ogrenci
SELECT * FROM OgrenciAdres

SELECT A.OgrenciNo, A.Ad, A.Soyad, B.Adres, B.Sehir  -- A VE B Yİ BİRLEŞTİRİYOR VE KESİŞİMLERİNİ BİR KEZ ALARAK VERİYOR.
FROM Ogrenci A 
	FULL JOIN OgrenciAdres B 
ON A.OgrenciNo = B.OgrenciNo

SELECT A.OgrenciNo, A.Ad, A.Soyad, B.Adres, B.Sehir -- A VE B Yİ BİRLEŞTİRİYOR VE KESİŞİMLERİNİ ALMIYOR.
FROM Ogrenci A 
	FULL JOIN OgrenciAdres B 
ON A.OgrenciNo = B.OgrenciNo WHERE A.OgrenciNo IS NULL OR B.OgrenciNo IS NULL