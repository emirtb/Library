
/******************** Add Table: dbo.secTimeZone ************************/

/* Build Table Structure */
CREATE TABLE dbo.secTimeZone
(
	GuidTimeZone UniqueIdentifier NOT NULL,
	CountryCode VARCHAR(4) NULL,
	Name VARCHAR(35) NULL,
	ZoneID INTEGER NULL,
	CreatedDate DATETIME NULL,
	CreatedBy UniqueIdentifier NULL,
	UpdatedDate DATETIME NULL,
	UpdatedBy UniqueIdentifier NULL,
	UseDST BIT NULL,
	StartDST DATETIME NULL,
	EndDST DATETIME NULL,
	HrsOffsetDST INTEGER NULL,
	HrsOffset INTEGER NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secTimeZone ADD CONSTRAINT pksecTimeZone
	PRIMARY KEY (GuidTimeZone);


/******************** Add Table: dbo.secUpdate ************************/

/* Build Table Structure */
CREATE TABLE dbo.secUpdate
(
	GuidUpdate UniqueIdentifier NOT NULL,
	VersionID DECIMAL(13, 4) NOT NULL,
	VersionName VARCHAR(255) NULL,
	ScriptSQL VARCHAR(MAX) NULL,
	CreatedDate DATETIME NULL,
	ExecutionResult VARCHAR(MAX) NULL,
	ExecutionWithError BIT NULL,
	UpdatedDate DATETIME NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secUpdate ADD CONSTRAINT pksecUpdate
	PRIMARY KEY (GuidUpdate);


/******************** Update Table: secUsers ************************/

ALTER TABLE dbo.secUsers ADD TimeZoneId VARCHAR(100) NULL;
