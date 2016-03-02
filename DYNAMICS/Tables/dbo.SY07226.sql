CREATE TABLE [dbo].[SY07226]
(
[ListDictID] [smallint] NOT NULL,
[ListID] [smallint] NOT NULL,
[ViewID] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ColSequence] [smallint] NOT NULL,
[ColFieldID] [smallint] NOT NULL,
[ColArrayIndex] [smallint] NOT NULL,
[ColFormatFldDictID] [smallint] NOT NULL,
[ColFormatFldFieldID] [smallint] NOT NULL,
[ColVisible] [tinyint] NOT NULL,
[ColWidth] [smallint] NOT NULL,
[ColSortSequence] [smallint] NOT NULL,
[ColSortOrder] [smallint] NOT NULL,
[FilterTokenID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07226] ADD CONSTRAINT [PKSY07226] PRIMARY KEY NONCLUSTERED  ([ListDictID], [ListID], [ViewID], [USERID], [ColSequence]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY07226] ON [dbo].[SY07226] ([ListDictID], [ListID], [ViewID], [USERID], [ColSortSequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ListDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ViewID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07226].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ColSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ColFieldID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ColArrayIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ColFormatFldDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ColFormatFldFieldID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ColVisible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ColWidth]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ColSortSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[ColSortOrder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07226].[FilterTokenID]'
GO
GRANT SELECT ON  [dbo].[SY07226] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07226] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07226] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07226] TO [DYNGRP]
GO
