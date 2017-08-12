ALTER TABLE dbo.secIssues ADD GuidReusable_RepositoryCode UniqueIdentifier NULL;


/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_Issue_Reusable_RepositoryCode */
ALTER TABLE dbo.secIssues ADD CONSTRAINT fk_Issue_Reusable_RepositoryCode
	FOREIGN KEY (GuidReusable_RepositoryCode) REFERENCES dbo.secReusableCatalogValues (GuidReusableCatalogValue)
	ON UPDATE NO ACTION ON DELETE NO ACTION;


ALTER TABLE dbo.secUsers ALTER COLUMN Bio VARCHAR(MAX) NULL;
