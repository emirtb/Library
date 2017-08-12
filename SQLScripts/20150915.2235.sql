USE [sfs_20150904_1034]
GO

/****** Object:  Index [_dta_index_secCompanies_15_437576597__K6_K9_K2_K3_K4_K14_1_5_7_8_10_11_12_13_15_16_17_18_19]    Script Date: 15/09/2015 10:32:32 p. m. ******/
CREATE NONCLUSTERED INDEX [company_customdomain] ON [dbo].[secCompanies]
(
	[CreatedDate] ASC,
	[IsDeleted] ASC,
	[GuidCompanyType] ASC,
	[GuidCompany] ASC,
	[CompanyParentGuid] ASC,
	[GuidUserOwner] ASC,
	[CustomDomain] ASC
)
INCLUDE ( 	[Name],
	[UpdatedDate],
	[UpdatedBy],
	[CreatedBy],
	[GuidFileLogo],
	[GuidCountry],
	[GuidState],
	[GuidCity],
	[Description],
	[CanChildMoreChildren],
	[CanChildsAdminRoles],
	[IntegrationID],
	[TimeZoneNameID]) WITH (ONLINE = OFF)
GO


