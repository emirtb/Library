
/************ Update: Tables ***************/

/******************** Add Table: dbo.secBizPropertyDescriptions ************************/

/* Build Table Structure */
CREATE TABLE dbo.secBizPropertyDescriptions
(
	GuidBizPropertyDescription UniqueIdentifier NOT NULL,
	GuidBizObjProperty UniqueIdentifier NULL,
	Culture VARCHAR(5) NULL,
	Name VARCHAR(100) NULL,
	ShortDescription VARCHAR(255) NULL,
	ShortWarning VARCHAR(255) NULL,
	LongDescription VARCHAR(5000) NULL,
	GuidBusinessObject UniqueIdentifier NULL,
	OwnerComptany UniqueIdentifier NULL,
	ResourceKey VARCHAR(255) NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secBizPropertyDescriptions ADD CONSTRAINT pksecBizPropertyDescriptions
	PRIMARY KEY (GuidBizPropertyDescription);


/******************** Update Table: secBusinessObject ************************/

ALTER TABLE dbo.secBusinessObject ALTER COLUMN BusinessObjectKey VARCHAR(255) NULL;

ALTER TABLE dbo.secBusinessObject ADD IsUICustom BIT DEFAULT 'false' NOT NULL;





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secBizPropertyDescriptions_secBizObjProperty */
ALTER TABLE dbo.secBizPropertyDescriptions ADD CONSTRAINT fk_secBizPropertyDescriptions_secBizObjProperty
	FOREIGN KEY (GuidBizObjProperty) REFERENCES dbo.secBizObjProperty (GuidBizObjProperty)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secBizPropertyDescriptions_secBusinessObject */
ALTER TABLE dbo.secBizPropertyDescriptions ADD CONSTRAINT fk_secBizPropertyDescriptions_secBusinessObject
	FOREIGN KEY (GuidBusinessObject) REFERENCES dbo.secBusinessObject (GuidBusinessObject)
	ON UPDATE NO ACTION ON DELETE NO ACTION;



	/******************** Update Table: secBusinessObject ************************/

ALTER TABLE dbo.secBusinessObject ADD TypeId VARCHAR(150) NULL;

/* Add Indexes */
CREATE NONCLUSTERED INDEX secBusinessObject_TypeId_Idx ON dbo.secBusinessObject (TypeId);



exec sp_rename 'dbo.secBizPropertyDescriptions.Culture', 'UICulture','COLUMN';


ALTER TABLE dbo.secBizPropertyDescriptions ADD PluralName VARCHAR(100) NULL;

ALTER TABLE dbo.secWFStates DROP COLUMN GuidBizObjProperty;


ALTER TABLE dbo.secModule ADD Langs VARCHAR(255) NULL;