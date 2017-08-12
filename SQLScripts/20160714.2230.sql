

/************ Update: Tables ***************/

/******************** Update Table: secModule ************************/

ALTER TABLE dbo.secModule ADD GuidAutoServiceRole UniqueIdentifier NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_AutoServiceRole */
ALTER TABLE dbo.secModule ADD CONSTRAINT fk_AutoServiceRole
	FOREIGN KEY (GuidAutoServiceRole) REFERENCES dbo.secRoles (GuidRole)
	ON UPDATE NO ACTION ON DELETE NO ACTION;



/************ Update: Tables ***************/

/******************** Update Table: secCompUISetting ************************/

ALTER TABLE dbo.secCompUISetting ADD UserProfileInSideMenu BIT NULL;


/******************** Update Table: secCompanyModules ************************/

ALTER TABLE dbo.secCompanyModules ADD PreventChangeCompany BIT NULL;