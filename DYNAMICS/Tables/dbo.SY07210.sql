CREATE TABLE [dbo].[SY07210]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DICTID] [smallint] NOT NULL,
[FormID] [smallint] NOT NULL,
[ColSequence] [smallint] NOT NULL,
[ColFieldID] [smallint] NOT NULL,
[ColSortOrder] [smallint] NOT NULL,
[ColVisible] [tinyint] NOT NULL,
[ColWidth] [smallint] NOT NULL,
[ColArrayIndex] [smallint] NOT NULL,
[ColFormatFldDictID] [smallint] NOT NULL,
[ColFormatFldFieldID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07210] ADD CONSTRAINT [PKSY07210] PRIMARY KEY NONCLUSTERED  ([USERID], [DICTID], [FormID], [ColSequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07210].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07210].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07210].[FormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07210].[ColSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07210].[ColFieldID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07210].[ColSortOrder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07210].[ColVisible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07210].[ColWidth]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07210].[ColArrayIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07210].[ColFormatFldDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07210].[ColFormatFldFieldID]'
GO
GRANT SELECT ON  [dbo].[SY07210] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07210] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07210] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07210] TO [DYNGRP]
GO
