CREATE ROLE [rpt_accounts receivable coordinator]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_accounts receivable coordinator', N'rpt_power user'
GO
