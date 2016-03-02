CREATE TABLE [dbo].[AAG50002]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBTCHSRC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSubLedgerHdrID] [int] NOT NULL,
[aaSubLedgerDistID] [int] NOT NULL,
[aaSubLedgerAssignID] [int] NOT NULL,
[SERIES] [smallint] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG50002] ADD CONSTRAINT [PKAAG50002] PRIMARY KEY NONCLUSTERED  ([aaSubLedgerHdrID], [aaSubLedgerDistID], [aaSubLedgerAssignID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG50002] ON [dbo].[AAG50002] ([USERID], [TRXBTCHSRC], [aaSubLedgerHdrID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG50002].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG50002].[TRXBTCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG50002].[aaSubLedgerHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG50002].[aaSubLedgerDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG50002].[aaSubLedgerAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG50002].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG50002].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG50002].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG50002].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG50002].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG50002].[DistRef]'
GO
GRANT SELECT ON  [dbo].[AAG50002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG50002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG50002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG50002] TO [DYNGRP]
GO
