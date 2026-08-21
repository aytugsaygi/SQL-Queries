DECLARE @KitapID INT 
DECLARE @StokAdedi INT
DECLARE @Sehir NVARCHAR(50)
DECLARE @KitapAdi NVARCHAR(50)

-- Cursor tanımlama ve başlatma
DECLARE KitapCursor CURSOR FOR SELECT KitapID, StokAdedi, Sehir FROM KitapStok

-- Cursor'ı aç.
OPEN KitapCursor

-- Cursor'ı İlk kayıta konumlardır ve ilk kayıttaki verileri getirir.
FETCH NEXT FROM KitapCursor INTO @KitapID, @StokAdedi, @Sehir

-- WHILE döngüsü: Cursor kullanarak tüm kayıtlar işlenecek.
WHILE @@FETCH_STATUS = 0
BEGIN
	-- KitapAdi bilgisini Kitaplar tablosundan alalım.
	SELECT @KitapAdi = KitapAdi FROM Kitaplar WHERE KitapID = @KitapID

	-- KitapAdi belirli bir kritere uyuyorsa stok 10 artırılır.
	IF @KitapAdi = 'Sefiller'
	BEGIN
		UPDATE KitapStok SET StokAdedi = StokAdedi + 10 -- Hem şehir hem de id kontrolü yapılmalı.
		WHERE KitapID = @KitapID AND Sehir = @Sehir    -- Çünkü aynı id farklı şehirlerde de olabilir.
	END

	UPDATE KitapStok SET StokAdedi = StokAdedi + 1 -- Hem şehir hem de id kontrolü yapılmalı.
	WHERE KitapID = @KitapID AND Sehir = @Sehir    -- Çünkü aynı id farklı şehirlerde de olabilir.

	-- Cursor bir sonraki kayıta ilerler ve @KitapID, @StokAdedi, @Sehir değişkenlerinin içeriğini değiştirir.
	FETCH NEXT FROM KitapCursor INTO @KitapID, @StokAdedi, @Sehir
END

-- Cursor'u kapat.
CLOSE KitapCursor
DEALLOCATE KitapCursor

SELECT * FROM KitapStok
