CREATE ROLE [rpt_collections manager]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_collections manager', N'rpt_power user'
GO
