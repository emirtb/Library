

/************ Update: Tables ***************/

/******************** Update Table: secAppTemplate ************************/

ALTER TABLE dbo.secAppTemplate ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secAppTemplate ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secAppTemplate ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secAudit ************************/

ALTER TABLE dbo.secAudit ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secAudit ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secAudit ADD UpdatedDate DATETIME NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secAudit_FullStatics_Idx ON dbo.secAudit (AuditId, GuidCompany);


/******************** Update Table: secBizObjProperty ************************/

ALTER TABLE dbo.secBizObjProperty ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secBizObjProperty ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secBizObjProperty ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secBizPartner ************************/

ALTER TABLE dbo.secBizPartner ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secBizPartner_FullStatics_Idx ON dbo.secBizPartner (GuidBizPartner, CreatedDate, UpdatedDate, CreatedBy, IsDeleted);


/******************** Update Table: secBizPropertyDescriptions ************************/

/* Remove Indexes */
--DROP INDEX dbo.secBizPropertyDescriptions._dta_index_secBizPropertyDescriptions_15_373576369__K3_K10_K8_K2_1_4_5_6_7_9_11_12_13_14;

ALTER TABLE dbo.secBizPropertyDescriptions ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX _dta_index_secBizPropertyDescriptions_15_373576369__K3_K10_K8_K2_1_4_5_6_7_9_11_12_13_14 ON dbo.secBizPropertyDescriptions (CreatedDate, LongDescription, Name, OwnerComptany, PluralName, GuidBizPropertyDescription, ShortDescription, ShortWarning, UpdatedBy, UpdatedDate, UICulture, ResourceKey, GuidBusinessObject, GuidBizObjProperty);

--CREATE NONCLUSTERED INDEX secBizPropertyDescriptions_FullStatics_Idx ON dbo.secBizPropertyDescriptions (GuidBizPropertyDescription, CreatedDate, UpdatedDate);


/******************** Update Table: secBusinessObject ************************/

ALTER TABLE dbo.secBusinessObject ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secBusinessObject ADD IsCustom BIT DEFAULT 'false' NOT NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secBusinessObject_FullStatics_Idx ON dbo.secBusinessObject (Bytes, UpdatedBy, GuidBusinessObject, CreatedDate, UpdatedDate);


/******************** Update Table: secComModSetting ************************/

ALTER TABLE dbo.secComModSetting ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secComModSetting ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secComModSetting ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secCompAppBizObject ************************/

ALTER TABLE dbo.secCompAppBizObject ALTER COLUMN TotalBytes FLOAT NULL;

ALTER TABLE dbo.secCompAppBizObject ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secCompAppBizObject ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secCompAppBizObject ADD UpdatedDate DATETIME NULL;

ALTER TABLE dbo.secCompAppBizObject ADD TotalBytesDeleted FLOAT NULL;


/******************** Update Table: secCompAppFeature ************************/

ALTER TABLE dbo.secCompAppFeature ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secCompAppFeature ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secCompAppFeature ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secCompAppHistory ************************/

ALTER TABLE dbo.secCompAppHistory ADD TotalUsers INTEGER NULL;

ALTER TABLE dbo.secCompAppHistory ADD TotalCustomRoles INTEGER NULL;

ALTER TABLE dbo.secCompAppHistory ADD TotalFilesGb FLOAT NULL;

ALTER TABLE dbo.secCompAppHistory ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secCompAppHistory ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secCompAppHistory ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secCompModConfig ************************/

ALTER TABLE dbo.secCompModConfig ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secCompModConfig ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secCompModConfig ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secCompanies ************************/

/* Remove Indexes */
--DROP INDEX dbo.secCompanies._dta_index_secCompanies_15_437576597__K6_K9_K2_K3_K4_K14_1_5_7_8_10_11_12_13_15_16_17_18_19;

ALTER TABLE dbo.secCompanies ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX _dta_index_secCompanies_15_437576597__K6_K9_K2_K3_K4_K14_1_5_7_8_10_11_12_13_15_16_17_18_19 ON dbo.secCompanies (CanChildMoreChildren, CanChildsAdminRoles, CreatedBy, Description, GuidCity, GuidCountry, GuidFileLogo, GuidState, IntegrationID, Name, TimeZoneNameID, UpdatedBy, UpdatedDate, CreatedDate, IsDeleted, GuidCompanyType, GuidCompany, CompanyParentGuid, GuidUserOwner);

