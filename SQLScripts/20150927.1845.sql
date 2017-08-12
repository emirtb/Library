
/************ Update: Tables ***************/

/******************** Add Table: dbo.secInvPaymentFile ************************/

/* Build Table Structure */
CREATE TABLE dbo.secInvPaymentFile
(
	GuidInvPaymentFile UniqueIdentifier NOT NULL,
	GuidInvoicePayment UniqueIdentifier NULL,
	GuidFile UniqueIdentifier NULL,
	Description NVARCHAR(1000) NULL,
	CreatedDate DATETIME NULL,
	CreatedBy UniqueIdentifier NULL,
	UpdatedDate DATETIME NULL,
	UpdatedBy UniqueIdentifier NULL,
	IsDeleted BIT NULL,
	Bytes INTEGER NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secInvPaymentFile ADD CONSTRAINT pksecInvPaymentFile
	PRIMARY KEY (GuidInvPaymentFile);


/******************** Add Table: dbo.secInvoicePayment ************************/

/* Build Table Structure */
CREATE TABLE dbo.secInvoicePayment
(
	GuidInvoicePayment UniqueIdentifier NOT NULL,
	PaymentDate DATETIME NULL,
	Verified BIT NULL,
	GuidInvoice UniqueIdentifier NULL,
	Amount MONEY NULL,
	CreatedBy UniqueIdentifier NULL,
	CreatedDate DATETIME NULL,
	CompanyPayment UniqueIdentifier NULL,
	UpdatedDate DATETIME NULL,
	UpdatedBy UniqueIdentifier NULL,
	Bytes INTEGER NULL,
	IsDeleted BIT NULL
);

/* Add Primary Key */
ALTER TABLE dbo.secInvoicePayment ADD CONSTRAINT pksecInvoicePayment
	PRIMARY KEY (GuidInvoicePayment);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secInvPaymentFile_secFiles */
ALTER TABLE dbo.secInvPaymentFile ADD CONSTRAINT fk_secInvPaymentFile_secFiles
	FOREIGN KEY (GuidFile) REFERENCES dbo.secFiles (GuidFile)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secInvPaymentFile_secInvoicePayment */
ALTER TABLE dbo.secInvPaymentFile ADD CONSTRAINT fk_secInvPaymentFile_secInvoicePayment
	FOREIGN KEY (GuidInvoicePayment) REFERENCES dbo.secInvoicePayment (GuidInvoicePayment)
	ON UPDATE NO ACTION ON DELETE NO ACTION;

/* Add Foreign Key: fk_secInvoicePayment_secInvoice */
ALTER TABLE dbo.secInvoicePayment ADD CONSTRAINT fk_secInvoicePayment_secInvoice
	FOREIGN KEY (GuidInvoice) REFERENCES dbo.secInvoice (GuidInvoice)
	ON UPDATE NO ACTION ON DELETE NO ACTION;