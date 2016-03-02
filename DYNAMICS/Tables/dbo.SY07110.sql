CREATE TABLE [dbo].[SY07110]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CmdParentDictID] [smallint] NOT NULL,
[CmdParentFormID] [smallint] NOT NULL,
[CmdParentCmdID] [smallint] NOT NULL,
[CmdSequence] [smallint] NOT NULL,
[CmdDictID] [smallint] NOT NULL,
[CmdFormID] [smallint] NOT NULL,
[CmdID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07110] ADD CONSTRAINT [PKSY07110] PRIMARY KEY NONCLUSTERED  ([USERID], [CmdParentDictID], [CmdParentFormID], [CmdParentCmdID], [CmdSequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07110].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07110].[CmdParentDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07110].[CmdParentFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07110].[CmdParentCmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07110].[CmdSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07110].[CmdDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07110].[CmdFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07110].[CmdID]'
GO
GRANT SELECT ON  [dbo].[SY07110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07110] TO [DYNGRP]
GO
