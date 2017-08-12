
/************ Update: Tables ***************/

/******************** Update Table: secCompAppHistory ************************/

ALTER TABLE dbo.secCompAppHistory ADD TotalSumBytes FLOAT NULL;


/******************** Update Table: secFeatureConcepts ************************/

ALTER TABLE dbo.secFeatureConcepts ADD NameKey VARCHAR(100) NULL;

ALTER TABLE dbo.secFeatureConcepts ADD GuidModule UniqueIdentifier NULL;


/******************** Add Table: dbo.secInvoice ************************/

/* Build Table Structure */
CREATE TABLE dbo.secInvoice
(
	GuidInvoice UniqueIdentifier NOT NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secInvoice ADD CONSTRAINT pksecInvoice
	PRIMARY KEY (GuidInvoice);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secFeatureConcepts_secModule */
ALTER TABLE dbo.secFeatureConcepts ADD CONSTRAINT fk_secFeatureConcepts_secModule
	FOREIGN KEY (GuidModule) REFERENCES dbo.secModule (GuidModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;



/************ Update: Tables ***************/

/******************** Update Table: secCompAppHistory ************************/

ALTER TABLE dbo.secCompAppHistory ADD TotalSumKbytes FLOAT NULL;

ALTER TABLE dbo.secCompAppHistory ADD TotalSumMb FLOAT NULL;


--------------------------------------------------------------
----------------------------------------

/************ Update: Tables ***************/

/******************** Add Table: dbo.secCompAppFeature ************************/

/* Build Table Structure */
CREATE TABLE dbo.secCompAppFeature
(
	GuidCompAppFeature UniqueIdentifier NOT NULL,
	GuidFeatureConcept UniqueIdentifier NULL,
	GuidCompanyModule UniqueIdentifier NULL,
	GuidCompany UniqueIdentifier NULL,
	GuidModule UniqueIdentifier NULL,
	DiscountPrecent DECIMAL(10, 2) NULL,
	FromDateTime DATETIME NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secCompAppFeature ADD CONSTRAINT pksecCompAppFeature
	PRIMARY KEY (GuidCompAppFeature);


/******************** Update Table: secFeaurePrices ************************/

ALTER TABLE dbo.secFeaurePrices ADD PriceBy_ES VARCHAR(255) NULL;

ALTER TABLE dbo.secFeaurePrices ADD PriceBy VARCHAR(255) NULL;

ALTER TABLE dbo.secFeaurePrices ADD PriceBy_EN VARCHAR(255) NULL;


/******************** Update Table: secInvoice ************************/

ALTER TABLE dbo.secInvoice ADD GuidCompany UniqueIdentifier NULL;

ALTER TABLE dbo.secInvoice ADD InvoiceNum INTEGER NULL;

ALTER TABLE dbo.secInvoice ADD InvoiceDate DATETIME NULL;

ALTER TABLE dbo.secInvoice ADD ServicesFrom DATETIME NULL;

ALTER TABLE dbo.secInvoice ADD ServicesTo DATETIME NULL;

ALTER TABLE dbo.secInvoice ADD PreTotal MONEY NULL;

ALTER TABLE dbo.secInvoice ADD Taxes MONEY NULL;

ALTER TABLE dbo.secInvoice ADD Total MONEY NULL;

ALTER TABLE dbo.secInvoice ADD CurrencyCode VARCHAR(5) NULL;

ALTER TABLE dbo.secInvoice ADD GuidCompanyModule UniqueIdentifier NULL;


/******************** Add Table: dbo.secInvoiceDetail ************************/

/* Build Table Structure */
CREATE TABLE dbo.secInvoiceDetail
(
	GuidInvoiceDetail UniqueIdentifier NOT NULL,
	GuidInvoice UniqueIdentifier NULL,
	GuidFeatureConcept UniqueIdentifier NULL,
	UnitPrice MONEY NULL,
	Discount MONEY NULL,
	Qty DECIMAL(10, 2) NULL,
	Total MONEY NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secInvoiceDetail ADD CONSTRAINT pksecInvoiceDetail
	PRIMARY KEY (GuidInvoiceDetail);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secCompAppFeature_secCompanies */
ALTER TABLE dbo.secCompAppFeature ADD CONSTRAINT fk_secCompAppFeature_secCompanies
	FOREIGN KEY (GuidCompany) REFERENCES dbo.secCompanies (GuidCompany)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secCompAppFeature_secCompanyModules */
ALTER TABLE dbo.secCompAppFeature ADD CONSTRAINT fk_secCompAppFeature_secCompanyModules
	FOREIGN KEY (GuidCompanyModule) REFERENCES dbo.secCompanyModules (GuidCompanyModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secCompAppFeature_secFeatureConcepts */
ALTER TABLE dbo.secCompAppFeature ADD CONSTRAINT fk_secCompAppFeature_secFeatureConcepts
	FOREIGN KEY (GuidFeatureConcept) REFERENCES dbo.secFeatureConcepts (GuidFeatureConcept)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secCompAppFeature_secModule */
ALTER TABLE dbo.secCompAppFeature ADD CONSTRAINT fk_secCompAppFeature_secModule
	FOREIGN KEY (GuidModule) REFERENCES dbo.secModule (GuidModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secInvoice_secCompanies */
ALTER TABLE dbo.secInvoice ADD CONSTRAINT fk_secInvoice_secCompanies
	FOREIGN KEY (GuidCompany) REFERENCES dbo.secCompanies (GuidCompany)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secInvoice_secCompanyModules */
ALTER TABLE dbo.secInvoice ADD CONSTRAINT fk_secInvoice_secCompanyModules
	FOREIGN KEY (GuidCompanyModule) REFERENCES dbo.secCompanyModules (GuidCompanyModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secInvoiceDetail_secFeatureConcepts */
ALTER TABLE dbo.secInvoiceDetail ADD CONSTRAINT fk_secInvoiceDetail_secFeatureConcepts
	FOREIGN KEY (GuidFeatureConcept) REFERENCES dbo.secFeatureConcepts (GuidFeatureConcept)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secInvoiceDetail_secInvoice */
ALTER TABLE dbo.secInvoiceDetail ADD CONSTRAINT fk_secInvoiceDetail_secInvoice
	FOREIGN KEY (GuidInvoice) REFERENCES dbo.secInvoice (GuidInvoice)
	ON UPDATE NO ACTION ON DELETE NO ACTION;