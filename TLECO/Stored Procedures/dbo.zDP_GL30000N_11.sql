SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL30000N_11] (@BS int, @DEX_ROW_ID int, @DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS /* 14.00.0084.000 */ set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  HSTYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, ACTINDX, TRXSORCE, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL30000 WHERE ( DEX_ROW_ID > @DEX_ROW_ID ) ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  HSTYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, ACTINDX, TRXSORCE, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL30000 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS AND ( DEX_ROW_ID > @DEX_ROW_ID ) ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  HSTYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, ACTINDX, TRXSORCE, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL30000 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE AND ( DEX_ROW_ID > @DEX_ROW_ID ) ORDER BY DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL30000N_11] TO [DYNGRP]
GO
