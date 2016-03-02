SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL20000L_7] (@ACTINDX_RS int, @TRXDATE_RS datetime, @OPENYEAR_RS smallint, @Ledger_ID_RS smallint, @DEBITAMT_RS numeric(19,5), @CRDTAMNT_RS numeric(19,5), @ACTINDX_RE int, @TRXDATE_RE datetime, @OPENYEAR_RE smallint, @Ledger_ID_RE smallint, @DEBITAMT_RE numeric(19,5), @CRDTAMNT_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  OPENYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, TRXSORCE, ACTINDX, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL20000 ORDER BY ACTINDX DESC, TRXDATE DESC, OPENYEAR DESC, Ledger_ID DESC, DEBITAMT DESC, CRDTAMNT DESC, DEX_ROW_ID DESC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  OPENYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, TRXSORCE, ACTINDX, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL20000 WHERE ACTINDX = @ACTINDX_RS AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND OPENYEAR BETWEEN @OPENYEAR_RS AND @OPENYEAR_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND DEBITAMT BETWEEN @DEBITAMT_RS AND @DEBITAMT_RE AND CRDTAMNT BETWEEN @CRDTAMNT_RS AND @CRDTAMNT_RE ORDER BY ACTINDX DESC, TRXDATE DESC, OPENYEAR DESC, Ledger_ID DESC, DEBITAMT DESC, CRDTAMNT DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  OPENYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, TRXSORCE, ACTINDX, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL20000 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND OPENYEAR BETWEEN @OPENYEAR_RS AND @OPENYEAR_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND DEBITAMT BETWEEN @DEBITAMT_RS AND @DEBITAMT_RE AND CRDTAMNT BETWEEN @CRDTAMNT_RS AND @CRDTAMNT_RE ORDER BY ACTINDX DESC, TRXDATE DESC, OPENYEAR DESC, Ledger_ID DESC, DEBITAMT DESC, CRDTAMNT DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL20000L_7] TO [DYNGRP]
GO