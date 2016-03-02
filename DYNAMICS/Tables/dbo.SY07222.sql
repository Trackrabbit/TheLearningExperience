CREATE TABLE [dbo].[SY07222]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ListDictID] [smallint] NOT NULL,
[ListID] [smallint] NOT NULL,
[CmdSequence] [smallint] NOT NULL,
[ViewID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07222] ADD CONSTRAINT [PKSY07222] PRIMARY KEY NONCLUSTERED  ([USERID], [ListDictID], [ListID], [CmdSequence], [ViewID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07222].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07222].[ListDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07222].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07222].[CmdSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07222].[ViewID]'
GO
GRANT SELECT ON  [dbo].[SY07222] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07222] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07222] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07222] TO [DYNGRP]
GO
