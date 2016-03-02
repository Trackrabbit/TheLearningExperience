CREATE TABLE [dbo].[SY07101]
(
[CmdDictID] [smallint] NOT NULL,
[CmdFormID] [smallint] NOT NULL,
[CmdID] [smallint] NOT NULL,
[CmdSequence] [smallint] NOT NULL,
[DICTID] [smallint] NOT NULL,
[RESTYPE] [smallint] NOT NULL,
[RESID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07101] ADD CONSTRAINT [PKSY07101] PRIMARY KEY NONCLUSTERED  ([CmdDictID], [CmdFormID], [CmdID], [CmdSequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07101].[CmdDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07101].[CmdFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07101].[CmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07101].[CmdSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07101].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07101].[RESTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07101].[RESID]'
GO
GRANT SELECT ON  [dbo].[SY07101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07101] TO [DYNGRP]
GO
