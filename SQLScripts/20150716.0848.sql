/* Add Indexes */
CREATE NONCLUSTERED INDEX secEventLog_CreatedDate_GuidCompanyLog_Idx ON dbo.secEventLog (GuidCompanyLog, CreatedDate desc);
/* Remove Indexes */
