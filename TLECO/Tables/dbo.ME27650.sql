CREATE TABLE [dbo].[ME27650]
(
[ME_STB_REPOSITORY] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_UseCfgStubs] [tinyint] NOT NULL,
[ME_Dummy_File_Convert_De] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27650] ADD CONSTRAINT [PKME27650] PRIMARY KEY CLUSTERED  ([ME_UseCfgStubs]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27650].[ME_STB_REPOSITORY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27650].[ME_UseCfgStubs]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27650].[ME_Dummy_File_Convert_De]'
GO
GRANT SELECT ON  [dbo].[ME27650] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27650] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27650] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27650] TO [DYNGRP]
GO
