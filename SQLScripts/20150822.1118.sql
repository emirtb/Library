
ALTER TABLE dbo.secCompanyModules ADD TotalUsers INTEGER NULL;

ALTER TABLE dbo.secCompanyModules ADD TotalUserRoles INTEGER NULL;
/************ Update: Tables ***************/

/******************** Update Table: secCompanyModules ************************/

ALTER TABLE dbo.secCompanyModules ADD TotalAuditCatalogs INTEGER NULL;


ALTER TABLE dbo.secCompanyModules ALTER COLUMN TotalBytes FLOAT NULL;

ALTER TABLE dbo.secCompanyModules ALTER COLUMN TotalDeletedBytes FLOAT NULL;

ALTER TABLE dbo.secCompAppBizObject ALTER COLUMN TotalBytes FLOAT NULL;
