CREATE TABLE [dbo].[AHR2DI01]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTRYNUMBER_I] [smallint] NOT NULL,
[OFFENSE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEOFOFFENSE_I] [datetime] NOT NULL,
[DATECLOSED_I] [datetime] NOT NULL,
[DATEOFLASTCHANGE_I] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISCTYPECOMBO_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2DI01] ADD CONSTRAINT [CK__AHR2DI01__DATECL__667672E9] CHECK ((datepart(hour,[DATECLOSED_I])=(0) AND datepart(minute,[DATECLOSED_I])=(0) AND datepart(second,[DATECLOSED_I])=(0) AND datepart(millisecond,[DATECLOSED_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2DI01] ADD CONSTRAINT [CK__AHR2DI01__DATEOF__685EBB5B] CHECK ((datepart(hour,[DATEOFLASTCHANGE_I])=(0) AND datepart(minute,[DATEOFLASTCHANGE_I])=(0) AND datepart(second,[DATEOFLASTCHANGE_I])=(0) AND datepart(millisecond,[DATEOFLASTCHANGE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2DI01] ADD CONSTRAINT [CK__AHR2DI01__DATEOF__676A9722] CHECK ((datepart(hour,[DATEOFOFFENSE_I])=(0) AND datepart(minute,[DATEOFOFFENSE_I])=(0) AND datepart(second,[DATEOFOFFENSE_I])=(0) AND datepart(millisecond,[DATEOFOFFENSE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2DI01] ADD CONSTRAINT [PKAHR2DI01] PRIMARY KEY CLUSTERED  ([EMPID_I], [ENTRYNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AHR2DI01] ON [dbo].[AHR2DI01] ([DATEOFOFFENSE_I], [EMPID_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AHR2DI01] ON [dbo].[AHR2DI01] ([OFFENSE_I], [EMPID_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2DI01].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2DI01].[ENTRYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2DI01].[OFFENSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2DI01].[DATEOFOFFENSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2DI01].[DATECLOSED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2DI01].[DATEOFLASTCHANGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2DI01].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2DI01].[DISCTYPECOMBO_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2DI01].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[AHR2DI01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2DI01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2DI01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2DI01] TO [DYNGRP]
GO
