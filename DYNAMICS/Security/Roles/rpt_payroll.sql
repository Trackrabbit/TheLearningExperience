CREATE ROLE [rpt_payroll]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_payroll', N'rpt_power user'
GO
