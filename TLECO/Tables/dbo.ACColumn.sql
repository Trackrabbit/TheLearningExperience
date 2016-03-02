CREATE TABLE [dbo].[ACColumn]
(
[Tablename] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Columnname] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ACColumn] ADD CONSTRAINT [PKACColumn] PRIMARY KEY CLUSTERED  ([Tablename], [Columnname]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ACColumn].[Tablename]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ACColumn].[Columnname]'
GO
GRANT SELECT ON  [dbo].[ACColumn] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ACColumn] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ACColumn] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ACColumn] TO [DYNGRP]
GO
