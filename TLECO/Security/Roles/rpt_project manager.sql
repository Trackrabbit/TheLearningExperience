CREATE ROLE [rpt_project manager]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_project manager', N'rpt_power user'
GO
