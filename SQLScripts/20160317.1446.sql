
/************ Update: Tables ***************/

/******************** Add Table: dbo.secCompUISetting ************************/

/* Build Table Structure */
CREATE TABLE dbo.secCompUISetting
(
	GuidCompUISetting UniqueIdentifier NOT NULL,
	GuidCompany UniqueIdentifier NULL,
	PrimaryButtonsBG VARCHAR(50) NULL,
	PrimaryButtonsTextColor VARCHAR(50) NULL,
	TopMenuBG VARCHAR(50) NULL,
	TopCompanyLogoBG VARCHAR(50) NULL,
	AppMenuBG VARCHAR(50) NULL,
	BGColor VARCHAR(50) NULL,
	FormBG VARCHAR(50) NULL,
	InputFocusedBG VARCHAR(50) NULL,
	Title VARCHAR(100) NOT NULL,
	CreatedBy UniqueIdentifier NULL,
	UpdatedBy UniqueIdentifier NULL,
	CreatedDate DATETIME NULL,
	UpdatedDate DATETIME NULL,
	TextLinkColor VARCHAR(50) NULL,
	ListHeaderTextColor VARCHAR(50) NULL,
	ListHeaderBG VARCHAR(50) NULL,
	Bytes INTEGER NULL,
	IsDeleted BIT NULL,
	WarningColorLiteBG VARCHAR(50) NULL,
	ErrorColorLiteBG VARCHAR(50) NULL,
	SuccessColorLiteBG VARCHAR(50) NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secCompUISetting ADD CONSTRAINT pksecCompUISetting
	PRIMARY KEY (GuidCompUISetting);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secCompUISetting_secCompanies */
ALTER TABLE dbo.secCompUISetting ADD CONSTRAINT fk_secCompUISetting_secCompanies
	FOREIGN KEY (GuidCompany) REFERENCES dbo.secCompanies (GuidCompany)
	ON UPDATE NO ACTION ON DELETE NO ACTION;