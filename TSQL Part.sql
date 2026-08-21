-- Değişken oluşturma ve değer atama
DECLARE @KitapAdi nvarchar(50)
DECLARE @Yazar nvarchar(50)
DECLARE @KitapID int

SET @KitapAdi = 'Sefiller'
SET @Yazar = 'Victor Hugo'
SET @KitapID = 101
SET @KitapID = @KitapID + 5

-- Ekrana yazdırma
PRINT 'Kitap Adı: ' + @KitapAdi
PRINT 'Yazar Adı: ' + @Yazar
PRINT 'Kitap ID: ' + CAST(@KitapID AS NVARCHAR(10))

SELECT 'Kitap Adı: ' + @KitapAdi 
SELECT 'Yazar Adı: ' + @Yazar 
SELECT 'Kitap ID: ' + CAST(@KitapID AS NVARCHAR(10))