--CREATE NONCLUSTERED INDEX secCompanies_FullStatics_Idx ON dbo.secCompanies (GuidCompany, CreatedDate, UpdatedDate, CreatedBy, IsDeleted);


/******************** Update Table: secCompanyConfigurations ************************/

ALTER TABLE dbo.secCompanyConfigurations ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secCompanyConfigurations ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secCompanyConfigurations ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secCompanyExtraData ************************/

ALTER TABLE dbo.secCompanyExtraData ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secCompanyExtraData_FullStatics_Idx ON dbo.secCompanyExtraData (Bytes, UpdatedBy, GuidExtraData, CreatedDate, UpdatedDate, CreatedBy, GuidCompany);


/******************** Update Table: secCompanyModules ************************/

ALTER TABLE dbo.secCompanyModules ALTER COLUMN TotalBytes FLOAT NULL;

ALTER TABLE dbo.secCompanyModules ALTER COLUMN TotalDeletedBytes FLOAT NULL;

ALTER TABLE dbo.secCompanyModules ADD StartDate DATETIME NULL;

ALTER TABLE dbo.secCompanyModules ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secCompanyModules ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secCompanyModules ADD UpdatedDate DATETIME NULL;

ALTER TABLE dbo.secCompanyModules ADD TotalUsers INTEGER NULL;

ALTER TABLE dbo.secCompanyModules ADD TotalUserRoles INTEGER NULL;

ALTER TABLE dbo.secCompanyModules ADD TotalAuditCatalogs INTEGER NULL;

ALTER TABLE dbo.secCompanyModules ADD CompanyChildren INTEGER NULL;

ALTER TABLE dbo.secCompanyModules ADD ChildrenTotalBytes FLOAT NULL;

ALTER TABLE dbo.secCompanyModules ADD TotalBytesWithChildren FLOAT NULL;


/******************** Update Table: secCompanyType ************************/

ALTER TABLE dbo.secCompanyType ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secCompanyType ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secCompanyType ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secContentMenus ************************/

ALTER TABLE dbo.secContentMenus ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secContentMenus ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secContentMenus ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secContentRelations ************************/

ALTER TABLE dbo.secContentRelations ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secContentRelations ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secContentRelations ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secContentType ************************/

ALTER TABLE dbo.secContentType ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secContentType ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secContentType ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secContents ************************/

/* Remove Indexes */
--DROP INDEX dbo.secContents._dta_index_secContents_15_725577623__K15_K1_K19_K32_K31_K35_K20_2_3_4_5_6_7_8_9_10_11_12_13_14_16_17_18_21_22_23_24_25_26_27_;

--DROP INDEX dbo.secContents._dta_index_secContents_15_725577623__K40D_K15_K1_K19_K32_K31_K35_K39_2_3_4_5_6_7_8_9_10_11_12_13_14_16_17_18_20_21_22_23_24_25_;

ALTER TABLE dbo.secContents ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX _dta_index_secContents_15_725577623__K15_K1_K19_K32_K31_K35_K20_2_3_4_5_6_7_8_9_10_11_12_13_14_16_17_18_21_22_23_24_25_26_27_ ON dbo.secContents (LargeContent, LargeContent_EN, LargeContent_ES, MenuKey, ModuleKey, OrderContent, PropertyName, PublishDate, Published, RedirectToContent, RelationType, ShowImageInDetails, Slug, Slug_EN, Slug_ES, Title, Title_EN, Title_ES, TitleKey, UpdatedBy, UpdatedDate, UseMode, ActionKey, BusinessObjectKey, CreatedBy, CreatedDate, CreatedUser, DescriptionShort, DescriptionShort_EN, DescriptionShort_ES, FieldDataType, FormatType, ForwardType, GuidBusinessObject, HeaderScript, IdContent, ImageShowPlace, GuidContentType, GuidContent, GuidFile, GuidFile_EN, GuidFile_ES, IsDeleted, GuidModule);

