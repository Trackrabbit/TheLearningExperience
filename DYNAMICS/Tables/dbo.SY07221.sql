CREATE TABLE [dbo].[SY07221]
(
[ListDictID] [smallint] NOT NULL,
[ListID] [smallint] NOT NULL,
[ViewID] [int] NOT NULL,
[ViewAccessType] [smallint] NOT NULL,
[IDValue] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsEditable] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07221] ADD CONSTRAINT [PKSY07221] PRIMARY KEY NONCLUSTERED  ([ListDictID], [ListID], [ViewID], [ViewAccessType], [IDValue], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07221].[ListDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07221].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07221].[ViewID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07221].[ViewAccessType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07221].[IDValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07221].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07221].[IsEditable]'
GO
GRANT SELECT ON  [dbo].[SY07221] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07221] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07221] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07221] TO [DYNGRP]
GO
