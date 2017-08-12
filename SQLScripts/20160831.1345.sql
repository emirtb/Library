
/************ Update: Tables ***************/

/******************** Update Table: secUser_LoginProviders ************************/

ALTER TABLE dbo.secUser_LoginProviders ALTER COLUMN IdUserProvider VARCHAR(200) NULL;

ALTER TABLE dbo.secUser_LoginProviders ADD AccessToken VARCHAR(255) NULL;

ALTER TABLE dbo.secUser_LoginProviders ADD AvatarUrl VARCHAR(500) NULL;