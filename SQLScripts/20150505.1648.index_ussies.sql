SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [_dta_index_secProcessQueue_23_2133582639__K2_K14_K7_1_3_4_5_6_8_9_10_11_12_13_15] ON [dbo].[secProcessQueue]
(
	[CreatedBy] ASC,
	[Finished] ASC,
	[IsDeleted] ASC
)
INCLUDE ( 	[GuidsecProcessQueue],
	[UpdatedBy],
	[CreatedDate],
	[UpdatedDate],
	[GuidCompany],
	[StartDateTime],
	[EndDateTime],
	[Description],
	[IdProcess],
	[PercentCompleted],
	[Title],
	[TypeResult]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]

SET ANSI_PADDING ON
CREATE NONCLUSTERED INDEX [_dta_index_secIssues_23_1333579789__K6] ON [dbo].[secIssues]
(
	[IsDeleted] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]



/* Remove Indexes */
DROP INDEX dbo.secIssues.dta_index_secIssues_full_sql_recomendation;

/* Add Indexes */


/************ Update: Tables ***************/

/******************** Update Table: secIssues ************************/

/* Add Indexes */
CREATE NONCLUSTERED INDEX dta_index_secIssues_full_sql_recomendation ON dbo.secIssues (CreatedDate, UpdatedDate, CreatedBy, UpdatedBy, GuidUserAsigned, [Public], Num, CommentOfIssue, [Priority], IsDeleted, GuidBusinessObject, GuidIssue, GuidModule, GuidIssueLevel, GuidIssueType, GuidStatus);