SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20200L_6] (@CMRECNUM_RS numeric(19,5), @CMRECNUM_RE numeric(19,5)) AS  set nocount on IF @CMRECNUM_RS IS NULL BEGIN SELECT TOP 25  CMRECNUM, sRecNum, RCRDSTTS, CHEKBKID, CMTrxNum, CMTrxType, TRXDATE, GLPOSTDT, TRXAMNT, CURNCYID, CMLinkID, paidtorcvdfrom, DSCRIPTN, Recond, RECONUM, ClrdAmt, clearedate, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, NOTEINDX, AUDITTRAIL, DEPTYPE, SOURCDOC, SRCDOCTYP, SRCDOCNUM, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, USERDEF1, USERDEF2, ORIGAMT, Checkbook_Amount, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, DENXRATE, MCTRXSTT, Xfr_Record_Number, EFTFLAG, DEX_ROW_ID FROM .CM20200 ORDER BY CMRECNUM DESC END ELSE IF @CMRECNUM_RS = @CMRECNUM_RE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, RCRDSTTS, CHEKBKID, CMTrxNum, CMTrxType, TRXDATE, GLPOSTDT, TRXAMNT, CURNCYID, CMLinkID, paidtorcvdfrom, DSCRIPTN, Recond, RECONUM, ClrdAmt, clearedate, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, NOTEINDX, AUDITTRAIL, DEPTYPE, SOURCDOC, SRCDOCTYP, SRCDOCNUM, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, USERDEF1, USERDEF2, ORIGAMT, Checkbook_Amount, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, DENXRATE, MCTRXSTT, Xfr_Record_Number, EFTFLAG, DEX_ROW_ID FROM .CM20200 WHERE CMRECNUM = @CMRECNUM_RS ORDER BY CMRECNUM DESC END ELSE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, RCRDSTTS, CHEKBKID, CMTrxNum, CMTrxType, TRXDATE, GLPOSTDT, TRXAMNT, CURNCYID, CMLinkID, paidtorcvdfrom, DSCRIPTN, Recond, RECONUM, ClrdAmt, clearedate, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, NOTEINDX, AUDITTRAIL, DEPTYPE, SOURCDOC, SRCDOCTYP, SRCDOCNUM, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, USERDEF1, USERDEF2, ORIGAMT, Checkbook_Amount, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, DENXRATE, MCTRXSTT, Xfr_Record_Number, EFTFLAG, DEX_ROW_ID FROM .CM20200 WHERE CMRECNUM BETWEEN @CMRECNUM_RS AND @CMRECNUM_RE ORDER BY CMRECNUM DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20200L_6] TO [DYNGRP]
GO
