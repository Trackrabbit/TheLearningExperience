SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10200N_1] (@BS int, @APTVCHNM char(21), @APTODCTY smallint, @VCHRNMBR char(21), @DOCTYPE smallint, @APTVCHNM_RS char(21), @APTODCTY_RS smallint, @VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @APTVCHNM_RE char(21), @APTODCTY_RE smallint, @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint) AS  set nocount on IF @APTVCHNM_RS IS NULL BEGIN SELECT TOP 25  VENDORID, DOCDATE, DATE1, GLPOSTDT, TIME1, APTVCHNM, APTODCTY, APTODCNM, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, VCHRNMBR, DOCTYPE, APFRDCNM, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, PPSAMDED, GSTDSAMT, TAXDTLID, POSTED, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, Credit1099Amount, DEFTEN99TYPE, DEFTEN99BOXNUMBER, DEX_ROW_ID FROM .PM10200 WHERE ( APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND VCHRNMBR > @VCHRNMBR OR APTVCHNM = @APTVCHNM AND APTODCTY > @APTODCTY OR APTVCHNM > @APTVCHNM ) ORDER BY APTVCHNM ASC, APTODCTY ASC, VCHRNMBR ASC, DOCTYPE ASC END ELSE IF @APTVCHNM_RS = @APTVCHNM_RE BEGIN SELECT TOP 25  VENDORID, DOCDATE, DATE1, GLPOSTDT, TIME1, APTVCHNM, APTODCTY, APTODCNM, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, VCHRNMBR, DOCTYPE, APFRDCNM, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, PPSAMDED, GSTDSAMT, TAXDTLID, POSTED, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, Credit1099Amount, DEFTEN99TYPE, DEFTEN99BOXNUMBER, DEX_ROW_ID FROM .PM10200 WHERE APTVCHNM = @APTVCHNM_RS AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND ( APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND VCHRNMBR > @VCHRNMBR OR APTVCHNM = @APTVCHNM AND APTODCTY > @APTODCTY OR APTVCHNM > @APTVCHNM ) ORDER BY APTVCHNM ASC, APTODCTY ASC, VCHRNMBR ASC, DOCTYPE ASC END ELSE BEGIN SELECT TOP 25  VENDORID, DOCDATE, DATE1, GLPOSTDT, TIME1, APTVCHNM, APTODCTY, APTODCNM, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, VCHRNMBR, DOCTYPE, APFRDCNM, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, PPSAMDED, GSTDSAMT, TAXDTLID, POSTED, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, Credit1099Amount, DEFTEN99TYPE, DEFTEN99BOXNUMBER, DEX_ROW_ID FROM .PM10200 WHERE APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND ( APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND VCHRNMBR > @VCHRNMBR OR APTVCHNM = @APTVCHNM AND APTODCTY > @APTODCTY OR APTVCHNM > @APTVCHNM ) ORDER BY APTVCHNM ASC, APTODCTY ASC, VCHRNMBR ASC, DOCTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10200N_1] TO [DYNGRP]
GO
