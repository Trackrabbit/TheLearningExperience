CREATE ROLE [rpt_sales manager]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_sales manager', N'rpt_power user'
GO
