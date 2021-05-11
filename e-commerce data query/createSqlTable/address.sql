CREATE TABLE ADDRESS(
ID INT IDENTITY(1,1),
COUNTRYID INT,
CITYID INT,
TOWNID INT,
DISTRICTID INT,
POSTALCODE VARCHAR(10),
ADDRESSTEXT VARCHAR(250),
USERID INT,
CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED (ID ASC))