
ALTER TABLE dbo.secMenuForms ALTER COLUMN FormKey VARCHAR(255) NOT NULL;

ALTER TABLE dbo.secMenuForms ADD ActionName VARCHAR(50) NULL;

ALTER TABLE dbo.secMenuForms ADD OverrideApp VARCHAR(50) NULL;

ALTER TABLE dbo.secMenuForms ADD UseMode VARCHAR(50) NULL;