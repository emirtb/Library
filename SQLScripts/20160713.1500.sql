
ALTER TABLE dbo.secCompanyModules ADD FaceBookAppId VARCHAR(300) NULL;

ALTER TABLE dbo.secCompanyModules ADD FacebookAppSecret VARCHAR(300) NULL;

ALTER TABLE dbo.secCompanyModules ADD MicrosoftClientId VARCHAR(300) NULL;

ALTER TABLE dbo.secCompanyModules ADD MicrosoftClientSecret VARCHAR(300) NULL;

ALTER TABLE dbo.secCompanyModules ADD GoogleClientId VARCHAR(300) NULL;

ALTER TABLE dbo.secCompanyModules ADD GoogleClientSecret VARCHAR(300) NULL;


ALTER TABLE dbo.secModule ADD FaceBookAppId VARCHAR(300) NULL;

ALTER TABLE dbo.secModule ADD FacebookAppSecret VARCHAR(300) NULL;

ALTER TABLE dbo.secModule ADD MicrosoftClientId VARCHAR(300) NULL;

ALTER TABLE dbo.secModule ADD MicrosoftClientSecret VARCHAR(300) NULL;

ALTER TABLE dbo.secModule ADD GoogleClientId VARCHAR(300) NULL;

ALTER TABLE dbo.secModule ADD GoogleClientSecret VARCHAR(300) NULL;



ALTER TABLE dbo.secFiles ADD FileStorage VARCHAR(500) NULL;



/******************** Update Table: secUser_LoginProviders ************************/

ALTER TABLE dbo.secUser_LoginProviders ADD GuidFile UniqueIdentifier NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secUser_LoginProviders_secFiles */
ALTER TABLE dbo.secUser_LoginProviders ADD CONSTRAINT fk_secUser_LoginProviders_secFiles
	FOREIGN KEY (GuidFile) REFERENCES dbo.secFiles (GuidFile)
	ON UPDATE NO ACTION ON DELETE NO ACTION;