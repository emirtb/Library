
/******************** Update Table: secFeatureConcepts ************************/

ALTER TABLE dbo.secFeatureConcepts ADD Price_USD MONEY NULL;

ALTER TABLE dbo.secFeatureConcepts ADD Price_MXN MONEY NULL;

ALTER TABLE dbo.secFeatureConcepts ADD Price MONEY NULL;


/******************** Update Table: secReusableCatalogValues ************************/

/* Add Indexes */
CREATE NONCLUSTERED INDEX secReusableCatalogValues_ValueString_GuidReusableCatalogValue_GuidReusableCatalog_Idx ON dbo.secReusableCatalogValues (ValueString, GuidReusableCatalogValue, GuidReusableCatalog);


ALTER TABLE dbo.secCompanyModules ADD StartDate DATETIME NULL;


ALTER TABLE dbo.secCompAppHistory ADD TotalUsers INTEGER NULL;

ALTER TABLE dbo.secCompAppHistory ADD TotalCustomRoles INTEGER NULL;

ALTER TABLE dbo.secCompAppHistory ADD TotalFilesGb FLOAT NULL;



/************ Update: Tables ***************/

/******************** Update Table: secInvoice ************************/

ALTER TABLE dbo.secInvoice ADD Calculated BIT NULL;


ALTER TABLE dbo.secInvoice ADD GuidModule UniqueIdentifier NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secInvoice_secModule */
ALTER TABLE dbo.secInvoice ADD CONSTRAINT fk_secInvoice_secModule
	FOREIGN KEY (GuidModule) REFERENCES dbo.secModule (GuidModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;