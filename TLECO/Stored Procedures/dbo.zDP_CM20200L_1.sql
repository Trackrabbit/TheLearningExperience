SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20200L_1] (@CHEKBKID_RS char(15), @Recond_RS tinyint, @CMTrxNum_RS char(21), @CMTrxType_RS smallint, @CHEKBKID_RE char(15), @Recond_RE tinyint, @CMTrxNum_RE char(21), @CMTrxType_RE smallint) AS  set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  CMRECNUM, sRecNum, RCRDSTTS, CHEKBKID, CMTrxNum, CMTrxType, TRXDATE, GLPOSTDT, TRXAMNT, CURNCYID, CMLinkID, paidtorcvdfrom, DSCRIPTN, Recond, RECONUM, ClrdAmt, clearedate, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, NOTEINDX, AUDITTRAIL, DEPTYPE, SOURCDOC, SRCDOCTYP, SRCDOCNUM, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, USERDEF1, USERDEF2, ORIGAMT, Checkbook_Amount, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, DENXRATE, MCTRXSTT, Xfr_Record_Number, EFTFLAG, DEX_ROW_ID FROM .CM20200 ORDER BY CHEKBKID DESC, Recond DESC, CMTrxNum DESC, CMTrxType DESC, DEX_ROW_ID DESC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, RCRDSTTS, CHEKBKID, CMTrxNum, CMTrxType, TRXDATE, GLPOSTDT, TRXAMNT, CURNCYID, CMLinkID, paidtorcvdfrom, DSCRIPTN, Recond, RECONUM, ClrdAmt, clearedate, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, NOTEINDX, AUDITTRAIL, DEPTYPE, SOURCDOC, SRCDOCTYP, SRCDOCNUM, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, USERDEF1, USERDEF2, ORIGAMT, Checkbook_Amount, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, DENXRATE, MCTRXSTT, Xfr_Record_Number, EFTFLAG, DEX_ROW_ID FROM .CM20200 WHERE CHEKBKID = @CHEKBKID_RS AND Recond BETWEEN @Recond_RS AND @Recond_RE AND CMTrxNum BETWEEN @CMTrxNum_RS AND @CMTrxNum_RE AND CMTrxType BETWEEN @CMTrxType_RS AND @CMTrxType_RE ORDER BY CHEKBKID DESC, Recond DESC, CMTrxNum DESC, CMTrxType DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, RCRDSTTS, CHEKBKID, CMTrxNum, CMTrxType, TRXDATE, GLPOSTDT, TRXAMNT, CURNCYID, CMLinkID, paidtorcvdfrom, DSCRIPTN, Recond, RECONUM, ClrdAmt, clearedate, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, NOTEINDX, AUDITTRAIL, DEPTYPE, SOURCDOC, SRCDOCTYP, SRCDOCNUM, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, USERDEF1, USERDEF2, ORIGAMT, Checkbook_Amount, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, DENXRATE, MCTRXSTT, Xfr_Record_Number, EFTFLAG, DEX_ROW_ID FROM .CM20200 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND Recond BETWEEN @Recond_RS AND @Recond_RE AND CMTrxNum BETWEEN @CMTrxNum_RS AND @CMTrxNum_RE AND CMTrxType BETWEEN @CMTrxType_RS AND @CMTrxType_RE ORDER BY CHEKBKID DESC, Recond DESC, CMTrxNum DESC, CMTrxType DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20200L_1] TO [DYNGRP]
GO
