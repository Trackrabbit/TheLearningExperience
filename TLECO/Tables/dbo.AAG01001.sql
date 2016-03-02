CREATE TABLE [dbo].[AAG01001]
(
[aaTrxDimID] [int] NOT NULL,
[aaUDFID] [int] NOT NULL,
[aaUDFString] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG01001] ADD CONSTRAINT [PKAAG01001] PRIMARY KEY CLUSTERED  ([aaTrxDimID], [aaUDFID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG01001].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG01001].[aaUDFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG01001].[aaUDFString]'
GO
GRANT SELECT ON  [dbo].[AAG01001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG01001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG01001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG01001] TO [DYNGRP]
GO
