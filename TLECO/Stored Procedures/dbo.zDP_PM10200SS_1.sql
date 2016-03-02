SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10200SS_1] (@APTVCHNM char(21), @APTODCTY smallint, @VCHRNMBR char(21), @DOCTYPE smallint) AS  set nocount on SELECT TOP 1  VENDORID, DOCDATE, DATE1, GLPOSTDT, TIME1, APTVCHNM, APTODCTY, APTODCNM, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, VCHRNMBR, DOCTYPE, APFRDCNM, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, PPSAMDED, GSTDSAMT, TAXDTLID, POSTED, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, Credit1099Amount, DEFTEN99TYPE, DEFTEN99BOXNUMBER, DEX_ROW_ID FROM .PM10200 WHERE APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE ORDER BY APTVCHNM ASC, APTODCTY ASC, VCHRNMBR ASC, DOCTYPE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10200SS_1] TO [DYNGRP]
GO
