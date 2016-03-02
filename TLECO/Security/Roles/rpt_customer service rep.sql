CREATE ROLE [rpt_customer service rep]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_customer service rep', N'rpt_power user'
GO
