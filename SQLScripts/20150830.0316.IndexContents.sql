USE [sfs_20150810_1713]
GO

ALTER TABLE dbo.secContents ALTER COLUMN Title VARCHAR(150) NULL;

ALTER TABLE dbo.secContents ALTER COLUMN Title_EN VARCHAR(150) NULL;

ALTER TABLE dbo.secContents ALTER COLUMN Title_ES VARCHAR(150) NULL;

ALTER TABLE dbo.secContents ALTER COLUMN TextTags VARCHAR(255) NULL;

/****** Object:  Index [_dta_index_secContents_15_725577623__K40D_K15_K1_K19_K32_K31_K35_K39_2_3_4_5_6_7_8_9_10_11_12_13_14_16_17_18_20_21_22_23_24_25_]    Script Date: 30/08/2015 03:11:40 a. m. ******/
DROP INDEX [_dta_index_secContents_15_725577623__K15_K1_K19_K32_K31_K35_K20_2_3_4_5_6_7_8_9_10_11_12_13_14_16_17_18_21_22_23_24_25_26_27_] ON [dbo].[secContents]
GO
DROP INDEX [_dta_index_secContents_15_725577623__K40D_K15_K1_K19_K32_K31_K35_K39_2_3_4_5_6_7_8_9_10_11_12_13_14_16_17_18_20_21_22_23_24_25_] ON [dbo].[secContents]
GO
DROP INDEX [IX_secContents_Features] ON [dbo].[secContents]
GO
DROP INDEX [IX_secContents] ON [dbo].[secContents]
GO

DROP INDEX [IX_Contents_Features] ON [dbo].[secContents]
GO
CREATE NONCLUSTERED INDEX [IX_Contents_Features] ON [dbo].[secContents]
(
	[Title] ASC,
	[Title_ES] ASC,
	[Title_EN] ASC,
	[TextTags] ASC,
	[PublishDate] DESC,
	[GuidContentType] ASC,
	[GuidContent] ASC,
	[IsDeleted] ASC,
	[Published] ASC,
	[ModuleKey],
	[TitleKey] ASC,
	[GuidModule],
	[GuidBusinessObject],
	[GuidFeatureParent],
	[GuidReusableFeatureType],
	[IdContent] ASC
)
INCLUDE (
	[OrderContent],
	[CreatedDate],
	[CreatedUser],
	[UpdatedDate],
	[PropertyName],
	[BusinessObjectKey],
	[UseMode],
	[ActionKey],
	[MenuKey],
	[ForwardType],
	[FormatType],
	DescriptionShort,
	DescriptionShort_ES,
	DescriptionShort_EN,
	[Slug],
	[Slug_EN],
	[Slug_ES],

	Bytes,
	[CreatedBy],
	[UpdatedBy],
	[FieldDataType],
	[RelationType],
	[ShowImageInDetails],
	[RedirectToContent],
	[ImageShowPlace],
	[HeaderScript]) WITH (ONLINE = OFF)
GO


