SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10200UN_3] (@BS int, @VENDORID char(15), @DOCTYPE smallint, @APFRDCNM char(21), @VENDORID_RS char(15), @DOCTYPE_RS smallint, @APFRDCNM_RS char(21), @VENDORID_RE char(15), @DOCTYPE_RE smallint, @APFRDCNM_RE char(21)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VENDORID, DOCDATE, DATE1, GLPOSTDT, TIME1, APTVCHNM, APTODCTY, APTODCNM, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, VCHRNMBR, DOCTYPE, APFRDCNM, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, PPSAMDED, GSTDSAMT, TAXDTLID, POSTED, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, Credit1099Amount, DEFTEN99TYPE, DEFTEN99BOXNUMBER, DEX_ROW_ID FROM .PM10200 WHERE ( VENDORID = @VENDORID AND DOCTYPE = @DOCTYPE AND APFRDCNM > @APFRDCNM OR VENDORID = @VENDORID AND DOCTYPE > @DOCTYPE OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DOCTYPE ASC, APFRDCNM ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VENDORID, DOCDATE, DATE1, GLPOSTDT, TIME1, APTVCHNM, APTODCTY, APTODCNM, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, VCHRNMBR, DOCTYPE, APFRDCNM, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, PPSAMDED, GSTDSAMT, TAXDTLID, POSTED, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, Credit1099Amount, DEFTEN99TYPE, DEFTEN99BOXNUMBER, DEX_ROW_ID FROM .PM10200 WHERE VENDORID = @VENDORID_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND ( VENDORID = @VENDORID AND DOCTYPE = @DOCTYPE AND APFRDCNM > @APFRDCNM OR VENDORID = @VENDORID AND DOCTYPE > @DOCTYPE OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DOCTYPE ASC, APFRDCNM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VENDORID, DOCDATE, DATE1, GLPOSTDT, TIME1, APTVCHNM, APTODCTY, APTODCNM, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, VCHRNMBR, DOCTYPE, APFRDCNM, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, PPSAMDED, GSTDSAMT, TAXDTLID, POSTED, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, Credit1099Amount, DEFTEN99TYPE, DEFTEN99BOXNUMBER, DEX_ROW_ID FROM .PM10200 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND ( VENDORID = @VENDORID AND DOCTYPE = @DOCTYPE AND APFRDCNM > @APFRDCNM OR VENDORID = @VENDORID AND DOCTYPE > @DOCTYPE OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DOCTYPE ASC, APFRDCNM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10200UN_3] TO [DYNGRP]
GO
