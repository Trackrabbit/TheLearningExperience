CREATE ROLE [rpt_accounting manager]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_accounting manager', N'rpt_power user'
GO
