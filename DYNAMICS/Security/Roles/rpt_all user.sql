CREATE ROLE [rpt_all user]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_all user', N'rpt_executive'
GO
EXEC sp_addrolemember N'rpt_all user', N'rpt_human resource administrator'
GO
EXEC sp_addrolemember N'rpt_all user', N'rpt_payroll'
GO
EXEC sp_addrolemember N'rpt_all user', N'rpt_power user'
GO
