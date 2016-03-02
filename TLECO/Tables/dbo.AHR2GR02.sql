CREATE TABLE [dbo].[AHR2GR02]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTRYNUMBER_I] [smallint] NOT NULL,
[STAGENUMBER_I] [smallint] NOT NULL,
[SEQORDER_I] [smallint] NOT NULL,
[STAGENAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2GR02] ADD CONSTRAINT [CK__AHR2GR02__CHANGE__78952324] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2GR02] ADD CONSTRAINT [CK__AHR2GR02__DATE1__7989475D] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[AHR2GR02] ADD CONSTRAINT [PKAHR2GR02] PRIMARY KEY CLUSTERED  ([EMPID_I], [ENTRYNUMBER_I], [STAGENUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AHR2GR02] ON [dbo].[AHR2GR02] ([EMPID_I], [ENTRYNUMBER_I], [SEQORDER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2GR02].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2GR02].[ENTRYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2GR02].[STAGENUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2GR02].[SEQORDER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2GR02].[STAGENAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2GR02].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2GR02].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2GR02].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2GR02].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[AHR2GR02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2GR02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2GR02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2GR02] TO [DYNGRP]
GO
