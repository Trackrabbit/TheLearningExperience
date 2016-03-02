CREATE TABLE [dbo].[SVC00970]
(
[ShortName] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LongName] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Path] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00970] ADD CONSTRAINT [PKSVC00970] PRIMARY KEY NONCLUSTERED  ([ShortName]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00970].[ShortName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00970].[LongName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00970].[Path]'
GO
GRANT SELECT ON  [dbo].[SVC00970] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00970] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00970] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00970] TO [DYNGRP]
GO
