CREATE TABLE ITEM(	
ID INT IDENTITY(1,1),	
ITEMCODE VARCHAR(20),	
ITEMNAME VARCHAR(100),	
PRICE FLOAT,	
CATEGORY1 VARCHAR(50),	
CATEGORY2 VARCHAR(50),	
CATEGORY3 VARCHAR(50),		
CONSTRAINT [PK_ITEM] PRIMARY KEY CLUSTERED (ID ASC))	