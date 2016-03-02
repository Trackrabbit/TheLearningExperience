CREATE TABLE [dbo].[AAG20002]
(
[aaSubLedgerHdrID] [int] NOT NULL,
[aaSubLedgerDistID] [int] NOT NULL,
[aaSubLedgerAssignID] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[aaAssignedPercent] [int] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[aaAssignErrors] [binary] (4) NOT NULL,
[aaAliasID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG20002] ADD CONSTRAINT [PKAAG20002] PRIMARY KEY CLUSTERED  ([aaSubLedgerHdrID], [aaSubLedgerDistID], [aaSubLedgerAssignID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [AliasIDAAG20002] ON [dbo].[AAG20002] ([DEBITAMT], [CRDTAMNT], [aaSubLedgerDistID], [aaAliasID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20002].[aaSubLedgerHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20002].[aaSubLedgerDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20002].[aaSubLedgerAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20002].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20002].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20002].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20002].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20002].[aaAssignedPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20002].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20002].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20002].[aaAssignErrors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20002].[aaAliasID]'
GO
GRANT SELECT ON  [dbo].[AAG20002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG20002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG20002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG20002] TO [DYNGRP]
GO
