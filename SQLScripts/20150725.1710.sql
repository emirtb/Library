
/************ Update: Tables ***************/

/******************** Add Table: dbo.secTask ************************/

/* Build Table Structure */
CREATE TABLE dbo.secTask
(
	GuidTask UniqueIdentifier NOT NULL,
	StartDT DATETIME NULL,
	RepeatEachHr INTEGER NULL,
	UrlEndPoint VARCHAR(1000) NULL,
	CompanyOwner UniqueIdentifier NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secTask ADD CONSTRAINT pksecTask
	PRIMARY KEY (GuidTask);


/******************** Add Table: dbo.secTaskHistory ************************/

/* Build Table Structure */
CREATE TABLE dbo.secTaskHistory
(
	GuidTaskHistory UniqueIdentifier NOT NULL,
	StartTime DATETIME NULL,
	EndTime DATETIME NULL,
	GuidTask UniqueIdentifier NULL,
	UrlReponse VARBINARY(MAX) NULL,
	ResponseCodeN INTEGER NULL,
	IsManual BIT DEFAULT 'false' NOT NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secTaskHistory ADD CONSTRAINT pksecTaskHistory
	PRIMARY KEY (GuidTaskHistory);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secTaskHistory_secTask */
ALTER TABLE dbo.secTaskHistory ADD CONSTRAINT fk_secTaskHistory_secTask
	FOREIGN KEY (GuidTask) REFERENCES dbo.secTask (GuidTask)
	ON UPDATE NO ACTION ON DELETE NO ACTION;


/************ Update: Tables ***************/

/******************** Update Table: secTaskHistory ************************/

ALTER TABLE dbo.secTaskHistory ALTER COLUMN UrlReponse VARCHAR(MAX) NULL;





/************ Update: Tables ***************/

/******************** Update Table: secTask ************************/

ALTER TABLE dbo.secTask ADD GuidModule UniqueIdentifier NULL;

ALTER TABLE dbo.secTask ADD CreatedBy UniqueIdentifier NULL;

ALTER TABLE dbo.secTask ADD UpdatedBy UniqueIdentifier NULL;

ALTER TABLE dbo.secTask ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secTask ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secTaskHistory ************************/

ALTER TABLE dbo.secTaskHistory ADD CreatedBy UniqueIdentifier NULL;

ALTER TABLE dbo.secTaskHistory ADD CreatedDate DATETIME NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secTask_secModule */
ALTER TABLE dbo.secTask ADD CONSTRAINT fk_secTask_secModule
	FOREIGN KEY (GuidModule) REFERENCES dbo.secModule (GuidModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;




/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secTaskHistory_secTask */
ALTER TABLE dbo.secTaskHistory ADD CONSTRAINT fk_secTaskHistory_secTask
	FOREIGN KEY (GuidTask) REFERENCES dbo.secTask (GuidTask)
	ON UPDATE NO ACTION ON DELETE NO ACTION;




ALTER TABLE dbo.secTask ADD GuidReusableRepeatType UniqueIdentifier NULL;

ALTER TABLE dbo.secTask ADD TimeZoneWinId VARCHAR(255) NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secTask_ReusableRepeatType */
ALTER TABLE dbo.secTask ADD CONSTRAINT fk_secTask_ReusableRepeatType
	FOREIGN KEY (GuidReusableRepeatType) REFERENCES dbo.secReusableCatalogValues (GuidReusableCatalogValue)
	ON UPDATE NO ACTION ON DELETE NO ACTION;