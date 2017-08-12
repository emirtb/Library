
/******************** Update Table: secUsers ************************/

ALTER TABLE dbo.secUsers ADD GuidAddedBy UniqueIdentifier NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_AddedBy_secUser */
ALTER TABLE dbo.secUsers ADD CONSTRAINT fk_AddedBy_secUser
	FOREIGN KEY (GuidAddedBy) REFERENCES dbo.secUsers (GuidUser)
	ON UPDATE NO ACTION ON DELETE NO ACTION;