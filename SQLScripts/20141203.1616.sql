
/************ Remove Foreign Keys ***************/

ALTER TABLE dbo.myActivityParams DROP CONSTRAINT FK_myActivityParams_myWfActivity;

ALTER TABLE dbo.myActivityParams DROP CONSTRAINT FK_myActivityParams_myWfActivityParamTypes;

ALTER TABLE dbo.myWFActivityMessage DROP CONSTRAINT FK_myWFActivityMessage_myWfActivity;

ALTER TABLE dbo.myWfActivity DROP CONSTRAINT FK_myWfActivity_myWfActivityTypes;

ALTER TABLE dbo.myWfActivity DROP CONSTRAINT FK_myWfActivity_myWfProcess;

ALTER TABLE dbo.myWfActivityActivation DROP CONSTRAINT FK_myWfActivityActivation_myWfActivity;

ALTER TABLE dbo.myWfActivityInstance DROP CONSTRAINT FK_myWfActivityInstance_myWfActivity;



/************ Update: Tables ***************/

/******************** Remove Table: dbo.myActivityParams ************************/
DROP TABLE dbo.myActivityParams;

/******************** Remove Table: dbo.myConfiguration ************************/
DROP TABLE dbo.myConfiguration;

/******************** Remove Table: dbo.myOptions ************************/
DROP TABLE dbo.myOptions;

/******************** Remove Table: dbo.myWFActivityMessage ************************/
DROP TABLE dbo.myWFActivityMessage;

/******************** Remove Table: dbo.myWfActivity ************************/
DROP TABLE dbo.myWfActivity;

/******************** Remove Table: dbo.myWfActivityActivation ************************/
DROP TABLE dbo.myWfActivityActivation;

/******************** Remove Table: dbo.myWfActivityInstance ************************/
DROP TABLE dbo.myWfActivityInstance;

/******************** Remove Table: dbo.myWfActivityParamTypes ************************/
DROP TABLE dbo.myWfActivityParamTypes;

/******************** Remove Table: dbo.myWfActivityTypes ************************/
DROP TABLE dbo.myWfActivityTypes;

/******************** Remove Table: dbo.myWfProcess ************************/
DROP TABLE dbo.myWfProcess;

/******************** Update Table: secSyncMatchDef ************************/

/* Add Comments */
EXEC sp_addextendedproperty 'MS_Description', 'common-sync, globaldata-companyuser, globaldata-globaluser, globaldata-country', 'schema', 'dbo', 
	'table', 'secSyncMatchDef', 'column', 'TypeSync';


/******************** Update Table: secSyncMatchDefProps ************************/

/* Add Comments */
EXEC sp_addextendedproperty 'MS_Description', 'Propiedad de unión entre una propiedad de una entidad concreta y la de la entidad virtual intermedia', 'schema', 'dbo', 
	'table', secSyncMatchDefProps, null, null;


/******************** Update Table: secSyncMatchProperty ************************/

/* Add Comments */
EXEC sp_addextendedproperty 'MS_Description', 'Relación entre una propiedad real de una entidad y una propiedad virtual o de definición', 'schema', 'dbo', 
	'table', secSyncMatchProperty, null, null;
