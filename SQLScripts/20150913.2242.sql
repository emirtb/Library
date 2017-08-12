
/****** Object:  Index [secUsers_FreeText_Idx]    Script Date: 13/09/2015 10:39:18 p. m. ******/
DROP INDEX [secUsers_FreeText_Idx] ON [dbo].[secUsers]
GO

/****** Object:  Index [secUsers_FreeText_Idx]    Script Date: 13/09/2015 10:39:18 p. m. ******/
CREATE NONCLUSTERED INDEX [secUsers_FreeText_Idx] ON [dbo].[secUsers]
(
	[GuidUser] ASC,
	[UserName] ASC,
	[Email] ASC,
	[FirstName] ASC,
	[LastName] ASC,
	[UpdatedDate] DESC
)
WITH (ONLINE = OFF)
GO


