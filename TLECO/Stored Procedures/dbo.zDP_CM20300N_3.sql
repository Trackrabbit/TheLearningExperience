SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20300N_3] (@BS int, @CHEKBKID char(15), @depositnumber char(21), @RCPTNMBR char(21), @RcpType smallint, @receiptdate datetime, @DEX_ROW_ID int, @CHEKBKID_RS char(15), @depositnumber_RS char(21), @RCPTNMBR_RS char(21), @RcpType_RS smallint, @receiptdate_RS datetime, @CHEKBKID_RE char(15), @depositnumber_RE char(21), @RCPTNMBR_RE char(21), @RcpType_RE smallint, @receiptdate_RE datetime) AS  set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 WHERE ( CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR = @RCPTNMBR AND RcpType = @RcpType AND receiptdate = @receiptdate AND DEX_ROW_ID > @DEX_ROW_ID OR CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR = @RCPTNMBR AND RcpType = @RcpType AND receiptdate > @receiptdate OR CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR = @RCPTNMBR AND RcpType > @RcpType OR CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR > @RCPTNMBR OR CHEKBKID = @CHEKBKID AND depositnumber > @depositnumber OR CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC, depositnumber ASC, RCPTNMBR ASC, RcpType ASC, receiptdate ASC, DEX_ROW_ID ASC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 WHERE CHEKBKID = @CHEKBKID_RS AND depositnumber BETWEEN @depositnumber_RS AND @depositnumber_RE AND RCPTNMBR BETWEEN @RCPTNMBR_RS AND @RCPTNMBR_RE AND RcpType BETWEEN @RcpType_RS AND @RcpType_RE AND receiptdate BETWEEN @receiptdate_RS AND @receiptdate_RE AND ( CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR = @RCPTNMBR AND RcpType = @RcpType AND receiptdate = @receiptdate AND DEX_ROW_ID > @DEX_ROW_ID OR CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR = @RCPTNMBR AND RcpType = @RcpType AND receiptdate > @receiptdate OR CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR = @RCPTNMBR AND RcpType > @RcpType OR CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR > @RCPTNMBR OR CHEKBKID = @CHEKBKID AND depositnumber > @depositnumber OR CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC, depositnumber ASC, RCPTNMBR ASC, RcpType ASC, receiptdate ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND depositnumber BETWEEN @depositnumber_RS AND @depositnumber_RE AND RCPTNMBR BETWEEN @RCPTNMBR_RS AND @RCPTNMBR_RE AND RcpType BETWEEN @RcpType_RS AND @RcpType_RE AND receiptdate BETWEEN @receiptdate_RS AND @receiptdate_RE AND ( CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR = @RCPTNMBR AND RcpType = @RcpType AND receiptdate = @receiptdate AND DEX_ROW_ID > @DEX_ROW_ID OR CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR = @RCPTNMBR AND RcpType = @RcpType AND receiptdate > @receiptdate OR CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR = @RCPTNMBR AND RcpType > @RcpType OR CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RCPTNMBR > @RCPTNMBR OR CHEKBKID = @CHEKBKID AND depositnumber > @depositnumber OR CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC, depositnumber ASC, RCPTNMBR ASC, RcpType ASC, receiptdate ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20300N_3] TO [DYNGRP]
GO
