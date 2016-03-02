CREATE ROLE [rpt_dispatcher]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_dispatcher', N'rpt_power user'
GO
