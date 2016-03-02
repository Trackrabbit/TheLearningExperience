CREATE ROLE [rpt_purchasing agent]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_purchasing agent', N'rpt_power user'
GO
