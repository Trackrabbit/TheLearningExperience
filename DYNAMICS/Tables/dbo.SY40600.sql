CREATE TABLE [dbo].[SY40600]
(
[CmdParentDictID] [smallint] NOT NULL,
[CmdParentFormID] [smallint] NOT NULL,
[CmdParentCmdID] [smallint] NOT NULL,
[CmdSequence] [smallint] NOT NULL,
[CmdDictID] [smallint] NOT NULL,
[CmdFormID] [smallint] NOT NULL,
[CmdID] [smallint] NOT NULL,
[WinTechName] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Optional] [tinyint] NOT NULL,
[HelpChmFile] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HelpTopic] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY40600] ADD CONSTRAINT [PKSY40600] PRIMARY KEY NONCLUSTERED  ([CmdParentDictID], [CmdParentFormID], [CmdParentCmdID], [CmdSequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40600].[CmdParentDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40600].[CmdParentFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40600].[CmdParentCmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40600].[CmdSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40600].[CmdDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40600].[CmdFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40600].[CmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40600].[WinTechName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40600].[Optional]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40600].[HelpChmFile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40600].[HelpTopic]'
GO
GRANT SELECT ON  [dbo].[SY40600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY40600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY40600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY40600] TO [DYNGRP]
GO
