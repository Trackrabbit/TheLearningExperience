CREATE TABLE [dbo].[AAG20001]
(
[aaSubLedgerHdrID] [int] NOT NULL,
[aaSubLedgerDistID] [int] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CorrespondingUnit] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[aaBrowseType] [smallint] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[aaCustID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaVendID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSiteID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaItemID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaAssetID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaBookID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaCopyStatus] [smallint] NOT NULL,
[aaWinWasOpen] [tinyint] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[HISTORY] [tinyint] NOT NULL,
[aaDistErrors] [binary] (4) NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[aaFutureDist] [int] NOT NULL,
[aaOffsetAcct] [tinyint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXLOCTN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BINNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRNSTLOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXQTY] [numeric] (19, 5) NOT NULL,
[PYRLRTYP] [smallint] NOT NULL,
[TRXNUMBER] [int] NOT NULL,
[aaChangeDate] [datetime] NOT NULL,
[aaChangeTime] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG20001] ADD CONSTRAINT [CK__AAG20001__aaChan__2EE6AEA0] CHECK ((datepart(day,[aaChangeTime])=(1) AND datepart(month,[aaChangeTime])=(1) AND datepart(year,[aaChangeTime])=(1900)))
GO
ALTER TABLE [dbo].[AAG20001] ADD CONSTRAINT [CK__AAG20001__TIME1__2CFE662E] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[AAG20001] ADD CONSTRAINT [CK__AAG20001__aaChan__2DF28A67] CHECK ((datepart(hour,[aaChangeDate])=(0) AND datepart(minute,[aaChangeDate])=(0) AND datepart(second,[aaChangeDate])=(0) AND datepart(millisecond,[aaChangeDate])=(0)))
GO
ALTER TABLE [dbo].[AAG20001] ADD CONSTRAINT [CK__AAG20001__EXCHDA__2B161DBC] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[AAG20001] ADD CONSTRAINT [CK__AAG20001__GLPOST__2C0A41F5] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[AAG20001] ADD CONSTRAINT [PKAAG20001] PRIMARY KEY CLUSTERED  ([aaSubLedgerHdrID], [aaSubLedgerDistID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6AAG20001] ON [dbo].[AAG20001] ([aaSubLedgerHdrID], [aaSubLedgerDistID], [SEQNUMBR], [ACTINDX], [PYRLRTYP], [TRXNUMBER], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ACINDXPerfAAG20001] ON [dbo].[AAG20001] ([ACTINDX], [POSTED]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[aaSubLedgerHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[aaSubLedgerDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[CorrespondingUnit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[aaBrowseType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20001].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20001].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20001].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20001].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20001].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG20001].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG20001].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20001].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG20001].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[aaCustID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[aaVendID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[aaSiteID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[aaItemID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[aaAssetID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[aaBookID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[aaCopyStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[aaWinWasOpen]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[HISTORY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[aaDistErrors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[aaFutureDist]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[aaOffsetAcct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[TRXLOCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[BINNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG20001].[TRNSTLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG20001].[TRXQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[PYRLRTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG20001].[TRXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG20001].[aaChangeDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG20001].[aaChangeTime]'
GO
GRANT SELECT ON  [dbo].[AAG20001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG20001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG20001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG20001] TO [DYNGRP]
GO
