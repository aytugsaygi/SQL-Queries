/*

CREATE PROCEDURE sehiregoreogrencilistesi(@sehir int)
	as
SELECT * FROM Ogrenci WHERE OgrenciNo
	in
(SELECT OgrenciNo FROM OgrenciAdres WHERE Sehir = @sehir)

GO

*/

/*

CREATE PROCEDURE adresegoreogrencilistesi(@detay varchar(20))
	as
SELECT * FROM Ogrenci WHERE OgrenciNo
	in
(SELECT OgrenciNo FROM OgrenciAdres WHERE Adres LIKE @detay)

GO

*/

-- =  : Değerin tamamen eşleşmesini ister.
--      Örn: WHERE Adres = 'Ankara'
--      Sadece Adres değeri tam olarak "Ankara" olanları getirir.
--
-- LIKE: Metin içinde eşleşme aramak için kullanılır.
--       % joker karakteri ile birlikte kullanılabilir.
--       Örn: WHERE Adres LIKE '%Ankara%'
--       Adres içerisinde "Ankara" geçen tüm kayıtları getirir.
--
-- Kısaca:
-- =     -> Tam eşleşme
-- LIKE  -> Desene / kısmi eşleşmeye bakar

EXEC adresegoreogrencilistesi '%Papatya sokak%'