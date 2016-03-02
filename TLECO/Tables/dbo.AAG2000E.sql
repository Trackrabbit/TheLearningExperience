CREATE TABLE [dbo].[AAG2000E]
(
[aaSubLedgerHdrID] [int] NOT NULL,
[aaSubLedgerDistID] [int] NOT NULL,
[aaSubLedgerAssignID] [int] NOT NULL,
[aaDisplayDistID] [int] NOT NULL,
[AADOCVAL] [tinyint] NOT NULL,
[aaErrorNum] [smallint] NOT NULL,
[aaAcctClassID] [int] NOT NULL,
[aaTrxDim] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTrxDimCode] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaRelatedTrxDim] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaRelatedTrxDimCode] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaAccountClass] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG2000E] ADD CONSTRAINT [PKAAG2000E] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG2000E] ON [dbo].[AAG2000E] ([AADOCVAL], [aaSubLedgerHdrID], [aaSubLedgerDistID], [aaSubLedgerAssignID], [aaErrorNum], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1AAG2000E] ON [dbo].[AAG2000E] ([aaSubLedgerHdrID], [aaSubLedgerDistID], [aaSubLedgerAssignID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2000E].[aaSubLedgerHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2000E].[aaSubLedgerDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2000E].[aaSubLedgerAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2000E].[aaDisplayDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2000E].[AADOCVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2000E].[aaErrorNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2000E].[aaAcctClassID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2000E].[aaTrxDim]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2000E].[aaTrxDimCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2000E].[aaRelatedTrxDim]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2000E].[aaRelatedTrxDimCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2000E].[ERRDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2000E].[aaAccountClass]'
GO
GRANT SELECT ON  [dbo].[AAG2000E] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG2000E] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG2000E] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG2000E] TO [DYNGRP]
GO
