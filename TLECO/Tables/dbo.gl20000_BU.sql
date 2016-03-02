CREATE TABLE [dbo].[gl20000_BU]
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
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
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
[DEX_ROW_TS] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[OPENYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl20000_BU].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gl20000_BU].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[POLLDTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[LASTUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gl20000_BU].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[USWHPSTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[ORGNTSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[ORGNATYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[QKOFSET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[ORTRXTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[ORCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[ORMSTRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[ORMSTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[ORDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gl20000_BU].[ORPSTDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[ORTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[OrigDTASeries]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[OrigSeqNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[DTA_GL_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl20000_BU].[DTA_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl20000_BU].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gl20000_BU].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gl20000_BU].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl20000_BU].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[ICTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[ORCOMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[ORIGINJE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl20000_BU].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl20000_BU].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl20000_BU].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl20000_BU].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gl20000_BU].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[PSTGNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[PPSGNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl20000_BU].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[CorrespondingUnit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[Back_Out_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[Back_Out_JE_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[Correcting_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[Correcting_JE_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[Original_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl20000_BU].[Original_JE_Seq_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[Original_JE_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[Ledger_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl20000_BU].[Adjustment_Transaction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl20000_BU].[APRVLUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gl20000_BU].[APPRVLDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gl20000_BU].[DEX_ROW_TS]'
GO
GRANT SELECT ON  [dbo].[gl20000_BU] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[gl20000_BU] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[gl20000_BU] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[gl20000_BU] TO [DYNGRP]
GO
