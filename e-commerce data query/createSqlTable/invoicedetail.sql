CREATE TABLE INVOICEDETAIL(
ID INT IDENTITY(1,1),
INVOICEID INT,
ORDERDETAILID INT,
ITEMID INT,
PRICE FLOAT,
AMOUNT FLOAT,
CONSTRAINT [PK_INVOICEDETAIL] PRIMARY KEY CLUSTERED (ID ASC))
