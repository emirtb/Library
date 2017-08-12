

/******************** Update Table: secBizPropertyDescriptions ************************/

--ALTER TABLE dbo.secBizPropertyDescriptions ALTER COLUMN LongDescription NVARCHAR(5000) NULL;


/******************** Update Table: secCompanies ************************/


/******************** Update Table: secCompanyModules ************************/

ALTER TABLE dbo.secCompanyModules ADD DefaultInPublic BIT NULL;

ALTER TABLE dbo.secCompanyModules ADD HideFromPublic BIT NULL;

ALTER TABLE dbo.secCompanyModules ADD CustomDomain VARCHAR(100) NULL;



/******************** Update Table: secIssues ************************/

ALTER TABLE dbo.secIssues ADD TimeEstimated DECIMAL(10, 2) NULL;

ALTER TABLE dbo.secIssues ADD TimeReal DECIMAL(10, 2) NULL;

ALTER TABLE dbo.secIssues ADD ProduceCost BIT NULL;

ALTER TABLE dbo.secIssues ADD GuidCompanyOwner UniqueIdentifier NULL;



/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secIssues_secCompanies */
ALTER TABLE dbo.secIssues ADD CONSTRAINT fk_secIssues_secCompanies
	FOREIGN KEY (GuidCompanyOwner) REFERENCES dbo.secCompanies (GuidCompany)
	ON UPDATE NO ACTION ON DELETE NO ACTION;