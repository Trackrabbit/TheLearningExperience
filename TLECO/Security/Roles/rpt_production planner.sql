CREATE ROLE [rpt_production planner]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'rpt_production planner', N'rpt_power user'
GO
