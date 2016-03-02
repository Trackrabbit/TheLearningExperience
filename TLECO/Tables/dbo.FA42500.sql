CREATE TABLE [dbo].[FA42500]
(
[UserField] [smallint] NOT NULL,
[TableValue] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA42500] ADD CONSTRAINT [PKFA42500] PRIMARY KEY NONCLUSTERED  ([UserField], [TableValue]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA42500].[UserField]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA42500].[TableValue]'
GO
GRANT SELECT ON  [dbo].[FA42500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA42500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA42500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA42500] TO [DYNGRP]
GO
