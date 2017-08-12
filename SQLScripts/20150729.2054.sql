

/************ Update: Tables ***************/

/******************** Add Table: dbo.secTemplateFiles ************************/

/* Build Table Structure */
CREATE TABLE dbo.secTemplateFiles
(
	GuidTemplateFile UniqueIdentifier NOT NULL,
	GuidAppTemplate UniqueIdentifier NULL,
	GuidFile UniqueIdentifier NULL,
	Title VARCHAR(255) NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secTemplateFiles ADD CONSTRAINT pksecTemplateFiles
	PRIMARY KEY (GuidTemplateFile);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secTemplateFiles_secAppTemplate */
ALTER TABLE dbo.secTemplateFiles ADD CONSTRAINT fk_secTemplateFiles_secAppTemplate
	FOREIGN KEY (GuidAppTemplate) REFERENCES dbo.secAppTemplate (GuidAppTemplate)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secTemplateFiles_secFiles */
ALTER TABLE dbo.secTemplateFiles ADD CONSTRAINT fk_secTemplateFiles_secFiles
	FOREIGN KEY (GuidFile) REFERENCES dbo.secFiles (GuidFile)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/************ Update: Tables ***************/

/******************** Update Table: secWFActivity ************************/

ALTER TABLE dbo.secWFActivity DROP COLUMN GuidCompany;