
--Kayıtları seçme
SELECT
ID,CUSTOMERNAME,CITY,DISTRICT,BIRTHDATE,GENDER
FROM
CUSTOMER

SELECT
ID, CUSTOMERNAME, CITY, DISTRICT, BIRTHDATE, GENDER
FROM
CUSTOMER


SELECT 
*
FROM
ETRADE.DBO.CUSTOMER


SELECT 
CUSTOMERNAME,CITY
FROM
ETRADE.DBO.CUSTOMER

--Kayıt ekleme
INSERT INTO
CUSTOMER
(CUSTOMERNAME, CITY, DISTRICT, BIRTHDATE, GENDER)
VALUES
('BURCU CANDAN','KOCAELİ','MERKEZ','1994-05-08','K')

TRUNCATE TABLE CUSTOMER

--Kayıt güncelleme

UPDATE CUSTOMER
SET AGE = DATEDIFF(YEAR,BIRTHDATE,GETDATE())

UPDATE CUSTOMER  SET AGE = AGE+1

UPDATE CUSTOMER  SET AGE = AGE-1

--Tablodan kayıt silme (Önce yedek alma)

SELECT * INTO CUSTOMERYEDEK FROM CUSTOMER


SELECT * FROM CUSTOMERYEDEK

DELETE FROM CUSTOMERYEDEK

SELECT * FROM CUSTOMER

--Silinen tabloya yeniden kayıt eklerken ilk indexten sonra devam etmesi için
TRUNCATE TABLE CUSTOMERYEDEK






