CREATE TABLE [dbo].[SC9000]
(
[PRODID] [smallint] NOT NULL,
[PRODNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SC9000] ADD CONSTRAINT [PKSC9000] PRIMARY KEY NONCLUSTERED  ([PRODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SC9000] ON [dbo].[SC9000] ([PRODNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SC9000].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9000].[PRODNAME]'
GO
GRANT SELECT ON  [dbo].[SC9000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SC9000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SC9000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SC9000] TO [DYNGRP]
GO
