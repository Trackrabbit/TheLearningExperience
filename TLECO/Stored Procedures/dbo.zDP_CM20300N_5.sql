SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20300N_5] (@BS int, @sRecNum char(21), @sRecNum_RS char(21), @sRecNum_RE char(21)) AS  set nocount on IF @sRecNum_RS IS NULL BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 WHERE ( sRecNum > @sRecNum ) ORDER BY sRecNum ASC END ELSE IF @sRecNum_RS = @sRecNum_RE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 WHERE sRecNum = @sRecNum_RS AND ( sRecNum > @sRecNum ) ORDER BY sRecNum ASC END ELSE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 WHERE sRecNum BETWEEN @sRecNum_RS AND @sRecNum_RE AND ( sRecNum > @sRecNum ) ORDER BY sRecNum ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20300N_5] TO [DYNGRP]
GO
