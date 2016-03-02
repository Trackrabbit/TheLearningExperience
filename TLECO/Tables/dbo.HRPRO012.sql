CREATE TABLE [dbo].[HRPRO012]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNUM_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISERIALNUMBER_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VALUE_I] [numeric] (19, 5) NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[DATEOUT_I] [datetime] NOT NULL,
[DATEIN_I] [datetime] NOT NULL,
[DATEDUE_I] [datetime] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[BOOLEANMONITOR_I] [tinyint] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRPRO012] ADD CONSTRAINT [CK__HRPRO012__CHANGE__593C735C] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRPRO012] ADD CONSTRAINT [CK__HRPRO012__DATEDU__5A309795] CHECK ((datepart(hour,[DATEDUE_I])=(0) AND datepart(minute,[DATEDUE_I])=(0) AND datepart(second,[DATEDUE_I])=(0) AND datepart(millisecond,[DATEDUE_I])=(0)))
GO
ALTER TABLE [dbo].[HRPRO012] ADD CONSTRAINT [CK__HRPRO012__DATEIN__5B24BBCE] CHECK ((datepart(hour,[DATEIN_I])=(0) AND datepart(minute,[DATEIN_I])=(0) AND datepart(second,[DATEIN_I])=(0) AND datepart(millisecond,[DATEIN_I])=(0)))
GO
ALTER TABLE [dbo].[HRPRO012] ADD CONSTRAINT [CK__HRPRO012__DATEOU__5C18E007] CHECK ((datepart(hour,[DATEOUT_I])=(0) AND datepart(minute,[DATEOUT_I])=(0) AND datepart(second,[DATEOUT_I])=(0) AND datepart(millisecond,[DATEOUT_I])=(0)))
GO
ALTER TABLE [dbo].[HRPRO012] ADD CONSTRAINT [PKHRPRO012] PRIMARY KEY CLUSTERED  ([EMPID_I], [ITEMNUM_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HRPRO012] ON [dbo].[HRPRO012] ([ITEMNUM_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPRO012].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPRO012].[ITEMNUM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPRO012].[ISERIALNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPRO012].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPRO012].[VALUE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPRO012].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPRO012].[DATEOUT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPRO012].[DATEIN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPRO012].[DATEDUE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPRO012].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPRO012].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPRO012].[BOOLEANMONITOR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPRO012].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[HRPRO012] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRPRO012] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRPRO012] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRPRO012] TO [DYNGRP]
GO
