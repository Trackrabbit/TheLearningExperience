SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20300SS_7] (@CHEKBKID char(15), @depositnumber char(21), @RcpType smallint, @receiptdate datetime, @RCPTNMBR char(21), @CMRECNUM numeric(19,5)) AS  set nocount on SELECT TOP 1  CMRECNUM, sRecNum, CNTRLTYP, DEPOSITED, MDFUSRID, MODIFDT, CHEKBKID, depositnumber, RCPTNMBR, receiptdate, RCPTAMT, RcpType, CARDNAME, CURNCYID, BANKNAME, BNKBRNCH, GLPOSTDT, POSTEDDT, PTDUSRID, CMLinkID, RcvdFrom, DSCRIPTN, VOIDED, VOIDDATE, VOIDPDATE, VOIDDESC, USERDEF1, USERDEF2, NOTEINDX, RCRDSTTS, SOURCDOC, SRCDOCNUM, SRCDOCTYP, AUDITTRAIL, ORIGAMT, Checkbook_Amount, RATETPID, RCVGRATETPID, EXGTBLID, XCHGRATE, Receiving_Exchange_Rate, EXCHDATE, TIME1, RTCLCMTD, RCVGRTCLCMTD, EXPNDATE, CURRNIDX, DECPLCUR, RLGANLOS, Cash_Account_Index, Realized_GL_Account_Inde, DENXRATE, MCTRXSTT, Receiving_DenomEXRate, Receiving_MC_Transaction, PMNTNMBR, EFTFLAG, DEX_ROW_ID FROM .CM20300 WHERE CHEKBKID = @CHEKBKID AND depositnumber = @depositnumber AND RcpType = @RcpType AND receiptdate = @receiptdate AND RCPTNMBR = @RCPTNMBR AND CMRECNUM = @CMRECNUM ORDER BY CHEKBKID ASC, depositnumber ASC, RcpType ASC, receiptdate ASC, RCPTNMBR ASC, CMRECNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20300SS_7] TO [DYNGRP]
GO
