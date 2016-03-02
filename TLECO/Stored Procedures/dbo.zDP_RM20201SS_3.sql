SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM20201SS_3] (@TRXSORCE char(13)) AS  set nocount on SELECT TOP 1  CUSTNMBR, CPRCSTNM, TRXSORCE, DATE1, TIME1, GLPOSTDT, POSTED, TAXDTLID, APTODCNM, APTODCTY, APTODCDT, ApplyToGLPostDate, CURNCYID, CURRNIDX, APPTOAMT, DISTKNAM, DISAVTKN, WROFAMNT, ORAPTOAM, ORDISTKN, ORDATKN, ORWROFAM, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, APFRDCNM, APFRDCTY, APFRDCDT, ApplyFromGLPostDate, FROMCURR, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, GSTDSAMT, PPSAMDED, RLGANLOS, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, Revaluation_Status, DEX_ROW_ID FROM .RM20201 WHERE TRXSORCE = @TRXSORCE ORDER BY TRXSORCE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM20201SS_3] TO [DYNGRP]
GO
