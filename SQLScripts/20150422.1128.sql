
ALTER TABLE dbo.secComModSetting ADD ValueInt INTEGER NULL;

ALTER TABLE dbo.secComModSetting ADD ValueBoolean BIT NULL;

ALTER TABLE dbo.secComModSetting ADD ValueDecimal DECIMAL(10, 2) NULL;

ALTER TABLE dbo.secComModSetting ADD ValueString VARCHAR(255) NULL;


/******************** Update Table: secSetting ************************/

ALTER TABLE dbo.secSetting ADD TypeDataOption VARCHAR(50) NULL;