--CREATE NONCLUSTERED INDEX _dta_index_secContents_15_725577623__K40D_K15_K1_K19_K32_K31_K35_K39_2_3_4_5_6_7_8_9_10_11_12_13_14_16_17_18_20_21_22_23_24_25_ ON dbo.secContents (ActionKey, BusinessObjectKey, CreatedBy, CreatedDate, CreatedUser, DescriptionShort, DescriptionShort_EN, DescriptionShort_ES, FieldDataType, FormatType, ForwardType, GuidBusinessObject, GuidModule, HeaderScript, IdContent, ImageShowPlace, RedirectToContent, RelationType, ShowImageInDetails, Slug, Slug_EN, Slug_ES, Title, Title_EN, Title_ES, TitleKey, UpdatedBy, UpdatedDate, UseMode, LargeContent, LargeContent_EN, LargeContent_ES, MenuKey, ModuleKey, OrderContent, PropertyName, PublishDate, GuidContentType, GuidContent, GuidFile, GuidFile_EN, GuidFile_ES, IsDeleted, Published);

--CREATE NONCLUSTERED INDEX secContents_FullStatics_Idx ON dbo.secContents (GuidContent, CreatedDate, UpdatedDate, CreatedBy, IsDeleted);


/******************** Update Table: secCoupon ************************/

ALTER TABLE dbo.secCoupon ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secCoupon_FullStatics_Idx ON dbo.secCoupon (GuidCoupon, CreatedDate, UpdatedDate, CreatedBy, IsDeleted);


/******************** Update Table: secDataColumn ************************/

ALTER TABLE dbo.secDataColumn ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secDataColumn ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secDataColumn ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secEventApp ************************/

ALTER TABLE dbo.secEventApp ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secEventApp ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secEventApp ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secEventLog ************************/

ALTER TABLE dbo.secEventLog ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secEventLog ADD UpdatedDate DATETIME NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secEventLog_FullStatics_Idx ON dbo.secEventLog (GuidMyEventLog, CreatedDate, CreatedBy);


/******************** Update Table: secEventNotify ************************/

ALTER TABLE dbo.secEventNotify ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secEventNotify ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secEventNotify ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secEventNotifyTos ************************/

ALTER TABLE dbo.secEventNotifyTos ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secEventNotifyTos ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secEventNotifyTos ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secFeatureConcepts ************************/

ALTER TABLE dbo.secFeatureConcepts ADD Price_USD MONEY NULL;

ALTER TABLE dbo.secFeatureConcepts ADD Price_MXN MONEY NULL;

ALTER TABLE dbo.secFeatureConcepts ADD Price MONEY NULL;

ALTER TABLE dbo.secFeatureConcepts ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secFeatureConcepts ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secFeatureConcepts ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secFeaurePrices ************************/

ALTER TABLE dbo.secFeaurePrices ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secFeaurePrices ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secFeaurePrices ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secFiles ************************/

ALTER TABLE dbo.secFiles ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secFiles ADD UpdatedDate DATETIME NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secFiles_FullStatics_Idx ON dbo.secFiles (Bytes, UpdatedBy, GuidFile, CreatedDate, CreatedBy, GuidCompany, IsDeleted);


/******************** Update Table: secFilterQueries ************************/

ALTER TABLE dbo.secFilterQueries ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secFilterQueries_FullStatics_Idx ON dbo.secFilterQueries (GuidFilterQuery, CreatedDate, UpdatedDate, CreatedBy, GuidCompany);


/******************** Update Table: secGeoCities ************************/

ALTER TABLE dbo.secGeoCities ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secGeoCities ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secGeoCities ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secGeoCountries ************************/

ALTER TABLE dbo.secGeoCountries ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secGeoCountries ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secGeoCountries ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secGeoStates ************************/

ALTER TABLE dbo.secGeoStates ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secGeoStates ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secGeoStates ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secInvoice ************************/

ALTER TABLE dbo.secInvoice ADD Calculated BIT NULL;

ALTER TABLE dbo.secInvoice ADD GuidModule UniqueIdentifier NULL;

ALTER TABLE dbo.secInvoice ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secInvoice ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secInvoice ADD UpdatedDate DATETIME NULL;

ALTER TABLE dbo.secInvoice ADD TotalDiscount MONEY NULL;


/******************** Update Table: secInvoiceDetail ************************/

ALTER TABLE dbo.secInvoiceDetail ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secInvoiceDetail ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secInvoiceDetail ADD UpdatedDate DATETIME NULL;

