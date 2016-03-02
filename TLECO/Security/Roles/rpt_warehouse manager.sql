CREATE ROLE [rpt_warehouse manager]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_warehouse manager', N'rpt_power user'
GO
