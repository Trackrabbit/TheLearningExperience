CREATE ROLE [rpt_accounts payable coordinator]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_accounts payable coordinator', N'rpt_power user'
GO
