/* Add Indexes */
CREATE UNIQUE NONCLUSTERED INDEX secUsers_GuidUser_IsDeleted_Token_Idx ON dbo.secUsers (GuidUser, IsDeleted, Token);

CREATE NONCLUSTERED INDEX secUsers_UserName_LastName_FirstName_Email_GuidUser_IsDeleted_Token_Idx ON dbo.secUsers (UserName, LastName, FirstName, Email, GuidUser, IsDeleted, Token);


