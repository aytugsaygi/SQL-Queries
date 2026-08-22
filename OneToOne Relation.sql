--CREATE TABLE Dolap (
--	DolapID INT PRIMARY KEY IDENTITY(1000,1),
--	Lokasyon VARCHAR(30) NOT NULL
--)

--CREATE TABLE Ogrenci (
--	OgrenciID INT PRIMARY KEY IDENTITY(1,1),
--	OgrenciAdi VARCHAR(30) NOT NULL,
--	OgrenciSoyadi VARCHAR(30) NOT NULL,
--	DolapID INT UNIQUE NOT NULL,
--	FOREIGN KEY (DolapID) REFERENCES Dolap(DolapID)
--)

INSERT INTO Ogrenci (OgrenciAdi, OgrenciSoyadi, DolapID) 
VALUES ('Ayşe', 'Kerem', 1002)

SELECT * FROM Ogrenci
