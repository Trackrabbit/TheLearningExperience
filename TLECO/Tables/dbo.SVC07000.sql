CREATE TABLE [dbo].[SVC07000]
(
[Menu_ID] [numeric] (19, 5) NOT NULL,
[Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KeyCode] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Path] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC07000] ADD CONSTRAINT [PKSVC07000] PRIMARY KEY CLUSTERED  ([Menu_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC07000].[Menu_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07000].[Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07000].[KeyCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07000].[Path]'
GO
GRANT SELECT ON  [dbo].[SVC07000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC07000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC07000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC07000] TO [DYNGRP]
GO
