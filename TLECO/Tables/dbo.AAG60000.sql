CREATE TABLE [dbo].[AAG60000]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBTCHSRC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaGLWorkHdrID] [int] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SERIES] [smallint] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG60000] ADD CONSTRAINT [CK__AAG60000__GLPOST__6AFB98A7] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[AAG60000] ADD CONSTRAINT [PKAAG60000] PRIMARY KEY NONCLUSTERED  ([aaGLWorkHdrID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG60000] ON [dbo].[AAG60000] ([USERID], [TRXBTCHSRC], [aaGLWorkHdrID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG60000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG60000].[TRXBTCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60000].[aaGLWorkHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60000].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG60000].[GLPOSTDT]'
GO
GRANT SELECT ON  [dbo].[AAG60000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG60000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG60000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG60000] TO [DYNGRP]
GO
