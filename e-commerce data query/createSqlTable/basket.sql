CREATE TABLE BASKET(
ID INT IDENTITY(1,1),
USERID INT,
CREATEDDATE DATETIME,
LASTMODIFIEDDATE DATETIME,
ITEMCOUNT INT,
TOTALPRICE FLOAT,
STATUS_ INT,
CONSTRAINT [PK_BASKET] PRIMARY KEY CLUSTERED (ID ASC))
