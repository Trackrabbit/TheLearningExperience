CREATE TABLE [dbo].[SY07105]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CmdDictID] [smallint] NOT NULL,
[CmdFormID] [smallint] NOT NULL,
[CmdID] [smallint] NOT NULL,
[CmdCaption] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CmdTooltip] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CmdNormalImageType] [smallint] NOT NULL,
[CmdNormalImageDictID] [smallint] NOT NULL,
[CmdNormalImageResID] [smallint] NOT NULL,
[CmdCheckedImageType] [smallint] NOT NULL,
[CmdCheckedImageDictID] [smallint] NOT NULL,
[CmdCheckedImageResID] [smallint] NOT NULL,
[CmdMenuDisplayOption] [smallint] NOT NULL,
[CmdButtonDisplayOption] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07105] ADD CONSTRAINT [PKSY07105] PRIMARY KEY NONCLUSTERED  ([USERID], [CmdDictID], [CmdFormID], [CmdID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07105].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07105].[CmdDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07105].[CmdFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07105].[CmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07105].[CmdCaption]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07105].[CmdTooltip]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07105].[CmdNormalImageType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07105].[CmdNormalImageDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07105].[CmdNormalImageResID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07105].[CmdCheckedImageType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07105].[CmdCheckedImageDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07105].[CmdCheckedImageResID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07105].[CmdMenuDisplayOption]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07105].[CmdButtonDisplayOption]'
GO
GRANT SELECT ON  [dbo].[SY07105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07105] TO [DYNGRP]
GO
