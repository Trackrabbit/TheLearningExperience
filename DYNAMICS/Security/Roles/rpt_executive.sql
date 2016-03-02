CREATE ROLE [rpt_executive]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_executive', N'rpt_power user'
GO
