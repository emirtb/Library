
/******************** Add Table: dbo.secWFConnector ************************/

/* Build Table Structure */
CREATE TABLE dbo.secWFConnector
(
	GuidWFConnector UniqueIdentifier NOT NULL,
	GuidWFActivityFrom UniqueIdentifier NULL,
	GuidWFActivityTo UniqueIdentifier NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secWFConnector ADD CONSTRAINT pksecWFConnector
	PRIMARY KEY (GuidWFConnector);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_wf_connector_from */
ALTER TABLE dbo.secWFConnector ADD CONSTRAINT fk_wf_connector_from
	FOREIGN KEY (GuidWFActivityFrom) REFERENCES dbo.secWFActivity (GuidWFActivity)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_wf_connector_to */
ALTER TABLE dbo.secWFConnector ADD CONSTRAINT fk_wf_connector_to
	FOREIGN KEY (GuidWFActivityTo) REFERENCES dbo.secWFActivity (GuidWFActivity)
	ON UPDATE NO ACTION ON DELETE NO ACTION;