SELECT * FROM Ogrenci WHERE OgrenciNo >= 400 AND OgrenciNo <= 800
SELECT * FROM Ogrenci WHERE OgrenciNo BETWEEN 400 AND 800 -- Böyle de yazabiliriz

SELECT * FROM Ogrenci WHERE DogumTarihi >= '1999.01.01' AND DogumTarihi <= '2000.01.01' 
SELECT * FROM Ogrenci WHERE DogumTarihi BETWEEN '1999.01.01' AND '2000.01.01' -- Böyle de yazabiliriz