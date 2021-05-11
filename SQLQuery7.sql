
--ascii ve char fonksiyonları
--karakterlerin ascii değeri ascii fonksiyonu
--ascii değerlerin karakter değeri char fonksiyonu

SELECT ASCII ('A')
SELECT ASCII ('B')
SELECT ASCII ('Ö')
SELECT ASCII ('Ğ')
SELECT ASCII ('1')
SELECT ASCII ('2')
SELECT ASCII ('3')

SELECT CHAR(65)
SELECT CHAR(214)
SELECT CHAR(1)

SELECT ASCII(CHAR(49))
SELECT CHAR(ASCII('Ö'))

SELECT ASCII('?')
SELECT CHAR(63)

--Substring
--kelimeler içindeki belirli indexlerdeki metni al

SELECT SUBSTRING('OMER FARUK COLAKOGLU',1,4)

SELECT SUBSTRING('OMER FARUK COLAKOGLU',5,4)

SELECT SUBSTRING('OMER FARUK COLAKOGLU',6,6)

--Charindex
--herhangi bir metindeki karakter veya karakterlerin index'e göre sorgulanması

SELECT CHARINDEX('F','OMER FARUK COLAKOGLU',1)

SELECT CHARINDEX('F','OMER FARUK COLAKOGLU',7)

SELECT CHARINDEX('FARUK','OMER FARUK COLAKOGLU',1)

SELECT CHARINDEX('COLAK','OMER FARUK COLAKOGLU',1)

--Concat
--string birleştirme

SELECT 'ÖMER'+'FARUK'+'ÇOLAKOGLU'

SELECT CONCAT ('OMER',' ','FARUK',' ','COLAKOGLU')

SELECT CONCAT_WS(' ','OMER','FARUK','COLAKOGLU')

SELECT USERNAME_+' ' + PASSWORD_+' '+NAMESURNAME,
CONCAT(USERNAME_,' ',PASSWORD_,' ',NAMESURNAME),
CONCAT_WS(' ',USERNAME_,PASSWORD_,NAMESURNAME),
* FROM USER_

--format
--genelde tarih-saat için kullanılır

SELECT FORMAT(GETDATE(),'d','en-us')

SELECT FORMAT(GETDATE(),'D','en-us')


SELECT FORMAT(GETDATE(),'d','en-us') AS 'US English Result'
,FORMAT(GETDATE(),'d','en-gb') AS 'Great Britain English Result'
,FORMAT(GETDATE(),'d','de-de') AS 'German Result'
,FORMAT(GETDATE(),'d','zh-cn') AS 'Simplified Chinese (PRC) Result';

SELECT FORMAT(GETDATE(),'D','en-us') AS 'US English Result'
,FORMAT(GETDATE(),'D','en-gb') AS 'Great Britain English Result'
,FORMAT(GETDATE(),'D','de-de') AS 'German Result'
,FORMAT(GETDATE(),'D','zh-cn') AS 'Simplified Chinese (PRC) Result';

--left, right, len
--left soldan karakter alma
--right sağdan karakter alma
--len karakter uzunlukları

SELECT LEFT('OMER COLAKOGLU',4)
SELECT RIGHT('OMER COLAKOGLU',4)
SELECT LEN('1234567890')

SELECT LEFT('OMER COLAKOGLU',4)
SELECT LEFT('OMER COLAKOGLU',CHARINDEX(' ','OMER COLAKOGLU')),RIGHT('OMER COLAKOGLU',LEN('OMER COLAKOGLU')-CHARINDEX(' ','OMER COLAKOGLU'))
SELECT RIGHT('OMER COLAKOGLU',10)
SELECT RIGHT('OMER COLAKOGLU',CHARINDEX(' ','OMER COLAKOGLU'))

SELECT 
LEFT(NAMESURNAME,CHARINDEX(' ',NAMESURNAME)),RIGHT(NAMESURNAME,LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME))
FROM USER_

--trim,ltim,rtrim
--trim boşlukları temizle
--ltrim soldan boşlukları temizle
--rtrim sağdan boşlukları temizle

