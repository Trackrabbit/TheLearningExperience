CREATE TABLE [dbo].[AAG20003]
(
[aaSubLedgerHdrID] [int] NOT NULL,
[aaSubLedgerDistID] [int] NOT NULL,
[aaSubLedgerAssignID] [int] NOT NULL,
[aaTrxDimID] [int] NOT NULL,
[aaTrxCodeID] [int] NOT NULL,
[aaCodeErrors] [binary] (4) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG20003] ADD CONSTRAINT [PKAAG20003] PRIMARY KEY CLUSTERED  ([aaSubLedgerHdrID], [aaSubLedgerDistID], [aaSubLedgerAssignID], [aaTrxDimID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20003].[aaSubLedgerHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20003].[aaSubLedgerDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20003].[aaSubLedgerAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20003].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20003].[aaTrxCodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20003].[aaCodeErrors]'
GO
GRANT SELECT ON  [dbo].[AAG20003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG20003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG20003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG20003] TO [DYNGRP]
GO
