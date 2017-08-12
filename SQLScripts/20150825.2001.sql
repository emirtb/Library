
/******************** Update Table: secCompAppBizObject ************************/

ALTER TABLE dbo.secCompAppBizObject ADD TotalBytesDeleted FLOAT NULL;


/******************** Update Table: secInvoice ************************/

ALTER TABLE dbo.secInvoice ADD TotalDiscount MONEY NULL;


/******************** Update Table: secInvoiceDetail ************************/

ALTER TABLE dbo.secInvoiceDetail ADD DiscountPercent DECIMAL(10, 2) NULL;