SELECT TRIM(' OMER COLAKOGLU ')

SELECT LTRIM(' OMER COLAKOGLU ')

SELECT RTRIM(' OMER COLAKOGLU ')

SELECT LTRIM(RTRIM(' OMER COLAKOGLU ')) --trim ile aynı

--lower,upper,reverse,replicate
--lower küçük harf fonksiyonu
--upper büyük harf fonksiyonu
--reverse tersten yazdırma fonksiyonu
--replicate birden fazla tekrar etme

SELECT LOWER('OMER')
SELECT UPPER('Omer')
SELECT REVERSE('OMER')
SELECT REVERSE('OMER FARUK')
SELECT REPLICATE('0',10)

SELECT *, REPLICATE('0', 8-LEN(SIRANO))+CONVERT(VARCHAR,SIRANO) FROM TEST
UPDATE TEST SET SIRANO2=REPLICATE('0', 8-LEN(SIRANO))+CONVERT(VARCHAR,SIRANO)
SELECT * FROM TEST

--Replace
--string içerisindeki herhangi bir değeri set ettğimiz başka bir değerle değiştirme işlemi

SELECT 'OMER COLAKOGLU'
SELECT REPLACE('OMER COLAKOGLU','OMER','OMER FARUK')

--bir string içinde bir kelime kaç kez geçiyor

DECLARE @CUMLE AS VARCHAR(MAX)

SET @CUMLE='Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a interdum tortor. 
Sed cursus ex ut neque tempus, in posuere ligula feugiat. In quis nulla dictum, elementum lorem nec,
congue libero. Quisque varius et mauris et scelerisque. Maecenas consectetur diam a lorem vehicula 
commodo. Duis nibh purus, mattis accumsan pulvinar non, semper vel enim. Vestibulum nunc quam, 
varius nec sem nec, ultrices pharetra dolor. Suspendisse pulvinar felis eget semper dictum. 
Curabitur vel mollis neque. Integer dignissim ex sed odio lobortis, at varius sem pharetra. 
Nam eget feugiat ante.'
SET @CUMLE=REPLACE(@CUMLE,'Lorem','ipsum')
SET @CUMLE=REPLACE(@CUMLE,'ipsum','lorems')
SELECT @CUMLE
----------------------------------------------

DECLARE @CUMLE2 AS VARCHAR(MAX)

SET @CUMLE2='Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a interdum tortor. 
Sed cursus ex ut neque tempus, in posuere ligula feugiat. In quis nulla dictum, elementum lorem nec,
congue libero. Quisque varius et mauris et scelerisque. Maecenas consectetur diam a lorem vehicula 
commodo. Duis nibh purus, mattis accumsan pulvinar non, semper vel enim. Vestibulum nunc quam, 
varius nec sem nec, ultrices pharetra dolor. Suspendisse pulvinar felis eget semper dictum. 
Curabitur vel mollis neque. Integer dignissim ex sed odio lobortis, at varius sem pharetra. 
Nam eget feugiat ante.'

--cümlede kaç tane nec geçiyor

DECLARE @LEN1 AS INT
SET @LEN1=LEN(@CUMLE2)
DECLARE @LEN2 AS INT
SET @CUMLE2=REPLACE(@CUMLE2,'nec','')
SET @LEN2=LEN(@CUMLE2)

SELECT (@LEN1-@LEN2)/LEN('nec')

--cümlede kaç tane sem geçiyor

DECLARE @LEN3 AS INT
SET @LEN3=LEN(@CUMLE2)
DECLARE @LEN4 AS INT
SET @CUMLE2=REPLACE(@CUMLE2,'sem','')
SET @LEN4=LEN(@CUMLE2)

SELECT (@LEN3-@LEN4)/LEN('sem')

--cümlede kaç tane in geçiyor

DECLARE @LEN5 AS INT
SET @LEN5=LEN(@CUMLE2)
DECLARE @LEN6 AS INT
SET @CUMLE2=REPLACE(@CUMLE2,'in','')
SET @LEN6=LEN(@CUMLE2)

SELECT (@LEN3-@LEN4)/LEN('in')




