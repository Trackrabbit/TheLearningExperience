CREATE ROLE [rpt_production manager]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_production manager', N'rpt_power user'
GO
