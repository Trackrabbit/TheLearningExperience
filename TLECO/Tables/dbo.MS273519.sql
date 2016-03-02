CREATE TABLE [dbo].[MS273519]
(
[MSO_Import_Setup_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Import_Description] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Filename] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Filetype] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273519] ADD CONSTRAINT [PKMS273519] PRIMARY KEY CLUSTERED  ([MSO_Import_Setup_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273519].[MSO_Import_Setup_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273519].[MSO_Import_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273519].[MSO_Filename]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273519].[MSO_Filetype]'
GO
GRANT SELECT ON  [dbo].[MS273519] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273519] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273519] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273519] TO [DYNGRP]
GO
