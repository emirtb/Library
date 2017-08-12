
/************ Remove Foreign Keys ***************/

ALTER TABLE dbo.secCompanyModules DROP CONSTRAINT FK_secCompanyModules_secCompanies;

ALTER TABLE dbo.secCompanyModules DROP CONSTRAINT FK_secCompanyModules_secModule;



/************ Update: Tables ***************/

/******************** Rebuild Table: dbo.secCompanyModules ************************
Reasons:
Column: GuidModule
	Server column is in a foreign key.
	Server Column: GuidModule, DT=UniqueID, L=, COM=, N=false, AN=false, DF=, SC=, SI=true, EN=, ARR=false.
	Design Column: GuidModule, DT=UniqueID, L=, COM=, N=true, AN=false, DF=, SC=, SI=true, EN=, ARR=false.
Column: GuidCompany
	Server column is in a foreign key.
	Server Column: GuidCompany, DT=UniqueID, L=, COM=, N=false, AN=false, DF=, SC=, SI=true, EN=, ARR=false.
	Design Column: GuidCompany, DT=UniqueID, L=, COM=, N=true, AN=false, DF=, SC=, SI=true, EN=, ARR=false.
*****************************************************************************/

/* Rename: dbo.secCompanyModules */
EXEC sp_rename 'dbo.secCompanyModules', 'secCompanyModules_old';

/* Build Table Structure */
CREATE TABLE dbo.secCompanyModules
(
	GuidModule UniqueIdentifier NULL,
	GuidCompany UniqueIdentifier NULL,
	GuidCompanyModule UniqueIdentifier NOT NULL
);

/* Repopulate Table Data */
INSERT INTO dbo.secCompanyModules
	 (GuidModule, GuidCompany)
SELECT GuidModule, GuidCompany
FROM dbo.secCompanyModules_old;

/* Remove Temp Table */
DROP TABLE dbo.secCompanyModules_old;

/* Add Primary Key */
ALTER TABLE dbo.secCompanyModules ADD CONSTRAINT pksecCompanyModules
	PRIMARY KEY (GuidCompanyModule);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: FK_secCompanyModules_secCompanies */
ALTER TABLE dbo.secCompanyModules ADD CONSTRAINT FK_secCompanyModules_secCompanies
	FOREIGN KEY (GuidCompany) REFERENCES dbo.secCompanies (GuidCompany)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: FK_secCompanyModules_secModule */
ALTER TABLE dbo.secCompanyModules ADD CONSTRAINT FK_secCompanyModules_secModule
	FOREIGN KEY (GuidModule) REFERENCES dbo.secModule (GuidModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;