ALTER TABLE dbo.secIssues ADD RepoID UniqueIdentifier NULL;
ALTER TABLE dbo.secIssues ADD RepoRevisionNum INTEGER NULL;
ALTER TABLE dbo.secIssues ALTER COLUMN RepoID VARCHAR(100) NULL;