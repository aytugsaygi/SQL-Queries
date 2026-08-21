--CREATE TABLE KitapStok (
--	KitapID INT,
--	StokAdedi INT,
--	Sehir NVARCHAR(50),
--	CONSTRAINT FK_Kitap FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID)
--)

--INSERT INTO KitapStok (KitapID, StokAdedi, Sehir) 
--VALUES (1, 50, 'Ankara'),
--	     (2, 30, 'İzmir'),
--	     (3, 40, 'İstanbul'),
--	     (1, 40, 'İstanbul')

DECLARE @id INT = 1
DECLARE @ToplamStok INT

-- Toplam stok miktarlarını hepsalama
SELECT @ToplamStok = SUM(StokAdedi) FROM KitapStok WHERE KitapID = @id
PRINT 'Toplam Stok: ' +  CAST(@ToplamStok AS NVARCHAR(10))

IF @ToplamStok < 70
	PRINT 'Stok Yetersiz'
ELSE
	PRINT 'Stok Yeterli'

-- Eğer IF veya ELSE'den sonra birden fazla satırlık işlem yapıcaksan;
-- BEGIN ve END keywordlerini kullanman lazım.

IF @ToplamStok < 70
BEGIN
	PRINT 'Stok Durumu'
	PRINT '- - - - - -'
	PRINT ' YETERSİZ '
END

ELSE
BEGIN
	PRINT 'Stok Durumu'
	PRINT '- - - - - -'
	PRINT '  YETERLİ '
END