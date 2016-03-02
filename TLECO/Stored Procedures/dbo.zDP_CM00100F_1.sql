SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00100F_1] (@CHEKBKID_RS char(15), @CHEKBKID_RE char(15)) AS  set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  CHEKBKID, DSCRIPTN, BANKID, CURNCYID, ACTINDX, BNKACTNM, NXTCHNUM, Next_Deposit_Number, INACTIVE, DYDEPCLR, XCDMCHPW, MXCHDLR, DUPCHNUM, OVCHNUM1, LOCATNID, NOTEINDX, CMUSRDF1, CMUSRDF2, Last_Reconciled_Date, Last_Reconciled_Balance, CURRBLNC, CREATDDT, MODIFDT, Recond, Reconcile_In_Progress, Deposit_In_Progress, CHBKPSWD, CURNCYPD, CRNCYRCD, ADPVADLR, ADPVAPWD, DYCHTCLR, CMPANYID, CHKBKTYP, DDACTNUM, DDINDNAM, DDTRANS, PaymentRateTypeID, DepositRateTypeID, CashInTransAcctIdx, DEX_ROW_ID FROM .CM00100 ORDER BY CHEKBKID ASC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  CHEKBKID, DSCRIPTN, BANKID, CURNCYID, ACTINDX, BNKACTNM, NXTCHNUM, Next_Deposit_Number, INACTIVE, DYDEPCLR, XCDMCHPW, MXCHDLR, DUPCHNUM, OVCHNUM1, LOCATNID, NOTEINDX, CMUSRDF1, CMUSRDF2, Last_Reconciled_Date, Last_Reconciled_Balance, CURRBLNC, CREATDDT, MODIFDT, Recond, Reconcile_In_Progress, Deposit_In_Progress, CHBKPSWD, CURNCYPD, CRNCYRCD, ADPVADLR, ADPVAPWD, DYCHTCLR, CMPANYID, CHKBKTYP, DDACTNUM, DDINDNAM, DDTRANS, PaymentRateTypeID, DepositRateTypeID, CashInTransAcctIdx, DEX_ROW_ID FROM .CM00100 WHERE CHEKBKID = @CHEKBKID_RS ORDER BY CHEKBKID ASC END ELSE BEGIN SELECT TOP 25  CHEKBKID, DSCRIPTN, BANKID, CURNCYID, ACTINDX, BNKACTNM, NXTCHNUM, Next_Deposit_Number, INACTIVE, DYDEPCLR, XCDMCHPW, MXCHDLR, DUPCHNUM, OVCHNUM1, LOCATNID, NOTEINDX, CMUSRDF1, CMUSRDF2, Last_Reconciled_Date, Last_Reconciled_Balance, CURRBLNC, CREATDDT, MODIFDT, Recond, Reconcile_In_Progress, Deposit_In_Progress, CHBKPSWD, CURNCYPD, CRNCYRCD, ADPVADLR, ADPVAPWD, DYCHTCLR, CMPANYID, CHKBKTYP, DDACTNUM, DDINDNAM, DDTRANS, PaymentRateTypeID, DepositRateTypeID, CashInTransAcctIdx, DEX_ROW_ID FROM .CM00100 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE ORDER BY CHEKBKID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00100F_1] TO [DYNGRP]
GO
