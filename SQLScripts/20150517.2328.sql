

/******************** Update Table: secWFProcess ************************/

ALTER TABLE dbo.secWFProcess ADD GuidPropertyAuthor UniqueIdentifier NULL;

/* Add Foreign Key: fk_Author_secWFProcess_secBizObjProperty */
ALTER TABLE dbo.secWFProcess ADD CONSTRAINT fk_Author_secWFProcess_secBizObjProperty
	FOREIGN KEY (GuidPropertyAuthor) REFERENCES dbo.secBizObjProperty (GuidBizObjProperty)
	ON UPDATE NO ACTION ON DELETE NO ACTION;