SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20200SS_3] (@CHEKBKID char(15), @CMTrxNum char(21), @CMTrxType smallint) AS  set nocount on SELECT TOP 1  CMRECNUM, sRecNum, RCRDSTTS, CHEKBKID, CMTrxNum, CMTrxType, TRXDATE, GLPOSTDT, TRXAMNT, CURNCYID, CMLinkID, paidtorcvdfrom, DSCRIPTN, Recond, RECONUM, ClrdAmt, clearedate, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, NOTEINDX, AUDITTRAIL, DEPTYPE, SOURCDOC, SRCDOCTYP, SRCDOCNUM, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, USERDEF1, USERDEF2, ORIGAMT, Checkbook_Amount, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, DENXRATE, MCTRXSTT, Xfr_Record_Number, EFTFLAG, DEX_ROW_ID FROM .CM20200 WHERE CHEKBKID = @CHEKBKID AND CMTrxNum = @CMTrxNum AND CMTrxType = @CMTrxType ORDER BY CHEKBKID ASC, CMTrxNum ASC, CMTrxType ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20200SS_3] TO [DYNGRP]
GO