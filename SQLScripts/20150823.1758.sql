/************ Update: Tables ***************/

/******************** Update Table: secCompanyModules ************************/

ALTER TABLE dbo.secCompanyModules ADD CompanyChildren INTEGER NULL;

ALTER TABLE dbo.secCompanyModules ADD ChildrenTotalBytes FLOAT NULL;

ALTER TABLE dbo.secCompanyModules ADD TotalBytesWithChildren FLOAT NULL;