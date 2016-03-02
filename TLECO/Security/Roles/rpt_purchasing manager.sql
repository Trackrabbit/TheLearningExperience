CREATE ROLE [rpt_purchasing manager]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_purchasing manager', N'rpt_power user'
GO
