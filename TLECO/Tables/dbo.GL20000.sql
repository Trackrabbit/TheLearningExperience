CREATE TABLE [dbo].[GL20000]
(
[OPENYEAR] [smallint] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[RCTRXSEQ] [numeric] (19, 5) NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[POLLDTRX] [tinyint] NOT NULL,
[LASTUSER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTDTEDT] [datetime] NOT NULL,
[USWHPSTD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORGNTSRC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORGNATYP] [smallint] NOT NULL,
[QKOFSET] [smallint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[ORTRXTYP] [smallint] NOT NULL,
[ORCTRNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORPSTDDT] [datetime] NOT NULL,
[ORTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OrigDTASeries] [smallint] NOT NULL,
[OrigSeqNum] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DTA_GL_Status] [smallint] NOT NULL,
[DTA_Index] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[ICTRX] [tinyint] NOT NULL,
[ORCOMID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIGINJE] [int] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[PSTGNMBR] [int] NOT NULL,
[PPSGNMBR] [int] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[CorrespondingUnit] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[Back_Out_JE] [int] NOT NULL,
[Back_Out_JE_Year] [smallint] NOT NULL,
[Correcting_JE] [int] NOT NULL,
[Correcting_JE_Year] [smallint] NOT NULL,
[Original_JE] [int] NOT NULL,
[Original_JE_Seq_Num] [numeric] (19, 5) NOT NULL,
[Original_JE_Year] [smallint] NOT NULL,
[Ledger_ID] [smallint] NOT NULL,
[Adjustment_Transaction] [tinyint] NOT NULL,
[APRVLUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPRVLDT] [datetime] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__GL20000__DEX_ROW__06C0E4E5] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_GL20000U] ON [dbo].[GL20000] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.GL20000 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.GL20000, inserted WHERE GL20000.DEX_ROW_ID = inserted.DEX_ROW_ID END set nocount off    
GO
ALTER TABLE [dbo].[GL20000] ADD CONSTRAINT [CK__GL20000__TIME1__03E4783A] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[GL20000] ADD CONSTRAINT [CK__GL20000__APPRVLD__05CCC0AC] CHECK ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[GL20000] ADD CONSTRAINT [CK__GL20000__DOCDATE__04D89C73] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[GL20000] ADD CONSTRAINT [CK__GL20000__EXCHDAT__02F05401] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[GL20000] ADD CONSTRAINT [CK__GL20000__LSTDTED__01080B8F] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[GL20000] ADD CONSTRAINT [CK__GL20000__ORPSTDD__01FC2FC8] CHECK ((datepart(hour,[ORPSTDDT])=(0) AND datepart(minute,[ORPSTDDT])=(0) AND datepart(second,[ORPSTDDT])=(0) AND datepart(millisecond,[ORPSTDDT])=(0)))
GO
ALTER TABLE [dbo].[GL20000] ADD CONSTRAINT [CK__GL20000__TRXDATE__0013E756] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[GL20000] ADD CONSTRAINT [PKGL20000] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL20000] ON [dbo].[GL20000] ([ACTINDX], [OPENYEAR], [SOURCDOC], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7GL20000] ON [dbo].[GL20000] ([ACTINDX], [TRXDATE], [OPENYEAR], [Ledger_ID], [DEBITAMT], [CRDTAMNT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9GL20000] ON [dbo].[GL20000] ([Back_Out_JE], [OPENYEAR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL8GL20000] ON [dbo].[GL20000] ([JRNENTRY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8GL20000] ON [dbo].[GL20000] ([JRNENTRY], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10GL20000] ON [dbo].[GL20000] ([JRNENTRY], [OPENYEAR], [TRXDATE], [RCTRXSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4GL20000] ON [dbo].[GL20000] ([JRNENTRY], [QKOFSET], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1GL20000] ON [dbo].[GL20000] ([JRNENTRY], [RCTRXSEQ], [ACTINDX], [TRXDATE], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6GL20000] ON [dbo].[GL20000] ([OPENYEAR], [ACTINDX], [CURNCYID], [TRXDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5GL20000] ON [dbo].[GL20000] ([OPENYEAR], [ACTINDX], [TRXDATE], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3GL20000] ON [dbo].[GL20000] ([OPENYEAR], [TRXDATE], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL20000] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[OPENYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL20000].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL20000].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[POLLDTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[LASTUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL20000].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[USWHPSTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[ORGNTSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[ORGNATYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[QKOFSET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[ORTRXTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[ORCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[ORMSTRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[ORMSTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[ORDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL20000].[ORPSTDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[ORTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[OrigDTASeries]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[OrigSeqNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[DTA_GL_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL20000].[DTA_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL20000].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL20000].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL20000].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL20000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[ICTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[ORCOMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[ORIGINJE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL20000].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL20000].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL20000].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL20000].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL20000].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[PSTGNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[PPSGNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL20000].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[CorrespondingUnit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[Back_Out_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[Back_Out_JE_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[Correcting_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[Correcting_JE_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[Original_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL20000].[Original_JE_Seq_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[Original_JE_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[Ledger_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL20000].[Adjustment_Transaction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL20000].[APRVLUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL20000].[APPRVLDT]'
GO
GRANT SELECT ON  [dbo].[GL20000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL20000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL20000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL20000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[GL20000] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[GL20000] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[GL20000] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[GL20000] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[GL20000] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[GL20000] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[GL20000] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[GL20000] TO [rpt_executive]
GO
