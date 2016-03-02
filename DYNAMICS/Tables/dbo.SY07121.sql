CREATE TABLE [dbo].[SY07121]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CmdBarDictID] [smallint] NOT NULL,
[CmdBarFormID] [smallint] NOT NULL,
[CmdBarWindowID] [smallint] NOT NULL,
[Visible] [tinyint] NOT NULL,
[ROWNMBR] [smallint] NOT NULL,
[RowSequence] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07121] ADD CONSTRAINT [PKSY07121] PRIMARY KEY NONCLUSTERED  ([USERID], [CmdBarDictID], [CmdBarFormID], [CmdBarWindowID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY07121] ON [dbo].[SY07121] ([USERID], [ROWNMBR], [RowSequence], [CmdBarDictID], [CmdBarFormID], [CmdBarWindowID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07121].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07121].[CmdBarDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07121].[CmdBarFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07121].[CmdBarWindowID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07121].[Visible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07121].[ROWNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07121].[RowSequence]'
GO
GRANT SELECT ON  [dbo].[SY07121] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07121] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07121] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07121] TO [DYNGRP]
GO
