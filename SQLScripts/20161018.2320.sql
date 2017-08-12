
/******************** Update Table: secUser_LoginProviders ************************/

ALTER TABLE dbo.secUser_LoginProviders ADD IsDeleted BIT NULL;


/******************** Update Table: secUsers ************************/

ALTER TABLE dbo.secUsers ADD IsDeleted BIT NULL;