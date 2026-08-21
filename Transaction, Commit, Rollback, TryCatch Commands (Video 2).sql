/*

CREATE TABLE ErrorLog (
	ErrorID INT PRIMARY KEY IDENTITY(1,1),
	ErrorDate datetime,
	ErrorMessage nvarchar(MAX)
)

*/

BEGIN TRANSACTION;

BEGIN TRY

	INSERT INTO Ogrenciler (OgrenciID, Ad, Soyad, Sinif) VALUES (11, 'Burak', 'Yılmaz', '10-A')
	INSERT INTO Ogrenciler (OgrenciID, Ad, Soyad, Sinif) VALUES (12, 'Aslı', 'Demir', '10-B')
	COMMIT -- Tüm öğrenciler başarıyla eklenince işlemi onaylama kısmı.

END TRY 

BEGIN CATCH

	-- Hata durumunda işlemi geri alma kısmı.
	ROLLBACK

	-- Hata bilgilerini bir log tablosuna kaydedelim.
	INSERT INTO ErrorLog (ErrorDate, ErrorMessage) 
	VALUES (GETDATE(), ERROR_MESSAGE())

END CATCH

SELECT * FROM ErrorLog