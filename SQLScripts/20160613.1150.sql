
/* Add Indexes */
CREATE NONCLUSTERED INDEX _dta_index_secBizPropertyDescriptions_15_373576369__K3_K10_K8_K2_1_4_5_6_7_9_11_12_13_14 ON dbo.secBizPropertyDescriptions (CreatedDate, GuidBizPropertyDescription, LongDescription, Name, OwnerComptany, PluralName, UpdatedBy, UpdatedDate, ShortDescription, ShortWarning, UICulture, ResourceKey, GuidBusinessObject, GuidBizObjProperty);



ALTER TABLE dbo.secCompanies ADD NameKey VARCHAR(100) NULL;


/* Add Indexes */
CREATE NONCLUSTERED INDEX _dta_index_secCompanies_15_437576597__K6_K9_K2_K3_K4_K14_1_5_7_8_10_11_12_13_15_16_17_18_19 ON dbo.secCompanies (CanChildMoreChildren, CanChildsAdminRoles, CreatedBy, Description, GuidCity, GuidCountry, GuidFileLogo, GuidState, IntegrationID, Name, TimeZoneNameID, UpdatedBy, UpdatedDate, CreatedDate, IsDeleted, GuidCompanyType, GuidCompany, CompanyParentGuid, GuidUserOwner);

CREATE NONCLUSTERED INDEX secCompanies_NameKey ON dbo.secCompanies (GuidCompany, NameKey, CustomDomain);


/* Add Indexes */
CREATE NONCLUSTERED INDEX _dta_index_secProcessQueue_23_2133582639__K2_K14_K7_1_3_4_5_6_8_9_10_11_12_13_15 ON dbo.secProcessQueue (CreatedDate, Description, EndDateTime, PercentCompleted, StartDateTime, Title, TypeResult, UpdatedBy, UpdatedDate, GuidCompany, GuidsecProcessQueue, IdProcess, CreatedBy, Finished, IsDeleted);