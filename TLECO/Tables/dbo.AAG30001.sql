CREATE TABLE [dbo].[AAG30001]
(
[aaGLHdrID] [int] NOT NULL,
[aaGLDistID] [int] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CorrespondingUnit] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
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
[aaCustID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaVendID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSiteID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaItemID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaAssetID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaBookID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaCopyStatus] [smallint] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaChangeDate] [datetime] NOT NULL,
[aaChangeTime] [datetime] NOT NULL,
[AA_CL_Status] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG30001__DEX_RO__5B438874] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG30001U] ON [dbo].[AAG30001] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG30001 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG30001, inserted WHERE AAG30001.aaGLHdrID = inserted.aaGLHdrID AND AAG30001.aaGLDistID = inserted.aaGLDistID END set nocount off    
GO
ALTER TABLE [dbo].[AAG30001] ADD CONSTRAINT [CK__AAG30001__aaChan__4A8EC915] CHECK ((datepart(day,[aaChangeTime])=(1) AND datepart(month,[aaChangeTime])=(1) AND datepart(year,[aaChangeTime])=(1900)))
GO
ALTER TABLE [dbo].[AAG30001] ADD CONSTRAINT [CK__AAG30001__TIME1__48A680A3] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[AAG30001] ADD CONSTRAINT [CK__AAG30001__aaChan__499AA4DC] CHECK ((datepart(hour,[aaChangeDate])=(0) AND datepart(minute,[aaChangeDate])=(0) AND datepart(second,[aaChangeDate])=(0) AND datepart(millisecond,[aaChangeDate])=(0)))
GO
ALTER TABLE [dbo].[AAG30001] ADD CONSTRAINT [CK__AAG30001__EXCHDA__47B25C6A] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[AAG30001] ADD CONSTRAINT [PKAAG30001] PRIMARY KEY CLUSTERED  ([aaGLHdrID], [aaGLDistID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[aaGLHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[aaGLDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[CorrespondingUnit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[aaBrowseType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG30001].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG30001].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG30001].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG30001].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG30001].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG30001].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG30001].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG30001].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[aaCustID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[aaVendID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[aaSiteID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[aaItemID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[aaAssetID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[aaBookID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[aaCopyStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30001].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG30001].[aaChangeDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG30001].[aaChangeTime]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30001].[AA_CL_Status]'
GO
GRANT SELECT ON  [dbo].[AAG30001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG30001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG30001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG30001] TO [DYNGRP]
GO
