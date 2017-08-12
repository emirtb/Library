
/************ Update: Tables ***************/

/******************** Add Table: dbo.secCompModConfig ************************/

/* Build Table Structure */
CREATE TABLE dbo.secCompModConfig
(
	GuidCompModConfig UniqueIdentifier NOT NULL,
	GuidCompanyModule UniqueIdentifier NULL,
	GuidReusable_CompModConfig UniqueIdentifier NULL,
	ValueString VARCHAR(255) NULL,
	ValueTime TIMESTAMP NULL,
	ValueInt INTEGER NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secCompModConfig ADD CONSTRAINT pksecCompModConfig
	PRIMARY KEY (GuidCompModConfig);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_Reusable_CompanyModuleConfig */
ALTER TABLE dbo.secCompModConfig ADD CONSTRAINT fk_Reusable_CompanyModuleConfig
	FOREIGN KEY (GuidReusable_CompModConfig) REFERENCES dbo.secReusableCatalogValues (GuidReusableCatalogValue)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secCompanyModuleSetting_secCompanyModules */
ALTER TABLE dbo.secCompModConfig ADD CONSTRAINT fk_secCompanyModuleSetting_secCompanyModules
	FOREIGN KEY (GuidCompanyModule) REFERENCES dbo.secCompanyModules (GuidCompanyModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;