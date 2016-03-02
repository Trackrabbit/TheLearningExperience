CREATE ROLE [rpt_bookkeeper]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_bookkeeper', N'rpt_power user'
GO
