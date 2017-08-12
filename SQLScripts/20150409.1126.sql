
ALTER TABLE dbo.secWFActivityUsers ADD GetUsersFromBizObj BIT NULL;

ALTER TABLE dbo.secWFActivityUsers ADD GuidBizObjPropertyUsers UniqueIdentifier NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secWFActivityUsers_secBizObjProperty */
ALTER TABLE dbo.secWFActivityUsers ADD CONSTRAINT fk_secWFActivityUsers_secBizObjProperty
	FOREIGN KEY (GuidBizObjPropertyUsers) REFERENCES dbo.secBizObjProperty (GuidBizObjProperty)
	ON UPDATE NO ACTION ON DELETE NO ACTION;