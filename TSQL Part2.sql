--CREATE TABLE Kitaplar (
--	KitapID INT PRIMARY KEY IDENTITY(1,1),
--	KitapAdi NVARCHAR(50),
--	Yazar NVARCHAR(50),
--)

INSERT INTO Kitaplar (KitapAdi, Yazar) 
VALUES ('Sefiller', 'Victor Hugo'),
	   ('Suç ve Ceza', 'Dostoyevski'),
	   ('1984', 'George Orwell')

SELECT * FROM Kitaplar