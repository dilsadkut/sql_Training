CREATE TABLE USER_(
ID INT IDENTITY(1,1),
USERNAME_ VARCHAR(50),
PASSWORD_ VARCHAR(50),
NAMESURNAME VARCHAR(100),
EMAIL VARCHAR(100),
GENDER VARCHAR(1),
CREATEDDATE DATETIME,
BIRTHDATE DATE,
TELNR1 VARCHAR(15),
TELNR2 VARCHAR(15)
CONSTRAINT [PK_USER_] PRIMARY KEY CLUSTERED (ID ASC))
