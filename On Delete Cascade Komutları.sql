CREATE TABLE Ogrenciler (
	OgrenciID INT PRIMARY KEY,
	Ad VARCHAR(50) NOT NULL,
	Soyad VARCHAR(50) NOT NULL
)

CREATE TABLE Kayitlar (
	KayitID INT PRIMARY KEY,
	OgrenciID INT NOT NULL,
	Ders VARCHAR(50) NOT NULL,

	CONSTRAINT FK_Kayitlar_Ogrenciler 
	FOREIGN KEY (OgrenciID) 
	REFERENCES Ogrenciler(OgrenciID)
)

INSERT INTO Ogrenciler (OgrenciID,Ad,Soyad)
VALUES (1,'Can','Ali'),
	   (2,'Ayşe','Yılmaz')

INSERT INTO Kayitlar(KayitID,OgrenciID,Ders)
VALUES (101,1,'Matematik'),
	   (102,1,'Fizik'),
	   (103,2,'Kimya')

DELETE FROM Ogrenciler WHERE OgrenciID = 1 -- Bu haliyle silemezsin çünkü foreign key bağlamı var.

DELETE FROM Kayitlar WHERE OgrenciID = 1 -- Önce bunu yapman lazım. Daha sonra Ogrencilerden silebilirsin.

-- Bu şekilde tabloyu oluşturursan direkt olarak Ogrencilerden silebilirsin

CREATE TABLE Kayitlar (
	KayitID INT PRIMARY KEY,
	OgrenciID INT NOT NULL,
	Ders VARCHAR(50) NOT NULL,

	CONSTRAINT FK_Kayitlar_Ogrenciler 
	FOREIGN KEY (OgrenciID) 
	REFERENCES Ogrenciler(OgrenciID)
	ON DELETE CASCADE
)