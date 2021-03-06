CREATE TABLE [dbo].[SK020130]
(
[Query_Index] [smallint] NOT NULL,
[Query_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SK020130] ADD CONSTRAINT [PKSK020130] PRIMARY KEY CLUSTERED  ([Query_Name]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SK020130] ON [dbo].[SK020130] ([Query_Index]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SK020130].[Query_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SK020130].[Query_Name]'
GO
GRANT SELECT ON  [dbo].[SK020130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SK020130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SK020130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SK020130] TO [DYNGRP]
GO
