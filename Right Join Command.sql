SELECT * FROM Ogrenci
SELECT * FROM OgrenciAdres

SELECT A.OgrenciNo, A.Ad, A.Soyad, B.Adres, B.Sehir  -- A VE B KÜMESİNDEN --> B'DEKİ HER ŞEY VAR, SADECE A'DAKİLER YOK.
FROM Ogrenci A 
RIGHT JOIN OgrenciAdres B 
ON A.OgrenciNo = B.OgrenciNo

SELECT A.OgrenciNo, A.Ad, A.Soyad, B.Adres, B.Sehir -- A VE B KÜMESİNDEN --> SADECE B'DEKİLER VAR.
FROM Ogrenci A 
RIGHT JOIN OgrenciAdres B 
ON A.OgrenciNo = B.OgrenciNo WHERE A.OgrenciNo IS NULL