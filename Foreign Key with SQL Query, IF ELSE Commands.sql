--CREATE TABLE KitapStok (
--	KitapID INT,
--	StokAdedi INT,
--	Sehir NVARCHAR(50),
--	CONSTRAINT FK_Kitap FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID)
--)

INSERT INTO KitapStok (KitapID, StokAdedi, Sehir) 
VALUES (1, 50, 'Ankara'),
	   (2, 30, 'İzmir'),
	   (3, 40, 'İstanbul'),
	   (1, 40, 'İstanbul')