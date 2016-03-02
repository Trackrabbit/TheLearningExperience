SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM20100SS_2] (@BCHSOURC char(15), @USERID char(15), @VCHRNMBR char(21), @DOCTYPE smallint, @APTVCHNM char(21), @APTODCTY smallint) AS  set nocount on SELECT TOP 1  KEYSOURC, DOCDATE, TIME1, VENDORID, POSTED, BCHSOURC, USERID, APTVCHNM, APTODCTY, APTODCDT, APTODCNM, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, CURNCYID, CURRNIDX, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, Apply_To_Document_Amount, Apply_To_Orig_Doc_Amount, Apply_To_Discount_Date, Apply_To_Due_Date, Apply_To_Description, Apply_To_IS_MC_Trx, ApplyToGLPostDate, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, ISMCTRX, VCHRNMBR, DOCTYPE, APFRDCNM, FROMCURR, Apply_From_Document_Amou, Apply_From_Orig_Doc_Amou, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, Apply_From_Description, Apply_From_IS_MC_Trx, PPSAMDED, GSTDSAMT, TAXDTLID, UPDTKNAM, UPGSTDAM, UNPPPSAD, UPWROFAM, PMDSTMSG, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, XCHGRATE, DECPLCUR, RATECALC, Payment_To_Print_On_Stub, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, VADCDTRO, Credit1099Amount, DEFTEN99TYPE, DEFTEN99BOXNUMBER, DEX_ROW_ID FROM .PM20100 WHERE BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY ORDER BY BCHSOURC ASC, USERID ASC, VCHRNMBR ASC, DOCTYPE ASC, APTVCHNM ASC, APTODCTY ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM20100SS_2] TO [DYNGRP]
GO
