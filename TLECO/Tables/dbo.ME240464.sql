CREATE TABLE [dbo].[ME240464]
(
[ME_Check_STB_FileNEW] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Check_STB_Version] [smallint] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[MEDateModifiedString] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[File_Size] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240464] ADD CONSTRAINT [PKME240464] PRIMARY KEY NONCLUSTERED  ([ME_Check_STB_FileNEW], [ME_Check_STB_Version], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240464].[ME_Check_STB_FileNEW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240464].[ME_Check_STB_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME240464].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240464].[MEDateModifiedString]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240464].[File_Size]'
GO
GRANT SELECT ON  [dbo].[ME240464] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240464] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240464] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240464] TO [DYNGRP]
GO
