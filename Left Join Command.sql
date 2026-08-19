SELECT * FROM Ogrenci
SELECT * FROM OgrenciAdres

SELECT A.OgrenciNo, A.Ad, A.Soyad, B.Adres, B.Sehir  -- A VE B KÜMESİNDEN --> A'DAKİ HER ŞEY VAR, SADECE B'DEKİLER YOK.
FROM Ogrenci A 
LEFT JOIN OgrenciAdres B 
ON A.OgrenciNo = B.OgrenciNo

SELECT A.OgrenciNo, A.Ad, A.Soyad, B.Adres, B.Sehir -- A VE B KÜMESİNDEN --> SADECE A'DAKİLER VAR.
FROM Ogrenci A 
LEFT JOIN OgrenciAdres B 
ON A.OgrenciNo = B.OgrenciNo WHERE B.OgrenciNo IS NULL