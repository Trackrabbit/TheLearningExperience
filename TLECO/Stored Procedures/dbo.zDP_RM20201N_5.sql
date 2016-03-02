SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM20201N_5] (@BS int, @CUSTNMBR char(15), @APFRDCTY smallint, @APFRDCNM char(21), @DEX_ROW_ID int, @CUSTNMBR_RS char(15), @APFRDCTY_RS smallint, @APFRDCNM_RS char(21), @CUSTNMBR_RE char(15), @APFRDCTY_RE smallint, @APFRDCNM_RE char(21)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, TRXSORCE, DATE1, TIME1, GLPOSTDT, POSTED, TAXDTLID, APTODCNM, APTODCTY, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPTOAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPTOAM, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, APFRDCNM, APFRDCTY, APFRDCDT, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, GSTDSAMT, PPSAMDED, RLGANLOS, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, DEX_ROW_ID FROM .RM20201 WHERE ( CUSTNMBR = @CUSTNMBR AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND APFRDCTY = @APFRDCTY AND APFRDCNM > @APFRDCNM OR CUSTNMBR = @CUSTNMBR AND APFRDCTY > @APFRDCTY OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, APFRDCTY ASC, APFRDCNM ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, TRXSORCE, DATE1, TIME1, GLPOSTDT, POSTED, TAXDTLID, APTODCNM, APTODCTY, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPTOAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPTOAM, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, APFRDCNM, APFRDCTY, APFRDCDT, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, GSTDSAMT, PPSAMDED, RLGANLOS, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, DEX_ROW_ID FROM .RM20201 WHERE CUSTNMBR = @CUSTNMBR_RS AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND ( CUSTNMBR = @CUSTNMBR AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND APFRDCTY = @APFRDCTY AND APFRDCNM > @APFRDCNM OR CUSTNMBR = @CUSTNMBR AND APFRDCTY > @APFRDCTY OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, APFRDCTY ASC, APFRDCNM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, TRXSORCE, DATE1, TIME1, GLPOSTDT, POSTED, TAXDTLID, APTODCNM, APTODCTY, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPTOAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPTOAM, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, APFRDCNM, APFRDCTY, APFRDCDT, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, GSTDSAMT, PPSAMDED, RLGANLOS, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, DEX_ROW_ID FROM .RM20201 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND ( CUSTNMBR = @CUSTNMBR AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND APFRDCTY = @APFRDCTY AND APFRDCNM > @APFRDCNM OR CUSTNMBR = @CUSTNMBR AND APFRDCTY > @APFRDCTY OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, APFRDCTY ASC, APFRDCNM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM20201N_5] TO [DYNGRP]
GO
