
/******************** Update Table: secCompAppHistory ************************/

ALTER TABLE dbo.secCompAppHistory ADD TotalErrors INTEGER NULL;


/******************** Update Table: secCompanyModules ************************/

ALTER TABLE dbo.secCompanyModules ADD TotalUserRolesWithChildren INTEGER NULL;


/******************** Update Table: secContents ************************/

ALTER TABLE dbo.secContents ADD TextTags VARCHAR(500) NULL;