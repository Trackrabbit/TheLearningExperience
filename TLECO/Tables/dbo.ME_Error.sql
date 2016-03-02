CREATE TABLE [dbo].[ME_Error]
(
[SEQNUMBR] [int] NOT NULL,
[ME_Error_Msg] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Dummy_File_Conversion] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME_Error] ADD CONSTRAINT [PKME_Error] PRIMARY KEY NONCLUSTERED  ([SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME_Error].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME_Error].[ME_Error_Msg]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME_Error].[ME_Dummy_File_Conversion]'
GO
GRANT SELECT ON  [dbo].[ME_Error] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME_Error] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME_Error] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME_Error] TO [DYNGRP]
GO
