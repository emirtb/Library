
/******************** Update Table: secCompanies ************************/

ALTER TABLE dbo.secCompanies ADD ColorPrimary VARCHAR(100) NULL;

ALTER TABLE dbo.secCompanies ADD ColorBGApp VARCHAR(100) NULL;

ALTER TABLE dbo.secCompanies ADD ColorBGForm VARCHAR(100) NULL;


/******************** Update Table: secCompanyModules ************************/

ALTER TABLE dbo.secCompanyModules ADD TotalBytes INTEGER NULL;

ALTER TABLE dbo.secCompanyModules ADD TotalDeleted INTEGER NULL;

ALTER TABLE dbo.secCompanyModules ADD TotalDeletedBytes INTEGER NULL;

ALTER TABLE dbo.secCompanyModules ADD TotalItems INTEGER NULL;


/******************** Update Table: secModule ************************/

ALTER TABLE dbo.secModule ADD WithPublicPage BIT DEFAULT 'false' NOT NULL;


/******************** Update Table: secUsers ************************/

ALTER TABLE dbo.secUsers ALTER COLUMN DisplayName VARCHAR(100) NULL;



----------------------------



/******************** Update Table: secCompAppBizObject ************************/

ALTER TABLE dbo.secCompAppBizObject ADD UpdatedDateTotals DATETIME NULL;


/******************** Update Table: secCompanyModules ************************/

ALTER TABLE dbo.secCompanyModules ADD UpdatedDateTotals DATETIME NULL;


/******************** Update Table: secUserCompanies ************************/

ALTER TABLE dbo.secUserCompanies ADD TotalItems INTEGER NULL;

ALTER TABLE dbo.secUserCompanies ADD UpdatedDateTotalItems DATETIME NULL;


