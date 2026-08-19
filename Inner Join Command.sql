SELECT A.OgrenciNo, A.Ad, A.Soyad, SUM(B.Ücret) AS 'Total Miktar'
FROM Ogrenci A 
INNER JOIN KantinKayitlari B 
ON A.OgrenciNo = B.OgrenciNo
GROUP BY A.OgrenciNo, A.Ad, A.Soyad
ORDER BY OgrenciNo 