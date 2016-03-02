CREATE TABLE [dbo].[AAG00316]
(
[aaMLQueryID] [int] NOT NULL,
[aaTrxDimID] [int] NOT NULL,
[aaUDFID] [int] NOT NULL,
[aaUDFSelect] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00316] ADD CONSTRAINT [PKAAG00316] PRIMARY KEY CLUSTERED  ([aaMLQueryID], [aaTrxDimID], [aaUDFID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00316].[aaMLQueryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00316].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00316].[aaUDFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00316].[aaUDFSelect]'
GO
GRANT SELECT ON  [dbo].[AAG00316] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00316] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00316] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00316] TO [DYNGRP]
GO
