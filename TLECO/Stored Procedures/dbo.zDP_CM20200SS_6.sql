SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20200SS_6] (@CMRECNUM numeric(19,5)) AS  set nocount on SELECT TOP 1  CMRECNUM, sRecNum, RCRDSTTS, CHEKBKID, CMTrxNum, CMTrxType, TRXDATE, GLPOSTDT, TRXAMNT, CURNCYID, CMLinkID, paidtorcvdfrom, DSCRIPTN, Recond, RECONUM, ClrdAmt, clearedate, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, NOTEINDX, AUDITTRAIL, DEPTYPE, SOURCDOC, SRCDOCTYP, SRCDOCNUM, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, USERDEF1, USERDEF2, ORIGAMT, Checkbook_Amount, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, DENXRATE, MCTRXSTT, Xfr_Record_Number, EFTFLAG, DEX_ROW_ID FROM .CM20200 WHERE CMRECNUM = @CMRECNUM ORDER BY CMRECNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20200SS_6] TO [DYNGRP]
GO
