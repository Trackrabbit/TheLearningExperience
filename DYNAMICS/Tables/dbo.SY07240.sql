CREATE TABLE [dbo].[SY07240]
(
[ListDictID] [smallint] NOT NULL,
[ListID] [smallint] NOT NULL,
[ViewID] [int] NOT NULL,
[CmdParentDictID] [smallint] NOT NULL,
[CmdParentFormID] [smallint] NOT NULL,
[CmdParentCmdID] [smallint] NOT NULL,
[CmdSequence] [smallint] NOT NULL,
[CmdDictID] [smallint] NOT NULL,
[CmdFormID] [smallint] NOT NULL,
[CmdID] [smallint] NOT NULL,
[Priority] [smallint] NOT NULL,
[ButtonSize] [smallint] NOT NULL,
[CmdCaption] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Visible] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07240] ADD CONSTRAINT [PKSY07240] PRIMARY KEY NONCLUSTERED  ([ListDictID], [ListID], [ViewID], [CmdParentDictID], [CmdParentFormID], [CmdParentCmdID], [CmdSequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[ListDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[ViewID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[CmdParentDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[CmdParentFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[CmdParentCmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[CmdSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[CmdDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[CmdFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[CmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[ButtonSize]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07240].[CmdCaption]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07240].[Visible]'
GO
GRANT SELECT ON  [dbo].[SY07240] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07240] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07240] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07240] TO [DYNGRP]
GO
