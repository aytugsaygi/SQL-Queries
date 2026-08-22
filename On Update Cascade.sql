CREATE TABLE Ogrenciler1 (
	OgrenciID INT PRIMARY KEY,
	Ad VARCHAR(50) NOT NULL,
	Soyad VARCHAR(50) NOT NULL
)

CREATE TABLE Kayitlar1 (
	KayitID INT PRIMARY KEY,
	OgrenciID INT NOT NULL,
	Ders VARCHAR(50) NOT NULL,

	CONSTRAINT FK_Kayitlar_Ogrenciler1
	FOREIGN KEY (OgrenciID) 
	REFERENCES Ogrenciler1(OgrenciID)
)

INSERT INTO Ogrenciler1 (OgrenciID,Ad,Soyad)
VALUES (1,'Can','Ali'),
	   (2,'Ayşe','Yılmaz')

INSERT INTO Kayitlar1(KayitID,OgrenciID,Ders)
VALUES (101,1,'Matematik'),
	   (102,1,'Fizik'),
	   (103,2,'Kimya')

UPDATE Ogrenciler1 SET OgrenciID = 5 WHERE OgrenciID = 2 -- HATA


-- Bu şekilde tabloyu oluşturursan direkt olarak Ogrencilerden updateleyebilirsin.

CREATE TABLE Kayitlar1 (
	KayitID INT PRIMARY KEY,
	OgrenciID INT NOT NULL,
	Ders VARCHAR(50) NOT NULL,

	CONSTRAINT FK_Kayitlar_Ogrenciler1 
	FOREIGN KEY (OgrenciID) 
	REFERENCES Ogrenciler(OgrenciID)
	ON DELETE CASCADE
	ON UPDATE CASCADE
)

UPDATE Ogrenciler1 SET OgrenciID = 5 WHERE OgrenciID = 2 