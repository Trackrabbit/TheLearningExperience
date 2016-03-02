CREATE TABLE [dbo].[GL10000]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[RCTRXSEQ] [numeric] (19, 5) NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[RVRSNGDT] [datetime] NOT NULL,
[RCRNGTRX] [tinyint] NOT NULL,
[BALFRCLC] [smallint] NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[LASTUSER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTDTEDT] [datetime] NOT NULL,
[USWHPSTD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXTYPE] [smallint] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[GLHDRMSG] [binary] (4) NOT NULL,
[GLHDRMS2] [binary] (4) NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RVTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[ORPSTDDT] [datetime] NOT NULL,
[ORTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OrigDTASeries] [smallint] NOT NULL,
[DTAControlNum] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DTATRXType] [smallint] NOT NULL,
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
[GLHDRVAL] [binary] (4) NOT NULL,
[PERIODID] [smallint] NOT NULL,
[OPENYEAR] [smallint] NOT NULL,
[CLOSEDYR] [smallint] NOT NULL,
[HISTRX] [tinyint] NOT NULL,
[REVPRDID] [smallint] NOT NULL,
[REVYEAR] [smallint] NOT NULL,
[REVCLYR] [smallint] NOT NULL,
[REVHIST] [tinyint] NOT NULL,
[ERRSTATE] [int] NOT NULL,
[ICTRX] [tinyint] NOT NULL,
[ORCOMID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIGINJE] [int] NOT NULL,
[ICDISTS] [tinyint] NOT NULL,
[PRNTSTUS] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[Original_JE] [int] NOT NULL,
[Original_JE_Year] [smallint] NOT NULL,
[Original_JE_Seq_Num] [numeric] (19, 5) NOT NULL,
[Correcting_Trx_Type] [smallint] NOT NULL,
[Ledger_ID] [smallint] NOT NULL,
[Adjustment_Transaction] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__GL10000__DEX_ROW__55F4C372] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_GL10000U] ON [dbo].[GL10000] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.GL10000 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.GL10000, inserted WHERE GL10000.BACHNUMB = inserted.BACHNUMB AND GL10000.BCHSOURC = inserted.BCHSOURC AND GL10000.JRNENTRY = inserted.JRNENTRY END set nocount off    
GO
ALTER TABLE [dbo].[GL10000] ADD CONSTRAINT [CK__GL10000__TIME1__66EA454A] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[GL10000] ADD CONSTRAINT [CK__GL10000__DOCDATE__6225902D] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[GL10000] ADD CONSTRAINT [CK__GL10000__EXCHDAT__6319B466] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[GL10000] ADD CONSTRAINT [CK__GL10000__LSTDTED__640DD89F] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[GL10000] ADD CONSTRAINT [CK__GL10000__ORPSTDD__6501FCD8] CHECK ((datepart(hour,[ORPSTDDT])=(0) AND datepart(minute,[ORPSTDDT])=(0) AND datepart(second,[ORPSTDDT])=(0) AND datepart(millisecond,[ORPSTDDT])=(0)))
GO
ALTER TABLE [dbo].[GL10000] ADD CONSTRAINT [CK__GL10000__RVRSNGD__65F62111] CHECK ((datepart(hour,[RVRSNGDT])=(0) AND datepart(minute,[RVRSNGDT])=(0) AND datepart(second,[RVRSNGDT])=(0) AND datepart(millisecond,[RVRSNGDT])=(0)))
GO
ALTER TABLE [dbo].[GL10000] ADD CONSTRAINT [CK__GL10000__Tax_Dat__68D28DBC] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[GL10000] ADD CONSTRAINT [CK__GL10000__TRXDATE__67DE6983] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[GL10000] ADD CONSTRAINT [PKGL10000] PRIMARY KEY NONCLUSTERED  ([BCHSOURC], [BACHNUMB], [JRNENTRY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3GL10000] ON [dbo].[GL10000] ([BCHSOURC], [CURNCYID], [JRNENTRY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4GL10000] ON [dbo].[GL10000] ([BCHSOURC], [JRNENTRY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL10000] ON [dbo].[GL10000] ([JRNENTRY]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL10000] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10000].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10000].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10000].[RVRSNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[RCRNGTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[BALFRCLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[LASTUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10000].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[USWHPSTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[TRXTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10000].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[GLHDRMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[GLHDRMS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[RVTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10000].[ORPSTDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[ORTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[OrigDTASeries]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[DTAControlNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[DTATRXType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10000].[DTA_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10000].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10000].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10000].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[GLHDRVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[OPENYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[CLOSEDYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[HISTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[REVPRDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[REVYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[REVCLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[REVHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[ERRSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[ICTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10000].[ORCOMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[ORIGINJE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[ICDISTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[PRNTSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10000].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10000].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10000].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[Original_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[Original_JE_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10000].[Original_JE_Seq_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[Correcting_Trx_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[Ledger_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10000].[Adjustment_Transaction]'
GO
GRANT SELECT ON  [dbo].[GL10000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL10000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL10000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL10000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[GL10000] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[GL10000] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[GL10000] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[GL10000] TO [RAPIDGRP]
GO