ALTER TABLE dbo.secInvoiceDetail ADD DiscountPercent DECIMAL(10, 2) NULL;


/******************** Update Table: secIssueRelation ************************/

ALTER TABLE dbo.secIssueRelation ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secIssueRelation ADD UpdatedDate DATETIME NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secIssueRelation_FullStatics_Idx ON dbo.secIssueRelation (GuidIssueRelation, CreatedDate, CreatedBy, IsDeleted);


/******************** Update Table: secIssueVotes ************************/

ALTER TABLE dbo.secIssueVotes ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secIssueVotes ADD UpdatedDate DATETIME NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secIssueVotes_FullStatics_Idx ON dbo.secIssueVotes (GuidIssueVote, CreatedDate, CreatedBy);


/******************** Update Table: secIssues ************************/

ALTER TABLE dbo.secIssues ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secIssues_FullStatics_Idx ON dbo.secIssues (GuidIssue, CreatedDate, UpdatedDate, CreatedBy, IsDeleted);


/******************** Update Table: secLoginProviders ************************/

ALTER TABLE dbo.secLoginProviders ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secLoginProviders ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secLoginProviders ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secMemLevelFeatures ************************/

ALTER TABLE dbo.secMemLevelFeatures ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secMemLevelFeatures ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secMemLevelFeatures ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secMemberModuleComp ************************/

ALTER TABLE dbo.secMemberModuleComp ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secMemberModuleComp_FullStatics_Idx ON dbo.secMemberModuleComp (GuidMemberModuleComp, CreatedDate, UpdatedDate, CreatedBy, IsDeleted);


/******************** Update Table: secMemberModuleCompCover ************************/

ALTER TABLE dbo.secMemberModuleCompCover ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secMemberModuleCompCover_FullStatics_Idx ON dbo.secMemberModuleCompCover (GuidMemModuleCompCover, CreatedDate, UpdatedDate, CreatedBy);


/******************** Update Table: secMembershipLevel ************************/

ALTER TABLE dbo.secMembershipLevel ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secMembershipLevel_FullStatics_Idx ON dbo.secMembershipLevel (Bytes, UpdatedBy, GuidMembershipLevel, CreatedDate, UpdatedDate, CreatedBy);


/******************** Update Table: secMembershipModule ************************/

ALTER TABLE dbo.secMembershipModule ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secMembershipModule_FullStatics_Idx ON dbo.secMembershipModule (Bytes, UpdatedBy, GuidMembershipModule, CreatedDate, UpdatedDate, CreatedBy);


/******************** Update Table: secMenuForms ************************/

ALTER TABLE dbo.secMenuForms ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secMenuForms ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secMenuForms ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secMessageNotificationTemplates ************************/

ALTER TABLE dbo.secMessageNotificationTemplates ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secMessageNotificationTemplates_FullStatics_Idx ON dbo.secMessageNotificationTemplates (Bytes, UpdatedBy, GuidMessageTemplate, CreatedDate, UpdatedDate, CreatedBy, GuidCompany, IsDeleted);


/******************** Update Table: secMessageNotifications ************************/

ALTER TABLE dbo.secMessageNotifications ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secMessageNotifications ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secMessageNotifications ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secMessageToUsers ************************/

ALTER TABLE dbo.secMessageToUsers ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secMessageToUsers ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secMessageToUsers ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secMessages ************************/

ALTER TABLE dbo.secMessages ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secMessages ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secMessages ADD UpdatedDate DATETIME NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secMessages_FullStatics_Idx ON dbo.secMessages (GuidMessage, IsDeleted);


/******************** Update Table: secModComOptions ************************/

ALTER TABLE dbo.secModComOptions ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secModComOptions ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secModComOptions ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secModule ************************/

ALTER TABLE dbo.secModule ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secModule ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secModule ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secModuleObjectPermission ************************/

ALTER TABLE dbo.secModuleObjectPermission ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secModuleObjectPermission ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secModuleObjectPermission ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secModuleOptions ************************/

ALTER TABLE dbo.secModuleOptions ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secModuleOptions ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secModuleOptions ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secModuleSettings ************************/

ALTER TABLE dbo.secModuleSettings ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secModuleSettings ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secModuleSettings ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secMoneyMovementTypes ************************/

