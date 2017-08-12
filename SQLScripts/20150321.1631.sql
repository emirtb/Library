



/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secBizPropertyDescriptions_secCompanies */
ALTER TABLE dbo.secBizPropertyDescriptions ADD CONSTRAINT fk_secBizPropertyDescriptions_secCompanies
	FOREIGN KEY (OwnerComptany) REFERENCES dbo.secCompanies (GuidCompany)
	ON UPDATE NO ACTION ON DELETE NO ACTION;