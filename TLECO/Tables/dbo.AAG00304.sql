CREATE TABLE [dbo].[AAG00304]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaWorkbookName] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaHdrIDCol] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00304] ADD CONSTRAINT [PKAAG00304] PRIMARY KEY CLUSTERED  ([USERID], [aaWorkbookName]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00304].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00304].[aaWorkbookName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00304].[aaHdrIDCol]'
GO
GRANT SELECT ON  [dbo].[AAG00304] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00304] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00304] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00304] TO [DYNGRP]
GO
