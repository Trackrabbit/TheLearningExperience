CREATE TABLE [dbo].[ME27652]
(
[ME_NonNegotiableWord] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Check_STB_FileNEW] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Overflow_STB_FileNEW] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27652] ADD CONSTRAINT [PKME27652] PRIMARY KEY CLUSTERED  ([CHEKBKID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27652].[ME_NonNegotiableWord]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27652].[ME_Check_STB_FileNEW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27652].[ME_Overflow_STB_FileNEW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27652].[CHEKBKID]'
GO
GRANT SELECT ON  [dbo].[ME27652] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27652] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27652] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27652] TO [DYNGRP]
GO
