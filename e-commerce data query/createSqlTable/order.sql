CREATE TABLE ORDER_(
ID INT IDENTITY(1,1),
USERID INT,
BASKETID INT,
CREATEDDATE DATETIME,
ITEMCOUNT INT,
TOTALPRICE FLOAT,
STATUS_ INT,
CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED (ID ASC))
