
/************ Update: Tables ***************/

/******************** Add Table: dbo.secCompAppHistory ************************/

/* Build Table Structure */
CREATE TABLE dbo.secCompAppHistory
(
	GuidCompAppHistory UniqueIdentifier NOT NULL,
	GuidCompanyModule UniqueIdentifier NULL,
	StatDate DATETIME NOT NULL,
	TotalBytes FLOAT NULL,
	TotalCreated INTEGER NULL,
	TotalDeleted INTEGER NULL,
	TotalUpdated INTEGER NULL,
	TotalMessages INTEGER NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secCompAppHistory ADD CONSTRAINT pksecCompAppHistory
	PRIMARY KEY (GuidCompAppHistory);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secCompAppHistory_secCompanyModules */
ALTER TABLE dbo.secCompAppHistory ADD CONSTRAINT fk_secCompAppHistory_secCompanyModules
	FOREIGN KEY (GuidCompanyModule) REFERENCES dbo.secCompanyModules (GuidCompanyModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;