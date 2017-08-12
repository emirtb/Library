ALTER TABLE dbo.secWFProcess ADD AutoStart BIT DEFAULT 'false' NOT NULL;

/******************** Update Table: secWFActivity ************************/

ALTER TABLE dbo.secWFActivity ADD GuidCompany UniqueIdentifier NULL;



/******************** Update Table: secWFProcess ************************/

ALTER TABLE dbo.secWFProcess ADD GuidPropertyUsersWaiting UniqueIdentifier NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_PropertyUsersWaiting_secBizObjProperty */
ALTER TABLE dbo.secWFProcess ADD CONSTRAINT fk_PropertyUsersWaiting_secBizObjProperty
	FOREIGN KEY (GuidPropertyUsersWaiting) REFERENCES dbo.secBizObjProperty (GuidBizObjProperty)
	ON UPDATE NO ACTION ON DELETE NO ACTION;