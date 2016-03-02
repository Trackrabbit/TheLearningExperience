CREATE ROLE [rpt_order processor]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_order processor', N'rpt_power user'
GO
