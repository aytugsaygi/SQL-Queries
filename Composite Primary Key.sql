--CREATE TABLE Siparisler (
--	SiparisID INT NOT NULL IDENTITY(1,1),
--	MusteriID INT NOT NULL,
--	SiparisTarihi DATETIME NOT NULL,
--	PRIMARY KEY (SiparisID)
--)


--CREATE TABLE SiparisDetaylari (
--	SiparisID INT NOT NULL,
--	UrunID INT NOT NULL,
--	Miktar INT NOT NULL,

--	-- Composite Primary Key
--	PRIMARY KEY (SiparisID, UrunID),

--	-- Foreing Key
--	CONSTRAINT FK_SiparisDetaylari_Siparisler 
--	FOREIGN KEY (SiparisID) 
--	REFERENCES Siparisler(SiparisID)
--)

INSERT INTO Siparisler (MusteriID, SiparisTarihi) 
VALUES (1001, '20250110 14:30:00'),
	   (1002, '20250111 09:10:00'),
	   (1003, '20250112 15:45:00')

INSERT INTO SiparisDetaylari (SiparisID,UrunID,Miktar) 
VALUES (1,101,5),
	   (1,102,3)

INSERT INTO SiparisDetaylari (SiparisID,UrunID,Miktar) 
VALUES (2,101,1),
	   (2,201,2)