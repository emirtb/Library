
ALTER TABLE dbo.secAudit ALTER COLUMN OldData NVARCHAR(MAX) NULL;

ALTER TABLE dbo.secAudit ALTER COLUMN NewData NVARCHAR(MAX) NULL;



ALTER TABLE dbo.secAudit ADD Format INTEGER NULL;

/* Add Comments */
EXEC sp_addextendedproperty 'MS_Description', 'null o 0=xml,1=json', 'schema', 'dbo', 
	'table', 'secAudit', 'column', 'Format';