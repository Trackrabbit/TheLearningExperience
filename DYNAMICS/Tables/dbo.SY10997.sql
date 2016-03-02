CREATE TABLE [dbo].[SY10997]
(
[DICTID] [smallint] NOT NULL,
[Language_ID] [smallint] NOT NULL,
[FUNCNAME] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FUNCENUM] [smallint] NOT NULL,
[MSGNUM] [smallint] NOT NULL,
[Field_ResID] [smallint] NOT NULL,
[SQL_MSG] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY10997] ADD CONSTRAINT [PKSY10997] PRIMARY KEY NONCLUSTERED  ([DICTID], [Language_ID], [FUNCNAME], [FUNCENUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10997].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10997].[Language_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10997].[FUNCNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10997].[FUNCENUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10997].[MSGNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10997].[Field_ResID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10997].[SQL_MSG]'
GO
GRANT SELECT ON  [dbo].[SY10997] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY10997] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY10997] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY10997] TO [DYNGRP]
GO
