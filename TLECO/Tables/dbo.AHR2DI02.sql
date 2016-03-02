CREATE TABLE [dbo].[AHR2DI02]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTRYNUMBER_I] [smallint] NOT NULL,
[SEQORDER_I] [smallint] NOT NULL,
[STAGENAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[PERSONFILING_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STAGETYPE_I] [smallint] NOT NULL,
[DATEIN_I] [datetime] NOT NULL,
[DATEOUT_I] [datetime] NOT NULL,
[SUSPENDEDCB_I] [tinyint] NOT NULL,
[TERMINATIONCB_I] [tinyint] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2DI02] ADD CONSTRAINT [CK__AHR2DI02__DATE1__6B3B2806] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[AHR2DI02] ADD CONSTRAINT [CK__AHR2DI02__DATEIN__6C2F4C3F] CHECK ((datepart(hour,[DATEIN_I])=(0) AND datepart(minute,[DATEIN_I])=(0) AND datepart(second,[DATEIN_I])=(0) AND datepart(millisecond,[DATEIN_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2DI02] ADD CONSTRAINT [CK__AHR2DI02__DATEOU__6D237078] CHECK ((datepart(hour,[DATEOUT_I])=(0) AND datepart(minute,[DATEOUT_I])=(0) AND datepart(second,[DATEOUT_I])=(0) AND datepart(millisecond,[DATEOUT_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2DI02] ADD CONSTRAINT [PKAHR2DI02] PRIMARY KEY CLUSTERED  ([EMPID_I], [ENTRYNUMBER_I], [SEQORDER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2DI02].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2DI02].[ENTRYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2DI02].[SEQORDER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2DI02].[STAGENAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2DI02].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2DI02].[PERSONFILING_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2DI02].[STAGETYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2DI02].[DATEIN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2DI02].[DATEOUT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2DI02].[SUSPENDEDCB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2DI02].[TERMINATIONCB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2DI02].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[AHR2DI02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2DI02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2DI02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2DI02] TO [DYNGRP]
GO
