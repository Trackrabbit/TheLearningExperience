CREATE TABLE [dbo].[SY01405]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IniKeyName] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IniKeyValue] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01405] ADD CONSTRAINT [PKSY01405] PRIMARY KEY NONCLUSTERED  ([USERID], [IniKeyName]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01405].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01405].[IniKeyName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01405].[IniKeyValue]'
GO
GRANT SELECT ON  [dbo].[SY01405] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01405] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01405] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01405] TO [DYNGRP]
GO
