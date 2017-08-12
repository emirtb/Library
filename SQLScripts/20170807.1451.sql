
/* Build Table Structure */
CREATE TABLE dbo.secTimeZone
(
	GuidTimeZone UniqueIdentifier NOT NULL,
	CountryCode VARCHAR(4) NULL,
	Name VARCHAR(35) NULL,
	ZoneID INTEGER NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secTimeZone ADD CONSTRAINT pksecTimeZone
	PRIMARY KEY (GuidTimeZone);