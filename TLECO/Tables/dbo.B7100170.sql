CREATE TABLE [dbo].[B7100170]
(
[MODULE1] [smallint] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100170] ADD CONSTRAINT [PKB7100170] PRIMARY KEY CLUSTERED  ([MODULE1], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7100170] ON [dbo].[B7100170] ([VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100170].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100170].[VENDORID]'
GO
GRANT SELECT ON  [dbo].[B7100170] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100170] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100170] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100170] TO [DYNGRP]
GO