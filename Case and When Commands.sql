SELECT KitapID, Sehir, StokAdedi,
CASE 
	WHEN StokAdedi <= 20 THEN 'Stok Kritik Seviyede!'
	WHEN StokAdedi >= 50 THEN 'Stok Yüksek Seviyede!'
	ELSE 'Standart Stok Durumu.'
END AS 'Stok Durumu'
FROM KitapStok
