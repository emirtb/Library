
/******************** Update Table: secCompUISetting ************************/

ALTER TABLE dbo.secCompUISetting ADD IconsDefaultColor VARCHAR(50) NULL;

ALTER TABLE dbo.secCompUISetting ADD ControlFillColorDefault VARCHAR(50) NULL;

/* Add Comments */
EXEC sp_addextendedproperty 'MS_Description', 'Color de controles que necesitan ser llenados, por ejemplo el caso de los checkbox', 'schema', 'dbo', 
	'table', 'secCompUISetting', 'column', 'ControlFillColorDefault';