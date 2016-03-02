CREATE TABLE [dbo].[SY07130]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CmdSequence] [smallint] NOT NULL,
[Visible] [tinyint] NOT NULL,
[CmdParentDictID] [smallint] NOT NULL,
[CmdParentFormID] [smallint] NOT NULL,
[CmdParentCmdID] [smallint] NOT NULL,
[CmdDictID] [smallint] NOT NULL,
[CmdFormID] [smallint] NOT NULL,
[CmdID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07130] ADD CONSTRAINT [PKSY07130] PRIMARY KEY NONCLUSTERED  ([USERID], [CmdSequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07130].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07130].[CmdSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07130].[Visible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07130].[CmdParentDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07130].[CmdParentFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07130].[CmdParentCmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07130].[CmdDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07130].[CmdFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07130].[CmdID]'
GO
GRANT SELECT ON  [dbo].[SY07130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07130] TO [DYNGRP]
GO
