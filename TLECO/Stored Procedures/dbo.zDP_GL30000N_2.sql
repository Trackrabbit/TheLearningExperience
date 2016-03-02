SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL30000N_2] (@BS int, @HSTYEAR smallint, @TRXDATE datetime, @ACTINDX int, @DEX_ROW_ID int, @HSTYEAR_RS smallint, @TRXDATE_RS datetime, @ACTINDX_RS int, @HSTYEAR_RE smallint, @TRXDATE_RE datetime, @ACTINDX_RE int) AS /* 14.00.0084.000 */ set nocount on IF @HSTYEAR_RS IS NULL BEGIN SELECT TOP 25  HSTYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, ACTINDX, TRXSORCE, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL30000 WHERE ( HSTYEAR = @HSTYEAR AND TRXDATE = @TRXDATE AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR HSTYEAR = @HSTYEAR AND TRXDATE = @TRXDATE AND ACTINDX > @ACTINDX OR HSTYEAR = @HSTYEAR AND TRXDATE > @TRXDATE OR HSTYEAR > @HSTYEAR ) ORDER BY HSTYEAR ASC, TRXDATE ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE IF @HSTYEAR_RS = @HSTYEAR_RE BEGIN SELECT TOP 25  HSTYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, ACTINDX, TRXSORCE, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL30000 WHERE HSTYEAR = @HSTYEAR_RS AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( HSTYEAR = @HSTYEAR AND TRXDATE = @TRXDATE AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR HSTYEAR = @HSTYEAR AND TRXDATE = @TRXDATE AND ACTINDX > @ACTINDX OR HSTYEAR = @HSTYEAR AND TRXDATE > @TRXDATE OR HSTYEAR > @HSTYEAR ) ORDER BY HSTYEAR ASC, TRXDATE ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  HSTYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, ACTINDX, TRXSORCE, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL30000 WHERE HSTYEAR BETWEEN @HSTYEAR_RS AND @HSTYEAR_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( HSTYEAR = @HSTYEAR AND TRXDATE = @TRXDATE AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR HSTYEAR = @HSTYEAR AND TRXDATE = @TRXDATE AND ACTINDX > @ACTINDX OR HSTYEAR = @HSTYEAR AND TRXDATE > @TRXDATE OR HSTYEAR > @HSTYEAR ) ORDER BY HSTYEAR ASC, TRXDATE ASC, ACTINDX ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL30000N_2] TO [DYNGRP]
GO
