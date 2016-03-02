CREATE ROLE [rpt_human resource administrator]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_human resource administrator', N'rpt_power user'
GO