ALTER TABLE dbo.secMoneyMovementTypes ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secMoneyMovementTypes ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secMoneyMovementTypes ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secMoneyMovements ************************/

ALTER TABLE dbo.secMoneyMovements ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secMoneyMovements_FullStatics_Idx ON dbo.secMoneyMovements (GuidMovement, CreatedDate, UpdatedDate, CreatedBy);


/******************** Update Table: secMoneyPayments ************************/

ALTER TABLE dbo.secMoneyPayments ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secMoneyPayments ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secMoneyPayments ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secPaymentMethods ************************/

ALTER TABLE dbo.secPaymentMethods ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secPaymentMethods ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secPaymentMethods ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secPermission ************************/

ALTER TABLE dbo.secPermission ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secPermission ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secPermission ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secProcessQueue ************************/

/* Remove Indexes */
--DROP INDEX dbo.secProcessQueue._dta_index_secProcessQueue_23_2133582639__K2_K14_K7_1_3_4_5_6_8_9_10_11_12_13_15;

ALTER TABLE dbo.secProcessQueue ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX _dta_index_secProcessQueue_23_2133582639__K2_K14_K7_1_3_4_5_6_8_9_10_11_12_13_15 ON dbo.secProcessQueue (CreatedDate, Description, EndDateTime, GuidCompany, GuidsecProcessQueue, IdProcess, PercentCompleted, StartDateTime, Title, TypeResult, UpdatedBy, UpdatedDate, CreatedBy, Finished, IsDeleted);

--CREATE NONCLUSTERED INDEX secProcessQueue_FullStatics_Idx ON dbo.secProcessQueue (GuidsecProcessQueue, CreatedDate, UpdatedDate, CreatedBy, GuidCompany, IsDeleted);


/******************** Update Table: secProfile ************************/

ALTER TABLE dbo.secProfile ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secProfile ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secProfile ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secReusableCatalogValues ************************/

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secReusableCatalogValues_ValueString_GuidReusableCatalogValue_GuidReusableCatalog_Idx ON dbo.secReusableCatalogValues (ValueString, GuidReusableCatalogValue, GuidReusableCatalog);


/******************** Update Table: secRoleDataPermission ************************/

ALTER TABLE dbo.secRoleDataPermission ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secRoleDataPermission ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secRoleDataPermission ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secRoleModuleObjectPermission ************************/

ALTER TABLE dbo.secRoleModuleObjectPermission ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secRoleModuleObjectPermission_FullStatics_Idx ON dbo.secRoleModuleObjectPermission (GuidModule, CreatedDate, UpdatedDate, CreatedBy);


/******************** Update Table: secRoleModulePermissions ************************/

ALTER TABLE dbo.secRoleModulePermissions ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secRoleModulePermissions_FullStatics_Idx ON dbo.secRoleModulePermissions (GuidModule, CreatedDate, UpdatedDate, CreatedBy);


/******************** Update Table: secRoles ************************/

ALTER TABLE dbo.secRoles ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secRoles_FullStatics_Idx ON dbo.secRoles (GuidRole, CreatedDate, UpdatedDate, CreatedBy, IsDeleted);


/******************** Update Table: secSetting ************************/

ALTER TABLE dbo.secSetting ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secSetting ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secSetting ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secSettingValue ************************/

ALTER TABLE dbo.secSettingValue ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secSettingValue ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secSettingValue ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secSyncIntegrator ************************/

ALTER TABLE dbo.secSyncIntegrator ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secSyncIntegrator ADD UpdatedDate DATETIME NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secSyncIntegrator_FullStatics_Idx ON dbo.secSyncIntegrator (GuidSyncIntegrator, CreatedDate, CreatedBy);


/******************** Update Table: secSyncItems ************************/

ALTER TABLE dbo.secSyncItems ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secSyncItems ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secSyncItems ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secSyncMatchDef ************************/

ALTER TABLE dbo.secSyncMatchDef ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secSyncMatchDef_FullStatics_Idx ON dbo.secSyncMatchDef (GuidSyncMatchDef, CreatedDate, UpdatedDate, CreatedBy);


/******************** Update Table: secSyncMatchDefObjects ************************/

