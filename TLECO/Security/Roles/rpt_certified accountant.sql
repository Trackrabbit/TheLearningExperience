CREATE ROLE [rpt_certified accountant]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_certified accountant', N'rpt_power user'
GO
