CREATE TABLE [dbo].[SY07230]
(
[ListDictID] [smallint] NOT NULL,
[ListID] [smallint] NOT NULL,
[ViewID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[FilterCriteria] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07230] ADD CONSTRAINT [PKSY07230] PRIMARY KEY NONCLUSTERED  ([ListDictID], [ListID], [ViewID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07230].[ListDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07230].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07230].[ViewID]'
GO
GRANT SELECT ON  [dbo].[SY07230] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07230] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07230] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07230] TO [DYNGRP]
GO
