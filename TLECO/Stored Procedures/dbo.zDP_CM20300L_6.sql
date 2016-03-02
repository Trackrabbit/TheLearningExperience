SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20300L_6] (@CHEKBKID_RS char(15), @depositnumber_RS char(21), @VOIDED_RS tinyint, @CURNCYID_RS char(15), @RcpType_RS smallint, @receiptdate_RS datetime, @RCPTNMBR_RS char(21), @CHEKBKID_RE char(15), @depositnumber_RE char(21), @VOIDED_RE tinyint, @CURNCYID_RE char(15), @RcpType_RE smallint, @receiptdate_RE datetime, @RCPTNMBR_RE char(21)) AS  set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 ORDER BY CHEKBKID DESC, depositnumber DESC, VOIDED DESC, CURNCYID DESC, RcpType DESC, receiptdate DESC, RCPTNMBR DESC, DEX_ROW_ID DESC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 WHERE CHEKBKID = @CHEKBKID_RS AND depositnumber BETWEEN @depositnumber_RS AND @depositnumber_RE AND VOIDED BETWEEN @VOIDED_RS AND @VOIDED_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND RcpType BETWEEN @RcpType_RS AND @RcpType_RE AND receiptdate BETWEEN @receiptdate_RS AND @receiptdate_RE AND RCPTNMBR BETWEEN @RCPTNMBR_RS AND @RCPTNMBR_RE ORDER BY CHEKBKID DESC, depositnumber DESC, VOIDED DESC, CURNCYID DESC, RcpType DESC, receiptdate DESC, RCPTNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND depositnumber BETWEEN @depositnumber_RS AND @depositnumber_RE AND VOIDED BETWEEN @VOIDED_RS AND @VOIDED_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND RcpType BETWEEN @RcpType_RS AND @RcpType_RE AND receiptdate BETWEEN @receiptdate_RS AND @receiptdate_RE AND RCPTNMBR BETWEEN @RCPTNMBR_RS AND @RCPTNMBR_RE ORDER BY CHEKBKID DESC, depositnumber DESC, VOIDED DESC, CURNCYID DESC, RcpType DESC, receiptdate DESC, RCPTNMBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20300L_6] TO [DYNGRP]
GO
