SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL30000SS_1] (@HSTYEAR smallint, @JRNENTRY int, @RCTRXSEQ numeric(19,5), @PERIODID smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  HSTYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, ACTINDX, TRXSORCE, POLLDTRX, LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, Original_JE, Original_JE_Seq_Num, Original_JE_Year, Ledger_ID, Adjustment_Transaction, APRVLUSERID, APPRVLDT, DEX_ROW_TS, DEX_ROW_ID FROM .GL30000 WHERE HSTYEAR = @HSTYEAR AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND PERIODID = @PERIODID ORDER BY HSTYEAR ASC, JRNENTRY ASC, RCTRXSEQ ASC, PERIODID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL30000SS_1] TO [DYNGRP]
GO
