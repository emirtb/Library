ALTER TABLE dbo.secBizPropertyDescriptions ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secBizPropertyDescriptions ADD UpdatedDate DATETIME NULL;

ALTER TABLE dbo.secBizPropertyDescriptions ADD UpdatedBy UniqueIdentifier NULL;


/******************** Update Table: secBusinessObject ************************/

ALTER TABLE dbo.secBusinessObject ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secBusinessObject ADD UpdatedDate DATETIME NULL;

ALTER TABLE dbo.secBusinessObject ADD UpdatedBy UniqueIdentifier NULL;