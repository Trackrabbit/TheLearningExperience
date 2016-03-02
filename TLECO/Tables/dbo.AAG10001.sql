CREATE TABLE [dbo].[AAG10001]
(
[aaGLWorkHdrID] [int] NOT NULL,
[aaGLWorkDistID] [int] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CorrespondingUnit] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[aaBrowseType] [smallint] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[FXDORVAR] [smallint] NOT NULL,
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
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[aaCustID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaVendID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSiteID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaItemID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaAssetID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaBookID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaCopyStatus] [smallint] NOT NULL,
[aaWinWasOpen] [tinyint] NOT NULL,
[aaOFFSETAcct] [smallint] NOT NULL,
[aaDistErrors] [binary] (4) NOT NULL,
[aaChangeDate] [datetime] NOT NULL,
[aaChangeTime] [datetime] NOT NULL,
[AA_CL_Status] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG10001__DEX_RO__546180BB] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG10001U] ON [dbo].[AAG10001] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG10001 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG10001, inserted WHERE AAG10001.aaGLWorkHdrID = inserted.aaGLWorkHdrID AND AAG10001.aaGLWorkDistID = inserted.aaGLWorkDistID END set nocount off    
GO
ALTER TABLE [dbo].[AAG10001] ADD CONSTRAINT [CK__AAG10001__aaChan__1EB046D7] CHECK ((datepart(day,[aaChangeTime])=(1) AND datepart(month,[aaChangeTime])=(1) AND datepart(year,[aaChangeTime])=(1900)))
GO
ALTER TABLE [dbo].[AAG10001] ADD CONSTRAINT [CK__AAG10001__TIME1__1CC7FE65] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[AAG10001] ADD CONSTRAINT [CK__AAG10001__aaChan__1DBC229E] CHECK ((datepart(hour,[aaChangeDate])=(0) AND datepart(minute,[aaChangeDate])=(0) AND datepart(second,[aaChangeDate])=(0) AND datepart(millisecond,[aaChangeDate])=(0)))
GO
ALTER TABLE [dbo].[AAG10001] ADD CONSTRAINT [CK__AAG10001__EXCHDA__1BD3DA2C] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[AAG10001] ADD CONSTRAINT [PKAAG10001] PRIMARY KEY CLUSTERED  ([aaGLWorkHdrID], [aaGLWorkDistID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[aaGLWorkHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[aaGLWorkDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[CorrespondingUnit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[aaBrowseType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[FXDORVAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10001].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10001].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10001].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10001].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10001].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG10001].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG10001].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10001].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10001].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[aaCustID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[aaVendID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[aaSiteID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[aaItemID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[aaAssetID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10001].[aaBookID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[aaCopyStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[aaWinWasOpen]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[aaOFFSETAcct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[aaDistErrors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG10001].[aaChangeDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG10001].[aaChangeTime]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10001].[AA_CL_Status]'
GO
GRANT SELECT ON  [dbo].[AAG10001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG10001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG10001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG10001] TO [DYNGRP]
GO
