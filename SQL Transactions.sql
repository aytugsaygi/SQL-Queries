BEGIN TRANSACTION -- Birbiriyle bağıntılı işlemlerde kullanmamız gerekiyor. Para transfer mantığı.
	UPDATE BankKart SET Bakiye = Bakiye - 50 WHERE OgrenciNo = 257
	UPDATE BankKart SET Bakiye = Bakiye + 50 WHERE OgrenciNo = 389
COMMIT TRANSACTION

SELECT * FROM BankKart