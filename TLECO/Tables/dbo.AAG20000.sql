CREATE TABLE [dbo].[AAG20000]
(
[aaSubLedgerHdrID] [int] NOT NULL,
[SERIES] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Master_ID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYRNTYPE] [smallint] NOT NULL,
[aaHdrErrors] [binary] (4) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG20000] ADD CONSTRAINT [PKAAG20000] PRIMARY KEY CLUSTERED  ([aaSubLedgerHdrID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG20000] ON [dbo].[AAG20000] ([SERIES], [DOCTYPE], [DOCNUMBR], [Master_ID], [PYRNTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20000].[aaSubLedgerHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20000].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20000].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20000].[Master_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20000].[PYRNTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20000].[aaHdrErrors]'
GO
GRANT SELECT ON  [dbo].[AAG20000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG20000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG20000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG20000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AAG20000] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[AAG20000] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[AAG20000] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[AAG20000] TO [RAPIDGRP]
GO
