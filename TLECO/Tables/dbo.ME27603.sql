CREATE TABLE [dbo].[ME27603]
(
[ME_Logo_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Filename] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Scaling] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27603] ADD CONSTRAINT [PKME27603] PRIMARY KEY CLUSTERED  ([ME_Logo_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27603].[ME_Logo_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27603].[ME_Filename]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27603].[ME_Scaling]'
GO
GRANT SELECT ON  [dbo].[ME27603] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27603] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27603] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27603] TO [DYNGRP]
GO
