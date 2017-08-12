
/************ Update: Tables ***************/

/******************** Update Table: secCompanyModules ************************/

ALTER TABLE dbo.secCompanyModules ADD RecaptchaPublicKey VARCHAR(255) NULL;

ALTER TABLE dbo.secCompanyModules ADD RecaptchaPrivateKey VARCHAR(255) NULL;