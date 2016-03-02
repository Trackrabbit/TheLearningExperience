CREATE TABLE [dbo].[AAG40000]
(
[aaGLHdrID] [int] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[RCTRXSEQ] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[aaTRXType] [smallint] NOT NULL,
[aaGLTRXSource] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTRXSource] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[Ledger_ID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG40000] ADD CONSTRAINT [CK__AAG40000__GLPOST__550C5788] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[AAG40000] ADD CONSTRAINT [PKAAG40000] PRIMARY KEY CLUSTERED  ([aaGLHdrID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG40000] ON [dbo].[AAG40000] ([JRNENTRY], [RCTRXSEQ], [YEAR1], [aaGLTRXSource]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40000].[aaGLHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40000].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG40000].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40000].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40000].[aaTRXType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG40000].[aaGLTRXSource]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG40000].[aaTRXSource]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG40000].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40000].[Ledger_ID]'
GO
GRANT SELECT ON  [dbo].[AAG40000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG40000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG40000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG40000] TO [DYNGRP]
GO
