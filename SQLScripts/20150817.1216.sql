

/************ Update: Tables ***************/

/******************** Update Table: secContents ************************/

ALTER TABLE dbo.secContents ADD GuidReusableFeatureType UniqueIdentifier NULL;

ALTER TABLE dbo.secContents ADD GuidFeatureParent UniqueIdentifier NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_Feature_parent */
ALTER TABLE dbo.secContents ADD CONSTRAINT fk_Feature_parent
	FOREIGN KEY (GuidFeatureParent) REFERENCES dbo.secContents (GuidContent)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_Reusable_FeatureType */
ALTER TABLE dbo.secContents ADD CONSTRAINT fk_Reusable_FeatureType
	FOREIGN KEY (GuidReusableFeatureType) REFERENCES dbo.secReusableCatalogValues (GuidReusableCatalogValue)
	ON UPDATE NO ACTION ON DELETE NO ACTION;