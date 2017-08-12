
/******************** Update Table: secProfile ************************/

/* Remove Primary Key */
ALTER TABLE dbo.secProfile DROP CONSTRAINT PK_MyProfile;

ALTER TABLE dbo.secProfile DROP COLUMN IdUser;

ALTER TABLE dbo.secProfile ADD GuidUser UniqueIdentifier NOT NULL;

/* Add Primary Key */
ALTER TABLE dbo.secProfile ADD CONSTRAINT pksecProfile
	PRIMARY KEY (GuidUser);




/* Remove Primary Key */
ALTER TABLE dbo.secRoleDataPermission DROP CONSTRAINT PK_secRoleDataPermission;

ALTER TABLE dbo.secRoleDataPermission DROP COLUMN IdPermission;

ALTER TABLE dbo.secRoleDataPermission ADD GuidPermission UniqueIdentifier NOT NULL;

/* Add Primary Key */
ALTER TABLE dbo.secRoleDataPermission ADD CONSTRAINT pksecRoleDataPermission
	PRIMARY KEY (GuidPermission, GuidRole, GuidDataColumn);