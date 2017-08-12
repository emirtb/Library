/******************** Add Table: dbo.secSetting ************************/

/* Build Table Structure */
CREATE TABLE dbo.secSetting
(
	GuidSetting UniqueIdentifier NOT NULL,
	GuidCompanyModule UniqueIdentifier NULL,
	NameKey VARCHAR(100) NULL,
	Name VARCHAR(255) NULL,
	Description VARCHAR(255) NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secSetting ADD CONSTRAINT pksecSetting
	PRIMARY KEY (GuidSetting);


/******************** Add Table: dbo.secSettingValue ************************/

/* Build Table Structure */
CREATE TABLE dbo.secSettingValue
(
	GuidSettingVaue UniqueIdentifier NOT NULL,
	GuidSetting UniqueIdentifier NULL,
	ValueString VARCHAR(100) NULL,
	Title VARCHAR(255) NULL,
	Description VARCHAR(5000) NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secSettingValue ADD CONSTRAINT pksecSettingValue
	PRIMARY KEY (GuidSettingVaue);





/************ Add Foreign Keys ***************/



/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secSetting_secCompanyModules */
ALTER TABLE dbo.secSetting ADD CONSTRAINT fk_secSetting_secCompanyModules
	FOREIGN KEY (GuidCompanyModule) REFERENCES dbo.secCompanyModules (GuidCompanyModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secSettingValue_secSetting */
ALTER TABLE dbo.secSettingValue ADD CONSTRAINT fk_secSettingValue_secSetting
	FOREIGN KEY (GuidSetting) REFERENCES dbo.secSetting (GuidSetting)
	ON UPDATE NO ACTION ON DELETE NO ACTION;




ALTER TABLE dbo.secSetting DROP CONSTRAINT fk_secSetting_secCompanyModules;

/******************** Add Table: dbo.secComModSetting ************************/

/* Build Table Structure */
CREATE TABLE dbo.secComModSetting
(
	GuidCompModSetting UniqueIdentifier NOT NULL,
	GuidCompanyModule UniqueIdentifier NULL,
	GuidSetting UniqueIdentifier NULL,
	GuidSettingVaue UniqueIdentifier NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secComModSetting ADD CONSTRAINT pksecComModSetting
	PRIMARY KEY (GuidCompModSetting);


	ALTER TABLE dbo.secModuleOptions ADD Description VARCHAR(500) NULL;


	
/******************** Update Table: secSetting ************************/

ALTER TABLE dbo.secSetting DROP COLUMN GuidCompanyModule;



/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secComModSetting_secCompanyModules */
ALTER TABLE dbo.secComModSetting ADD CONSTRAINT fk_secComModSetting_secCompanyModules
	FOREIGN KEY (GuidCompanyModule) REFERENCES dbo.secCompanyModules (GuidCompanyModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secComModSetting_secSetting */
ALTER TABLE dbo.secComModSetting ADD CONSTRAINT fk_secComModSetting_secSetting
	FOREIGN KEY (GuidSetting) REFERENCES dbo.secSetting (GuidSetting)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secComModSetting_secSettingValue */
ALTER TABLE dbo.secComModSetting ADD CONSTRAINT fk_secComModSetting_secSettingValue
	FOREIGN KEY (GuidSettingVaue) REFERENCES dbo.secSettingValue (GuidSettingVaue)
	ON UPDATE NO ACTION ON DELETE NO ACTION;