ALTER TABLE dbo.secSyncMatchDefObjects ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secSyncMatchDefObjects ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secSyncMatchDefObjects ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secSyncMatchDefProps ************************/

ALTER TABLE dbo.secSyncMatchDefProps ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secSyncMatchDefProps ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secSyncMatchDefProps ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secSyncMatchProperty ************************/

ALTER TABLE dbo.secSyncMatchProperty ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secSyncMatchProperty ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secSyncMatchProperty ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secTags ************************/

ALTER TABLE dbo.secTags ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secTags ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secTags ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secTask ************************/

ALTER TABLE dbo.secTask ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secTask_FullStatics_Idx ON dbo.secTask (GuidTask, CreatedDate, UpdatedDate, CreatedBy);


/******************** Update Table: secTaskHistory ************************/

ALTER TABLE dbo.secTaskHistory ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secTaskHistory ADD UpdatedDate DATETIME NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secTaskHistory_FullStatics_Idx ON dbo.secTaskHistory (GuidTaskHistory, CreatedDate, CreatedBy);


/******************** Update Table: secUserCompanies ************************/

ALTER TABLE dbo.secUserCompanies ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secUserCompanies ADD UpdatedDate DATETIME NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secUserCompanies_FullStatics_Idx ON dbo.secUserCompanies (GuidUserCompany, CreatedDate, CreatedBy, GuidCompany, IsDeleted);


/******************** Update Table: secUserConfigurations ************************/

ALTER TABLE dbo.secUserConfigurations ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secUserConfigurations ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secUserConfigurations ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secUserPayments ************************/

ALTER TABLE dbo.secUserPayments ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secUserPayments_FullStatics_Idx ON dbo.secUserPayments (GuidUserPayment, CreatedDate, UpdatedDate, CreatedBy, GuidCompany);


/******************** Update Table: secUser_LoginProviders ************************/

ALTER TABLE dbo.secUser_LoginProviders ADD Bytes INTEGER NULL;

ALTER TABLE dbo.secUser_LoginProviders ADD CreatedDate DATETIME NULL;

ALTER TABLE dbo.secUser_LoginProviders ADD UpdatedDate DATETIME NULL;


/******************** Update Table: secUsers ************************/

ALTER TABLE dbo.secUsers ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secUsers_FullStatics_Idx ON dbo.secUsers (GuidUser, CreatedDate, UpdatedDate, CreatedBy);


/******************** Update Table: secWFActivity ************************/

ALTER TABLE dbo.secWFActivity ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secWFActivity_FullStatics_Idx ON dbo.secWFActivity (GuidWFActivity, CreatedDate, UpdatedDate, CreatedBy, IsDeleted);


/******************** Update Table: secWFActivityUserLog ************************/

ALTER TABLE dbo.secWFActivityUserLog ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secWFActivityUserLog_FullStatics_Idx ON dbo.secWFActivityUserLog (GuidWFActivityUserLog, CreatedDate, UpdatedDate, CreatedBy, GuidCompany, IsDeleted);


/******************** Update Table: secWFActivityUsers ************************/

ALTER TABLE dbo.secWFActivityUsers ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secWFActivityUsers_FullStatics_Idx ON dbo.secWFActivityUsers (GuidWFActivityUser, CreatedDate, UpdatedDate, CreatedBy, GuidCompany, IsDeleted);


/******************** Update Table: secWFProcess ************************/

ALTER TABLE dbo.secWFProcess ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secWFProcess_FullStatics_Idx ON dbo.secWFProcess (GuidProcess, CreatedDate, UpdatedDate, CreatedBy, IsDeleted);


/******************** Update Table: secWFStates ************************/

ALTER TABLE dbo.secWFStates ADD Bytes INTEGER NULL;

/* Add Indexes */
--CREATE NONCLUSTERED INDEX secWFStates_FullStatics_Idx ON dbo.secWFStates (GuidWFState, CreatedDate, UpdatedDate, CreatedBy, IsDeleted);





/************ Add Foreign Keys ***************/

/* Add Foreign Key: fk_secInvoice_secModule */
ALTER TABLE dbo.secInvoice ADD CONSTRAINT fk_secInvoice_secModule
	FOREIGN KEY (GuidModule) REFERENCES dbo.secModule (GuidModule)
	ON UPDATE NO ACTION ON DELETE NO ACTION;