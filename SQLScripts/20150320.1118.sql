
/* Build Table Structure */
CREATE TABLE dbo.secModuleSettings
(
	GuidModuleSetting UniqueIdentifier NOT NULL,
	GuidModule UniqueIdentifier NULL,
	GuidSetting UniqueIdentifier NULL,
	GuidSettingVaueDefault UniqueIdentifier NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secModuleSettings ADD CONSTRAINT pksecModuleSettings
	PRIMARY KEY (GuidModuleSetting);


	

/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secModuleSettings_secModule */
ALTER TABLE dbo.secModuleSettings ADD CONSTRAINT fk_secModuleSettings_secModule
	FOREIGN KEY (GuidModule) REFERENCES dbo.secModule (GuidModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secModuleSettings_secSetting */
ALTER TABLE dbo.secModuleSettings ADD CONSTRAINT fk_secModuleSettings_secSetting
	FOREIGN KEY (GuidSetting) REFERENCES dbo.secSetting (GuidSetting)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secModuleSettings_secSettingValue */
ALTER TABLE dbo.secModuleSettings ADD CONSTRAINT fk_secModuleSettings_secSettingValue
	FOREIGN KEY (GuidSettingVaueDefault) REFERENCES dbo.secSettingValue (GuidSettingVaue)
	ON UPDATE NO ACTION ON DELETE NO ACTION;




/******************** Update Table: secSetting ************************/

ALTER TABLE dbo.secSetting ADD GuidModule UniqueIdentifier NULL;
/* Add Indexes */
CREATE UNIQUE NONCLUSTERED INDEX secSetting_NameKey_GuidModule_Idx ON dbo.secSetting (NameKey, GuidModule);
/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secSetting_secModule */
ALTER TABLE dbo.secSetting ADD CONSTRAINT fk_secSetting_secModule
	FOREIGN KEY (GuidModule) REFERENCES dbo.secModule (GuidModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;




ALTER TABLE dbo.secSetting ADD GuidSettingVaue UniqueIdentifier NULL;


/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secSetting_secSettingValue */
ALTER TABLE dbo.secSetting ADD CONSTRAINT fk_secSetting_secSettingValue
	FOREIGN KEY (GuidSettingVaue) REFERENCES dbo.secSettingValue (GuidSettingVaue)
	ON UPDATE NO ACTION ON DELETE NO ACTION;