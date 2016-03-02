SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL30000UN_9] (@BS int, @Back_Out_JE int, @HSTYEAR smallint, @Back_Out_JE_RS int, @HSTYEAR_RS smallint, @Back_Out_JE_RE int, @HSTYEAR_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @Back_Out_JE_RS IS NULL BEGIN SELECT TOP 25  HSTYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, ACTINDX, TRXSORCE, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL30000 WHERE ( Back_Out_JE = @Back_Out_JE AND HSTYEAR > @HSTYEAR OR Back_Out_JE > @Back_Out_JE ) ORDER BY Back_Out_JE ASC, HSTYEAR ASC, DEX_ROW_ID ASC END ELSE IF @Back_Out_JE_RS = @Back_Out_JE_RE BEGIN SELECT TOP 25  HSTYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, ACTINDX, TRXSORCE, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL30000 WHERE Back_Out_JE = @Back_Out_JE_RS AND HSTYEAR BETWEEN @HSTYEAR_RS AND @HSTYEAR_RE AND ( Back_Out_JE = @Back_Out_JE AND HSTYEAR > @HSTYEAR OR Back_Out_JE > @Back_Out_JE ) ORDER BY Back_Out_JE ASC, HSTYEAR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  HSTYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, ACTINDX, TRXSORCE, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL30000 WHERE Back_Out_JE BETWEEN @Back_Out_JE_RS AND @Back_Out_JE_RE AND HSTYEAR BETWEEN @HSTYEAR_RS AND @HSTYEAR_RE AND ( Back_Out_JE = @Back_Out_JE AND HSTYEAR > @HSTYEAR OR Back_Out_JE > @Back_Out_JE ) ORDER BY Back_Out_JE ASC, HSTYEAR ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL30000UN_9] TO [DYNGRP]
GO
