ALTER TABLE dbo.secWFProcess ADD GuiBusinessObjectUsersWaiting UniqueIdentifier NULL;


/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secWFProcess_secBusinessObject_UsersWaiting */
ALTER TABLE dbo.secWFProcess ADD CONSTRAINT fk_secWFProcess_secBusinessObject_UsersWaiting
	FOREIGN KEY (GuiBusinessObjectUsersWaiting) REFERENCES dbo.secBusinessObject (GuidBusinessObject)
	ON UPDATE NO ACTION ON DELETE NO ACTION;