CREATE TABLE [dbo].[AAG10000]
(
[aaGLWorkHdrID] [int] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[RCTRXSEQ] [numeric] (19, 5) NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[aaTRXType] [smallint] NOT NULL,
[aaHdrErrors] [binary] (4) NOT NULL,
[Ledger_ID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG10000] ADD CONSTRAINT [CK__AAG10000__GLPOST__18034948] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[AAG10000] ADD CONSTRAINT [PKAAG10000] PRIMARY KEY CLUSTERED  ([aaGLWorkHdrID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG10000] ON [dbo].[AAG10000] ([JRNENTRY], [RCTRXSEQ], [GLPOSTDT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10000].[aaGLWorkHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10000].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10000].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG10000].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10000].[aaTRXType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10000].[aaHdrErrors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10000].[Ledger_ID]'
GO
GRANT SELECT ON  [dbo].[AAG10000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG10000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG10000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG10000] TO [DYNGRP]
GO
