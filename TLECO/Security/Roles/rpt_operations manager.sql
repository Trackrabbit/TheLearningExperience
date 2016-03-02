CREATE ROLE [rpt_operations manager]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_operations manager', N'rpt_power user'
GO
