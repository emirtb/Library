
ALTER TABLE dbo.secCompanies ADD CanChildMoreChildren BIT NULL;

ALTER TABLE dbo.secCompanies ADD CanChildsAdminRoles BIT NULL;


/******************** Update Table: secMenuForms ************************/

ALTER TABLE dbo.secMenuForms ADD LangResource VARCHAR(2000) NULL;