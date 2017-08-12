
DROP INDEX dbo.secBizPropertyDescriptions._dta_index_secBizPropertyDescriptions_15_373576369__K3_K10_K8_K2_1_4_5_6_7_9_11_12_13_14;

/* Remove Indexes */
DROP INDEX dbo.secBizPropertyDescriptions.secBizPropertyDescriptions_GuidBusinessObject_GuidBizObjProperty_UICulture_Idx;

/* Add Indexes */
CREATE NONCLUSTERED INDEX secBizPropertyDescriptions_GuidBusinessObject_GuidBizObjProperty_UICulture_Idx ON dbo.secBizPropertyDescriptions (GuidBusinessObject, GuidBizObjProperty, UICulture, OwnerComptany);

/* Add Indexes */
CREATE NONCLUSTERED INDEX secBusinessObject_BusinessObjectKey_Idx ON dbo.secBusinessObject (BusinessObjectKey);


CREATE NONCLUSTERED INDEX secBizPropertyDescriptions_UICulture_Idx ON dbo.secBizPropertyDescriptions (UICulture);

/* Add Indexes */
CREATE UNIQUE NONCLUSTERED INDEX secModule_ModuleKey_Idx ON dbo.secModule (ModuleKey);


/* Remove Indexes */
DROP INDEX dbo.secUserCompanies.secUserCompanies_GuidCompany_GuidUser_GuidRole_IsDeleted_Idx;
/* Add Indexes */
CREATE NONCLUSTERED INDEX secUserCompanies_GuidCompany_GuidUser_GuidRole_IsDeleted_Idx ON dbo.secUserCompanies (GuidCompany, GuidUser, GuidRole, IsDeleted);

/* Add Indexes */
CREATE NONCLUSTERED INDEX secUserCompanies_GuidCompany_GuidUser_Idx ON dbo.secUserCompanies (GuidCompany, GuidUser);

/* Add Indexes */
CREATE NONCLUSTERED INDEX secUserCompanies_GuidCompany_GuidUser_GuidRole_Idx ON dbo.secUserCompanies (GuidCompany, GuidUser, GuidRole);



/* Remove Indexes */
DROP INDEX dbo.secCompanies._dta_index_secCompanies_15_437576597__K6_K9_K2_K3_K4_K14_1_5_7_8_10_11_12_13_15_16_17_18_19;

DROP INDEX dbo.secCompanies._dta_index_secCompanies_54_469576711__K1_2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22;

DROP INDEX dbo.secCompanies._dta_index_secCompanies_54_469576711__K3;

/* Add Indexes */
CREATE NONCLUSTERED INDEX secCompanies_GuidCompany_CompanyParentGuid_IsDeleted_Idx ON dbo.secCompanies (GuidCompany, CompanyParentGuid, IsDeleted);