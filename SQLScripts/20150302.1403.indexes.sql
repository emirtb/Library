CREATE NONCLUSTERED INDEX [_dta_index_secEventLog_IsAjaxRequest] ON [dbo].[secEventLog]
(
	[IsAjaxRequest] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]



CREATE NONCLUSTERED INDEX [_dta_index_secMessages_GuidUser_IsProcessed_Isdeleted] ON [dbo].[secMessages]
(
	[GuidUser] ASC,
	[IsProcessed] ASC,
	[IsDeleted] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]



SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [dta_index_secIssues_full_sql_recomendation] ON [dbo].[secIssues]
(
	[ErrorEndLine] ASC,
	[ErrorEndMethod] ASC,
	[IsDeleted] ASC,
	[GuidBusinessObject] ASC,
	[GuidIssue] ASC,
	[GuidIssueRelated] ASC,
	[GuidModule] ASC,
	[GuidIssueLevel] ASC,
	[GuidIssueType] ASC,
	[GuidStatus] ASC
)
INCLUDE ( 	[CreatedDate],
	[UpdatedDate],
	[CreatedBy],
	[UpdatedBy],
	[Title],
	[Description],
	[GuidUserReported],
	[GuidUserAsigned],
	[Public],
	[Num],
	[ErrorStartMethod],
	[ErrorStartFile],
	[ErrorStartLine],
	[ErrorEndFile],
	[ErrorTypeException],
	[ErrorFirstMessage],
	[ErrorOccurrences],
	[ErrorStartInstanceName],
	[ErrorEndInstanceName],
	[CommentOfIssue],
	[Priority]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]

-----------------------

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [_dta_index_secBizPropertyDescriptions_15_373576369__K3_K10_K8_K2_1_4_5_6_7_9_11_12_13_14] ON [dbo].[secBizPropertyDescriptions]
(
	[UICulture] ASC,
	[ResourceKey] ASC,
	[GuidBusinessObject] ASC,
	[GuidBizObjProperty] ASC
)
INCLUDE ( 	[GuidBizPropertyDescription],
	[Name],
	[ShortDescription],
	[ShortWarning],
	[LongDescription],
	[OwnerComptany],
	[PluralName],
	[CreatedDate],
	[UpdatedDate],
	[UpdatedBy]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]


SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [_dta_index_secCompanies_15_437576597__K6_K9_K2_K3_K4_K14_1_5_7_8_10_11_12_13_15_16_17_18_19] ON [dbo].[secCompanies]
(
	[CreatedDate] ASC,
	[IsDeleted] ASC,
	[GuidCompanyType] ASC,
	[GuidCompany] ASC,
	[CompanyParentGuid] ASC,
	[GuidUserOwner] ASC
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
	[TimeZoneNameID]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]


SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [_dta_index_secContents_15_725577623__K15_K1_K19_K32_K31_K35_K20_2_3_4_5_6_7_8_9_10_11_12_13_14_16_17_18_21_22_23_24_25_26_27_] ON [dbo].[secContents]
(
	[GuidContentType] ASC,
	[GuidContent] ASC,
	[GuidFile] ASC,
	[GuidFile_EN] ASC,
	[GuidFile_ES] ASC,
	[IsDeleted] ASC,
	[GuidModule] ASC
)
INCLUDE ( 	[Title],
	[LargeContent],
	[ModuleKey],
	[CreatedDate],
	[CreatedUser],
	[UpdatedDate],
	[PropertyName],
	[BusinessObjectKey],
	[OrderContent],
	[UseMode],
	[ActionKey],
	[MenuKey],
	[Slug],
	[ForwardType],
	[FormatType],
	[TitleKey],
	[GuidBusinessObject],
	[DescriptionShort],
	[Title_EN],
	[Title_ES],
	[Slug_EN],
	[Slug_ES],
	[LargeContent_ES],
	[LargeContent_EN],
	[DescriptionShort_ES],
	[DescriptionShort_EN],
	[CreatedBy],
	[UpdatedBy],
	[FieldDataType],
	[RelationType],
	[ShowImageInDetails],
	[Published],
	[PublishDate],
	[RedirectToContent],
	[ImageShowPlace],
	[IdContent],
	[HeaderScript]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]


SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [_dta_index_secContents_15_725577623__K40D_K15_K1_K19_K32_K31_K35_K39_2_3_4_5_6_7_8_9_10_11_12_13_14_16_17_18_20_21_22_23_24_25_] ON [dbo].[secContents]
(
	[PublishDate] DESC,
	[GuidContentType] ASC,
	[GuidContent] ASC,
	[GuidFile] ASC,
	[GuidFile_EN] ASC,
	[GuidFile_ES] ASC,
	[IsDeleted] ASC,
	[Published] ASC
)
INCLUDE ( 	[Title],
	[LargeContent],
	[ModuleKey],
	[CreatedDate],
	[CreatedUser],
	[UpdatedDate],
	[PropertyName],
	[BusinessObjectKey],
	[OrderContent],
	[UseMode],
	[ActionKey],
	[MenuKey],
	[Slug],
	[ForwardType],
	[FormatType],
	[TitleKey],
	[GuidModule],
	[GuidBusinessObject],
	[DescriptionShort],
	[Title_EN],
	[Title_ES],
	[Slug_EN],
	[Slug_ES],
	[LargeContent_ES],
	[LargeContent_EN],
	[DescriptionShort_ES],
	[DescriptionShort_EN],
	[CreatedBy],
	[UpdatedBy],
	[FieldDataType],
	[RelationType],
	[ShowImageInDetails],
	[RedirectToContent],
	[ImageShowPlace],
	[IdContent],
	[HeaderScript]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
