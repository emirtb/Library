
/************ Update: Tables ***************/

/******************** Update Table: secCompUISetting ************************/

ALTER TABLE dbo.secCompUISetting ADD CssCode VARCHAR(MAX) NULL;


/******************** Update Table: secCompanies ************************/

ALTER TABLE dbo.secCompanies ADD GuidCompUISetting UniqueIdentifier NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secCompanies_secCompUISetting */
ALTER TABLE dbo.secCompanies ADD CONSTRAINT fk_secCompanies_secCompUISetting
	FOREIGN KEY (GuidCompUISetting) REFERENCES dbo.secCompUISetting (GuidCompUISetting)
	ON UPDATE NO ACTION ON DELETE NO ACTION;