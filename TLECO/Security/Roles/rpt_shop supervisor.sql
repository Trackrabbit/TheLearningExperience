CREATE ROLE [rpt_shop supervisor]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_shop supervisor', N'rpt_power user'
GO
