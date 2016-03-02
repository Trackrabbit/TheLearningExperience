CREATE ROLE [rpt_shipping and receiving]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_shipping and receiving', N'rpt_power user'
GO
