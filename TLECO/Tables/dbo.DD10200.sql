CREATE TABLE [dbo].[DD10200]
(
[INDXLONG] [int] NOT NULL,
[DDLINE] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD10200] ADD CONSTRAINT [PKDD10200] PRIMARY KEY NONCLUSTERED  ([INDXLONG]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10200].[INDXLONG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10200].[DDLINE]'
GO
GRANT SELECT ON  [dbo].[DD10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD10200] TO [DYNGRP]
GO