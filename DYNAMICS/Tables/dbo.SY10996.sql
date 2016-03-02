CREATE TABLE [dbo].[SY10996]
(
[DICTID] [smallint] NOT NULL,
[Language_ID] [smallint] NOT NULL,
[MSGNUM] [smallint] NOT NULL,
[SQL_MSG] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY10996] ADD CONSTRAINT [PKSY10996] PRIMARY KEY NONCLUSTERED  ([DICTID], [Language_ID], [MSGNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10996].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10996].[Language_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10996].[MSGNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10996].[SQL_MSG]'
GO
GRANT SELECT ON  [dbo].[SY10996] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY10996] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY10996] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY10996] TO [DYNGRP]
GO
