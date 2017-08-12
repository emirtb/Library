
/* Build Table Structure */
CREATE TABLE dbo.secCompanyLogin
(
	GuidCompanyLogin UniqueIdentifier NOT NULL,
	GuidCompany UniqueIdentifier NOT NULL,
	Microsoft BIT NULL,
	Google BIT NULL,
	LinkedIn BIT NULL,
	Facebook BIT NULL,
	Yahoo BIT NULL,
	Twitter BIT NULL,
	MicrosoftClientId VARCHAR(255) NULL,
	MicrosoftClientSecret VARCHAR(255) NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secCompanyLogin ADD CONSTRAINT pksecCompanyLogin
	PRIMARY KEY (GuidCompanyLogin);

/* Add Indexes */
CREATE UNIQUE NONCLUSTERED INDEX secCompanyLogin_GuidCompany_Idx ON dbo.secCompanyLogin (GuidCompany);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secCompanyLogin_secCompanies */
ALTER TABLE dbo.secCompanyLogin ADD CONSTRAINT fk_secCompanyLogin_secCompanies
	FOREIGN KEY (GuidCompany) REFERENCES dbo.secCompanies (GuidCompany)
	ON UPDATE NO ACTION ON DELETE NO ACTION;