
/******************** Update Table: secIssues ************************/

ALTER TABLE dbo.secIssues ADD GuidUserAcepted UniqueIdentifier NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secIssue_secUser_UserAcepted */
ALTER TABLE dbo.secIssues ADD CONSTRAINT fk_secIssue_secUser_UserAcepted
	FOREIGN KEY (GuidUserAcepted) REFERENCES dbo.secUsers (GuidUser)
	ON UPDATE NO ACTION ON DELETE NO ACTION;


	

/************ Update: Tables ***************/

/******************** Update Table: secIssues ************************/

ALTER TABLE dbo.secIssues ADD Progress INTEGER NULL;