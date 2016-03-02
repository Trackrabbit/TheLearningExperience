CREATE TABLE [dbo].[SY07125]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CmdBarDictID] [smallint] NOT NULL,
[CmdBarFormID] [smallint] NOT NULL,
[CmdBarWindowID] [smallint] NOT NULL,
[CmdSequence] [smallint] NOT NULL,
[CmdDictID] [smallint] NOT NULL,
[CmdFormID] [smallint] NOT NULL,
[CmdID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07125] ADD CONSTRAINT [PKSY07125] PRIMARY KEY NONCLUSTERED  ([USERID], [CmdBarDictID], [CmdBarFormID], [CmdBarWindowID], [CmdSequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07125].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07125].[CmdBarDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07125].[CmdBarFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07125].[CmdBarWindowID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07125].[CmdSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07125].[CmdDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07125].[CmdFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07125].[CmdID]'
GO
GRANT SELECT ON  [dbo].[SY07125] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07125] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07125] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07125] TO [DYNGRP]
GO
