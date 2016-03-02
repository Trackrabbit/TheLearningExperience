SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20300F_2] (@CHEKBKID_RS char(15), @CURNCYID_RS char(15), @depositnumber_RS char(21), @RcpType_RS smallint, @receiptdate_RS datetime, @RCPTNMBR_RS char(21), @CMRECNUM_RS numeric(19,5), @CHEKBKID_RE char(15), @CURNCYID_RE char(15), @depositnumber_RE char(21), @RcpType_RE smallint, @receiptdate_RE datetime, @RCPTNMBR_RE char(21), @CMRECNUM_RE numeric(19,5)) AS  set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 ORDER BY CHEKBKID ASC, CURNCYID ASC, depositnumber ASC, RcpType ASC, receiptdate ASC, RCPTNMBR ASC, CMRECNUM ASC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 WHERE CHEKBKID = @CHEKBKID_RS AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND depositnumber BETWEEN @depositnumber_RS AND @depositnumber_RE AND RcpType BETWEEN @RcpType_RS AND @RcpType_RE AND receiptdate BETWEEN @receiptdate_RS AND @receiptdate_RE AND RCPTNMBR BETWEEN @RCPTNMBR_RS AND @RCPTNMBR_RE AND CMRECNUM BETWEEN @CMRECNUM_RS AND @CMRECNUM_RE ORDER BY CHEKBKID ASC, CURNCYID ASC, depositnumber ASC, RcpType ASC, receiptdate ASC, RCPTNMBR ASC, CMRECNUM ASC END ELSE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND depositnumber BETWEEN @depositnumber_RS AND @depositnumber_RE AND RcpType BETWEEN @RcpType_RS AND @RcpType_RE AND receiptdate BETWEEN @receiptdate_RS AND @receiptdate_RE AND RCPTNMBR BETWEEN @RCPTNMBR_RS AND @RCPTNMBR_RE AND CMRECNUM BETWEEN @CMRECNUM_RS AND @CMRECNUM_RE ORDER BY CHEKBKID ASC, CURNCYID ASC, depositnumber ASC, RcpType ASC, receiptdate ASC, RCPTNMBR ASC, CMRECNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20300F_2] TO [DYNGRP]
GO
