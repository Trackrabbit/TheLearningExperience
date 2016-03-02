CREATE TABLE [dbo].[AAG70000]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBTCHSRC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaGLHdrID] [int] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SERIES] [smallint] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[aaGLTRXSource] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTRXSource] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCTRXSEQ] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG70000] ADD CONSTRAINT [CK__AAG70000__GLPOST__71A89636] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[AAG70000] ADD CONSTRAINT [PKAAG70000] PRIMARY KEY NONCLUSTERED  ([aaGLHdrID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG70000] ON [dbo].[AAG70000] ([USERID], [TRXBTCHSRC], [aaGLHdrID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG70000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG70000].[TRXBTCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70000].[aaGLHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70000].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG70000].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG70000].[aaGLTRXSource]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG70000].[aaTRXSource]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG70000].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70000].[YEAR1]'
GO
GRANT SELECT ON  [dbo].[AAG70000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG70000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG70000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG70000] TO [DYNGRP]
GO
