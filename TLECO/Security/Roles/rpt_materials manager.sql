CREATE ROLE [rpt_materials manager]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_materials manager', N'rpt_power user'
GO
