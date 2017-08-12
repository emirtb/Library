CREATE NONCLUSTERED INDEX IX_secContents ON dbo.secContents
(
	GuidContent,
	BusinessObjectKey,
	CreatedDate DESC,
	GuidContentType,
	IdContent,
	OrderContent,
	PublishDate DESC,
	Title,
	Published,
	TitleKey,
	GuidModule,
	GuidReusableFeatureType,
	GuidFeatureParent
) INCLUDE (Title_EN,Title_ES)
WITH (ONLINE = ON)