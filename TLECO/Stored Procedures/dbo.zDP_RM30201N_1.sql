SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30201N_1] (@BS int, @APTODCTY smallint, @APTODCNM char(21), @DEX_ROW_ID int, @APTODCTY_RS smallint, @APTODCNM_RS char(21), @APTODCTY_RE smallint, @APTODCNM_RE char(21)) AS  set nocount on IF @APTODCTY_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, TRXSORCE, DATE1, TIME1, GLPOSTDT, POSTED, TAXDTLID, APTODCNM, APTODCTY, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPTOAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPTOAM, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, APFRDCNM, APFRDCTY, APFRDCDT, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, GSTDSAMT, PPSAMDED, RLGANLOS, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, DEX_ROW_ID FROM .RM30201 WHERE ( APTODCTY = @APTODCTY AND APTODCNM = @APTODCNM AND DEX_ROW_ID > @DEX_ROW_ID OR APTODCTY = @APTODCTY AND APTODCNM > @APTODCNM OR APTODCTY > @APTODCTY ) ORDER BY APTODCTY ASC, APTODCNM ASC, DEX_ROW_ID ASC END ELSE IF @APTODCTY_RS = @APTODCTY_RE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, TRXSORCE, DATE1, TIME1, GLPOSTDT, POSTED, TAXDTLID, APTODCNM, APTODCTY, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPTOAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPTOAM, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, APFRDCNM, APFRDCTY, APFRDCDT, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, GSTDSAMT, PPSAMDED, RLGANLOS, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, DEX_ROW_ID FROM .RM30201 WHERE APTODCTY = @APTODCTY_RS AND APTODCNM BETWEEN @APTODCNM_RS AND @APTODCNM_RE AND ( APTODCTY = @APTODCTY AND APTODCNM = @APTODCNM AND DEX_ROW_ID > @DEX_ROW_ID OR APTODCTY = @APTODCTY AND APTODCNM > @APTODCNM OR APTODCTY > @APTODCTY ) ORDER BY APTODCTY ASC, APTODCNM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, TRXSORCE, DATE1, TIME1, GLPOSTDT, POSTED, TAXDTLID, APTODCNM, APTODCTY, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPTOAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPTOAM, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, APFRDCNM, APFRDCTY, APFRDCDT, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, GSTDSAMT, PPSAMDED, RLGANLOS, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, DEX_ROW_ID FROM .RM30201 WHERE APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND APTODCNM BETWEEN @APTODCNM_RS AND @APTODCNM_RE AND ( APTODCTY = @APTODCTY AND APTODCNM = @APTODCNM AND DEX_ROW_ID > @DEX_ROW_ID OR APTODCTY = @APTODCTY AND APTODCNM > @APTODCNM OR APTODCTY > @APTODCTY ) ORDER BY APTODCTY ASC, APTODCNM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30201N_1] TO [DYNGRP]
GO
