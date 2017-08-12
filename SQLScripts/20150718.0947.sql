
/************ Update: Tables ***************/

/******************** Add Table: dbo.secAppTemplate ************************/

/* Build Table Structure */
CREATE TABLE dbo.secAppTemplate
(
	GuidAppTemplate UniqueIdentifier NOT NULL,
	Title VARCHAR(255) NULL,
	RelativeHttpPath VARCHAR(1000) NULL,
	GuidExclusiveModule UniqueIdentifier NULL,
	Description VARCHAR(MAX) NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secAppTemplate ADD CONSTRAINT pksecAppTemplate
	PRIMARY KEY (GuidAppTemplate);

ALTER TABLE dbo.secCompanyModules ADD GuidAppTemplate UniqueIdentifier NULL;
/******************** Update Table: secModule ************************/

ALTER TABLE dbo.secModule ADD GuidAppTemplate UniqueIdentifier NULL;
/* Add Foreign Key: fk_secCompanyModules_secAppTemplate */
ALTER TABLE dbo.secCompanyModules ADD CONSTRAINT fk_secCompanyModules_secAppTemplate
	FOREIGN KEY (GuidAppTemplate) REFERENCES dbo.secAppTemplate (GuidAppTemplate)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

	
/* Add Foreign Key: fk_secModule_secAppTemplate */
ALTER TABLE dbo.secModule ADD CONSTRAINT fk_secModule_secAppTemplate
	FOREIGN KEY (GuidAppTemplate) REFERENCES dbo.secAppTemplate (GuidAppTemplate)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

