 
 
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secBusinessObject' and i.name = 'secBusinessObject_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secBusinessObject_FullStatics_Idx 
    on dbo.secBusinessObject ( 
GuidBusinessObject 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secCompanyConfigurations' and i.name = 'secCompanyConfigurations_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secCompanyConfigurations_FullStatics_Idx 
    on dbo.secCompanyConfigurations ( 
GuidCompany 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secCompanyExtraData' and i.name = 'secCompanyExtraData_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secCompanyExtraData_FullStatics_Idx 
    on dbo.secCompanyExtraData ( 
GuidExtraData 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,GuidCompany 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secCompanyType' and i.name = 'secCompanyType_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secCompanyType_FullStatics_Idx 
    on dbo.secCompanyType ( 
GuidCompanyType 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secContentMenus' and i.name = 'secContentMenus_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secContentMenus_FullStatics_Idx 
    on dbo.secContentMenus ( 
GuidContentMenu 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secContentRelations' and i.name = 'secContentRelations_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secContentRelations_FullStatics_Idx 
    on dbo.secContentRelations ( 
GuidContentsRelation 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secContentType' and i.name = 'secContentType_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secContentType_FullStatics_Idx 
    on dbo.secContentType ( 
GuidContentType 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secDataColumn' and i.name = 'secDataColumn_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secDataColumn_FullStatics_Idx 
    on dbo.secDataColumn ( 
GuidDataColumn 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secFiles' and i.name = 'secFiles_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secFiles_FullStatics_Idx 
    on dbo.secFiles ( 
GuidFile 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,GuidCompany 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secGeoCountries' and i.name = 'secGeoCountries_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secGeoCountries_FullStatics_Idx 
    on dbo.secGeoCountries ( 
GuidCountry 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secLoginProviders' and i.name = 'secLoginProviders_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secLoginProviders_FullStatics_Idx 
    on dbo.secLoginProviders ( 
GuidLoginProvider 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMembershipLevel' and i.name = 'secMembershipLevel_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMembershipLevel_FullStatics_Idx 
    on dbo.secMembershipLevel ( 
GuidMembershipLevel 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMembershipModule' and i.name = 'secMembershipModule_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMembershipModule_FullStatics_Idx 
    on dbo.secMembershipModule ( 
GuidMembershipModule 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMenuForms' and i.name = 'secMenuForms_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMenuForms_FullStatics_Idx 
    on dbo.secMenuForms ( 
GuidForm 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMessageNotifications' and i.name = 'secMessageNotifications_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMessageNotifications_FullStatics_Idx 
    on dbo.secMessageNotifications ( 
GuidMessageNotification 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMessageNotificationTemplates' and i.name = 'secMessageNotificationTemplates_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMessageNotificationTemplates_FullStatics_Idx 
    on dbo.secMessageNotificationTemplates ( 
GuidMessageTemplate 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,GuidCompany 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMessages' and i.name = 'secMessages_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMessages_FullStatics_Idx 
    on dbo.secMessages ( 
GuidMessage 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMessageToUsers' and i.name = 'secMessageToUsers_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMessageToUsers_FullStatics_Idx 
    on dbo.secMessageToUsers ( 
GuidMessageToUser 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secModule' and i.name = 'secModule_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secModule_FullStatics_Idx 
    on dbo.secModule ( 
GuidModule 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secModuleObjectPermission' and i.name = 'secModuleObjectPermission_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secModuleObjectPermission_FullStatics_Idx 
    on dbo.secModuleObjectPermission ( 
GuidModule 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMoneyMovementTypes' and i.name = 'secMoneyMovementTypes_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMoneyMovementTypes_FullStatics_Idx 
    on dbo.secMoneyMovementTypes ( 
GuidMoneyMovementType 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMoneyPayments' and i.name = 'secMoneyPayments_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMoneyPayments_FullStatics_Idx 
    on dbo.secMoneyPayments ( 
GuidPaymentType 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secPaymentMethods' and i.name = 'secPaymentMethods_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secPaymentMethods_FullStatics_Idx 
    on dbo.secPaymentMethods ( 
GuidPaymentMethod 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secPermission' and i.name = 'secPermission_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secPermission_FullStatics_Idx 
    on dbo.secPermission ( 
GuidPermission 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secProfile' and i.name = 'secProfile_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secProfile_FullStatics_Idx 
    on dbo.secProfile ( 
GuidUser 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secRoleDataPermission' and i.name = 'secRoleDataPermission_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secRoleDataPermission_FullStatics_Idx 
    on dbo.secRoleDataPermission ( 
GuidRole 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secRoleModuleObjectPermission' and i.name = 'secRoleModuleObjectPermission_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secRoleModuleObjectPermission_FullStatics_Idx 
    on dbo.secRoleModuleObjectPermission ( 
GuidModule 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secRoleModulePermissions' and i.name = 'secRoleModulePermissions_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secRoleModulePermissions_FullStatics_Idx 
    on dbo.secRoleModulePermissions ( 
GuidModule 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secTags' and i.name = 'secTags_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secTags_FullStatics_Idx 
    on dbo.secTags ( 
GuidTag 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secUser_LoginProviders' and i.name = 'secUser_LoginProviders_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secUser_LoginProviders_FullStatics_Idx 
    on dbo.secUser_LoginProviders ( 
GuidUserLoginProvider 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secUserConfigurations' and i.name = 'secUserConfigurations_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secUserConfigurations_FullStatics_Idx 
    on dbo.secUserConfigurations ( 
GuidUser 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secUserPayments' and i.name = 'secUserPayments_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secUserPayments_FullStatics_Idx 
    on dbo.secUserPayments ( 
GuidUserPayment 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,GuidCompany 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMemberModuleComp' and i.name = 'secMemberModuleComp_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMemberModuleComp_FullStatics_Idx 
    on dbo.secMemberModuleComp ( 
GuidMemberModuleComp 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMemberModuleCompCover' and i.name = 'secMemberModuleCompCover_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMemberModuleCompCover_FullStatics_Idx 
    on dbo.secMemberModuleCompCover ( 
GuidMemModuleCompCover 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secAudit' and i.name = 'secAudit_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secAudit_FullStatics_Idx 
    on dbo.secAudit ( 
AuditId 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,GuidCompany 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secProcessQueue' and i.name = 'secProcessQueue_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secProcessQueue_FullStatics_Idx 
    on dbo.secProcessQueue ( 
GuidsecProcessQueue 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,GuidCompany 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secRoles' and i.name = 'secRoles_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secRoles_FullStatics_Idx 
    on dbo.secRoles ( 
GuidRole 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secBizPartner' and i.name = 'secBizPartner_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secBizPartner_FullStatics_Idx 
    on dbo.secBizPartner ( 
GuidBizPartner 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secCoupon' and i.name = 'secCoupon_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secCoupon_FullStatics_Idx 
    on dbo.secCoupon ( 
GuidCoupon 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMoneyMovements' and i.name = 'secMoneyMovements_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMoneyMovements_FullStatics_Idx 
    on dbo.secMoneyMovements ( 
GuidMovement 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secUsers' and i.name = 'secUsers_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secUsers_FullStatics_Idx 
    on dbo.secUsers ( 
GuidUser 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secUserCompanies' and i.name = 'secUserCompanies_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secUserCompanies_FullStatics_Idx 
    on dbo.secUserCompanies ( 
GuidUserCompany 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,GuidCompany 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secFilterQueries' and i.name = 'secFilterQueries_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secFilterQueries_FullStatics_Idx 
    on dbo.secFilterQueries ( 
GuidFilterQuery 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,GuidCompany 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secModComOptions' and i.name = 'secModComOptions_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secModComOptions_FullStatics_Idx 
    on dbo.secModComOptions ( 
GuidModCompOption 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,GuidCompany 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secModuleOptions' and i.name = 'secModuleOptions_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secModuleOptions_FullStatics_Idx 
    on dbo.secModuleOptions ( 
GuidModuleOption 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secGeoCities' and i.name = 'secGeoCities_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secGeoCities_FullStatics_Idx 
    on dbo.secGeoCities ( 
GuidCity 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secGeoStates' and i.name = 'secGeoStates_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secGeoStates_FullStatics_Idx 
    on dbo.secGeoStates ( 
GuidState 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secCompanies' and i.name = 'secCompanies_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secCompanies_FullStatics_Idx 
    on dbo.secCompanies ( 
GuidCompany 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secEventApp' and i.name = 'secEventApp_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secEventApp_FullStatics_Idx 
    on dbo.secEventApp ( 
GuidEventApp 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secEventNotify' and i.name = 'secEventNotify_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secEventNotify_FullStatics_Idx 
    on dbo.secEventNotify ( 
GuidEventNotify 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,GuidCompany 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secEventNotifyTos' and i.name = 'secEventNotifyTos_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secEventNotifyTos_FullStatics_Idx 
    on dbo.secEventNotifyTos ( 
GuidEventNotifyTo 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secFeaurePrices' and i.name = 'secFeaurePrices_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secFeaurePrices_FullStatics_Idx 
    on dbo.secFeaurePrices ( 
GuidFeaturePrice 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secMemLevelFeatures' and i.name = 'secMemLevelFeatures_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secMemLevelFeatures_FullStatics_Idx 
    on dbo.secMemLevelFeatures ( 
GuidMemLevelFeature 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secFeatureConcepts' and i.name = 'secFeatureConcepts_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secFeatureConcepts_FullStatics_Idx 
    on dbo.secFeatureConcepts ( 
GuidFeatureConcept 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secContents' and i.name = 'secContents_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secContents_FullStatics_Idx 
    on dbo.secContents ( 
GuidContent 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secIssues' and i.name = 'secIssues_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secIssues_FullStatics_Idx 
    on dbo.secIssues ( 
GuidIssue 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secIssueVotes' and i.name = 'secIssueVotes_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secIssueVotes_FullStatics_Idx 
    on dbo.secIssueVotes ( 
GuidIssueVote 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secIssueRelation' and i.name = 'secIssueRelation_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secIssueRelation_FullStatics_Idx 
    on dbo.secIssueRelation ( 
GuidIssueRelation 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secBizObjProperty' and i.name = 'secBizObjProperty_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secBizObjProperty_FullStatics_Idx 
    on dbo.secBizObjProperty ( 
GuidBizObjProperty 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secEventLog' and i.name = 'secEventLog_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secEventLog_FullStatics_Idx 
    on dbo.secEventLog ( 
GuidMyEventLog 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secSyncMatchProperty' and i.name = 'secSyncMatchProperty_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secSyncMatchProperty_FullStatics_Idx 
    on dbo.secSyncMatchProperty ( 
GuidSyncMatchProp 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secSyncItems' and i.name = 'secSyncItems_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secSyncItems_FullStatics_Idx 
    on dbo.secSyncItems ( 
GuidSyncItem 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secSyncMatchDefObjects' and i.name = 'secSyncMatchDefObjects_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secSyncMatchDefObjects_FullStatics_Idx 
    on dbo.secSyncMatchDefObjects ( 
GuidSyncMatchDefObject 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secSyncMatchDefProps' and i.name = 'secSyncMatchDefProps_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secSyncMatchDefProps_FullStatics_Idx 
    on dbo.secSyncMatchDefProps ( 
GuidSyncMacthDefProp 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secSyncIntegrator' and i.name = 'secSyncIntegrator_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secSyncIntegrator_FullStatics_Idx 
    on dbo.secSyncIntegrator ( 
GuidSyncIntegrator 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secSyncMatchDef' and i.name = 'secSyncMatchDef_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secSyncMatchDef_FullStatics_Idx 
    on dbo.secSyncMatchDef ( 
GuidSyncMatchDef 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secWFActivity' and i.name = 'secWFActivity_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secWFActivity_FullStatics_Idx 
    on dbo.secWFActivity ( 
GuidWFActivity 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secWFProcess' and i.name = 'secWFProcess_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secWFProcess_FullStatics_Idx 
    on dbo.secWFProcess ( 
GuidProcess 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secWFStates' and i.name = 'secWFStates_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secWFStates_FullStatics_Idx 
    on dbo.secWFStates ( 
GuidWFState 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secWFActivityUsers' and i.name = 'secWFActivityUsers_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secWFActivityUsers_FullStatics_Idx 
    on dbo.secWFActivityUsers ( 
GuidWFActivityUser 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,GuidCompany 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secWFActivityUserLog' and i.name = 'secWFActivityUserLog_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secWFActivityUserLog_FullStatics_Idx 
    on dbo.secWFActivityUserLog ( 
GuidWFActivityUserLog 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
		,GuidCompany 
		,IsDeleted desc
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secBizPropertyDescriptions' and i.name = 'secBizPropertyDescriptions_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secBizPropertyDescriptions_FullStatics_Idx 
    on dbo.secBizPropertyDescriptions ( 
GuidBizPropertyDescription 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secCompModConfig' and i.name = 'secCompModConfig_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secCompModConfig_FullStatics_Idx 
    on dbo.secCompModConfig ( 
GuidCompModConfig 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secSettingValue' and i.name = 'secSettingValue_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secSettingValue_FullStatics_Idx 
    on dbo.secSettingValue ( 
GuidSettingVaue 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secComModSetting' and i.name = 'secComModSetting_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secComModSetting_FullStatics_Idx 
    on dbo.secComModSetting ( 
GuidCompModSetting 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secSetting' and i.name = 'secSetting_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secSetting_FullStatics_Idx 
    on dbo.secSetting ( 
GuidSetting 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secModuleSettings' and i.name = 'secModuleSettings_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secModuleSettings_FullStatics_Idx 
    on dbo.secModuleSettings ( 
GuidModuleSetting 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secAppTemplate' and i.name = 'secAppTemplate_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secAppTemplate_FullStatics_Idx 
    on dbo.secAppTemplate ( 
GuidAppTemplate 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secTaskHistory' and i.name = 'secTaskHistory_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secTaskHistory_FullStatics_Idx 
    on dbo.secTaskHistory ( 
GuidTaskHistory 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secTask' and i.name = 'secTask_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secTask_FullStatics_Idx 
    on dbo.secTask ( 
GuidTask 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,CreatedBy 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secCompAppHistory' and i.name = 'secCompAppHistory_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secCompAppHistory_FullStatics_Idx 
    on dbo.secCompAppHistory ( 
GuidCompAppHistory 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secCompAppFeature' and i.name = 'secCompAppFeature_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secCompAppFeature_FullStatics_Idx 
    on dbo.secCompAppFeature ( 
GuidCompAppFeature 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,GuidCompany 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secInvoice' and i.name = 'secInvoice_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secInvoice_FullStatics_Idx 
    on dbo.secInvoice ( 
GuidInvoice 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,GuidCompany 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secInvoiceDetail' and i.name = 'secInvoiceDetail_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secInvoiceDetail_FullStatics_Idx 
    on dbo.secInvoiceDetail ( 
GuidInvoiceDetail 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secCompanyModules' and i.name = 'secCompanyModules_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secCompanyModules_FullStatics_Idx 
    on dbo.secCompanyModules ( 
GuidCompanyModule 

        ,CreatedDate desc 

	,UpdatedDate desc 
		,GuidCompany 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    INNER JOIN sys.indexes i on i.object_id = t.object_id
    WHERE s.name = 'dbo' AND t.name = 'secCompAppBizObject' and i.name = 'secCompAppBizObject_FullStatics_Idx'
) 
    CREATE NONCLUSTERED INDEX secCompAppBizObject_FullStatics_Idx 
    on dbo.secCompAppBizObject ( 
GuidCompAppBizObject 

        ,CreatedDate desc 

	,UpdatedDate desc 
    ) 
	
	INCLUDE(Bytes)
	WITH (ONLINE = ON)

