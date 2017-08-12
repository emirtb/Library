
/* Add Indexes */
CREATE UNIQUE NONCLUSTERED INDEX secCompanyModules_GuidModule_GuidCompany_Idx ON dbo.secCompanyModules (GuidModule, GuidCompany);


/* Build Table Structure */
CREATE TABLE dbo.secCompAppBizObject
(
	GuidCompAppBizObject UniqueIdentifier NOT NULL,
	GuidCompanyModule UniqueIdentifier NULL,
	GuidBusinessObject UniqueIdentifier NULL,
	TotalBytes INTEGER NULL,
	TotalDeleted INTEGER NULL,
	TotalItems INTEGER NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secCompAppBizObject ADD CONSTRAINT pksecCompAppBizObject
	PRIMARY KEY (GuidCompAppBizObject);


/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secCompAppBizObject_secBusinessObject */
ALTER TABLE dbo.secCompAppBizObject ADD CONSTRAINT fk_secCompAppBizObject_secBusinessObject
	FOREIGN KEY (GuidBusinessObject) REFERENCES dbo.secBusinessObject (GuidBusinessObject)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secCompAppBizObject_secCompanyModules */
ALTER TABLE dbo.secCompAppBizObject ADD CONSTRAINT fk_secCompAppBizObject_secCompanyModules
	FOREIGN KEY (GuidCompanyModule) REFERENCES dbo.secCompanyModules (GuidCompanyModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;



/******************** Update Table: secCompAppBizObject ************************/

ALTER TABLE dbo.secCompAppBizObject ADD TotalsUpdated DATETIME NULL;

