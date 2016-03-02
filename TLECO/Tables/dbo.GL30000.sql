CREATE TABLE [dbo].[GL30000]
(
[HSTYEAR] [smallint] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[RCTRXSEQ] [numeric] (19, 5) NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[ACTINDX] [int] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__GL30000__DEX_ROW__46A65FD0] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[glAccountTrxHistDeleteTrigger] on [dbo].[GL30000] for delete as  delete from GL30001 from GL30001 a, deleted d where a.HSTYEAR = d.HSTYEAR and a.ACTINDX = d.ACTINDX and a.Ledger_ID = d.Ledger_ID and a.CURNCYID = d.CURNCYID and a.JRNENTRY = d.JRNENTRY and a.TRXDATE = d.TRXDATE and a.SEQNUMBR = d.SEQNUMBR and d.PERIODID=0    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_GL30000U] ON [dbo].[GL30000] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.GL30000 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.GL30000, inserted WHERE GL30000.DEX_ROW_ID = inserted.DEX_ROW_ID END set nocount off    
GO
ALTER TABLE [dbo].[GL30000] ADD CONSTRAINT [CK__GL30000__TIME1__43C9F325] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[GL30000] ADD CONSTRAINT [CK__GL30000__APPRVLD__45B23B97] CHECK ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[GL30000] ADD CONSTRAINT [CK__GL30000__DOCDATE__44BE175E] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[GL30000] ADD CONSTRAINT [CK__GL30000__EXCHDAT__42D5CEEC] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[GL30000] ADD CONSTRAINT [CK__GL30000__LSTDTED__40ED867A] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[GL30000] ADD CONSTRAINT [CK__GL30000__ORPSTDD__41E1AAB3] CHECK ((datepart(hour,[ORPSTDDT])=(0) AND datepart(minute,[ORPSTDDT])=(0) AND datepart(second,[ORPSTDDT])=(0) AND datepart(millisecond,[ORPSTDDT])=(0)))
GO
ALTER TABLE [dbo].[GL30000] ADD CONSTRAINT [CK__GL30000__TRXDATE__3FF96241] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[GL30000] ADD CONSTRAINT [PKGL30000] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3GL30000] ON [dbo].[GL30000] ([ACTINDX], [HSTYEAR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8GL30000] ON [dbo].[GL30000] ([ACTINDX], [TRXDATE], [HSTYEAR], [Ledger_ID], [DEBITAMT], [CRDTAMNT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9GL30000] ON [dbo].[GL30000] ([Back_Out_JE], [HSTYEAR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7GL30000] ON [dbo].[GL30000] ([CURNCYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6GL30000] ON [dbo].[GL30000] ([HSTYEAR], [ACTINDX], [CURNCYID], [TRXDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5GL30000] ON [dbo].[GL30000] ([HSTYEAR], [ACTINDX], [TRXDATE], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1GL30000] ON [dbo].[GL30000] ([HSTYEAR], [JRNENTRY], [RCTRXSEQ], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL30000] ON [dbo].[GL30000] ([HSTYEAR], [TRXDATE], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10GL30000] ON [dbo].[GL30000] ([JRNENTRY], [HSTYEAR], [TRXDATE], [RCTRXSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4GL30000] ON [dbo].[GL30000] ([JRNENTRY], [QKOFSET], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL30000] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[HSTYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30000].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL30000].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[POLLDTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[LASTUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL30000].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[USWHPSTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[ORGNTSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[ORGNATYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[QKOFSET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[ORTRXTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[ORCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[ORMSTRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[ORMSTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[ORDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL30000].[ORPSTDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[ORTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[OrigDTASeries]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[OrigSeqNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[DTA_GL_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30000].[DTA_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30000].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL30000].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL30000].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[ICTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[ORCOMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[ORIGINJE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30000].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30000].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30000].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30000].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL30000].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[PSTGNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[PPSGNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30000].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[CorrespondingUnit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[Back_Out_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[Back_Out_JE_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[Correcting_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[Correcting_JE_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[Original_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30000].[Original_JE_Seq_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[Original_JE_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[Ledger_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30000].[Adjustment_Transaction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30000].[APRVLUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL30000].[APPRVLDT]'
GO
GRANT SELECT ON  [dbo].[GL30000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL30000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL30000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL30000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[GL30000] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[GL30000] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[GL30000] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[GL30000] TO [rpt_executive]
GO
