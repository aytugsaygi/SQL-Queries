DECLARE @sayac int = 1;
WHILE @sayac <= 20
BEGIN
	IF @sayac % 3 = 0
		PRINT @sayac
	SET @sayac = @sayac + 1
END

PRINT 'Sayaçın son değeri: ' + CAST(@sayac AS NVARCHAR(10))
PRINT 'Bye.'