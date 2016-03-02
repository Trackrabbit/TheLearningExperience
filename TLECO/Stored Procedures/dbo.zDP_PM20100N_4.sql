SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM20100N_4] (@BS int, @KEYSOURC char(41), @VENDORID char(15), @DEX_ROW_ID int, @KEYSOURC_RS char(41), @VENDORID_RS char(15), @KEYSOURC_RE char(41), @VENDORID_RE char(15)) AS  set nocount on IF @KEYSOURC_RS IS NULL BEGIN SELECT TOP 25  KEYSOURC, DOCDATE, TIME1, VENDORID, POSTED, BCHSOURC, USERID, APTVCHNM, APTODCTY, APTODCDT, APTODCNM, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, CURNCYID, CURRNIDX, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, Apply_To_Document_Amount, Apply_To_Orig_Doc_Amount, Apply_To_Discount_Date, Apply_To_Due_Date, Apply_To_Description, Apply_To_IS_MC_Trx, ApplyToGLPostDate, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, ISMCTRX, VCHRNMBR, DOCTYPE, APFRDCNM, FROMCURR, Apply_From_Document_Amou, Apply_From_Orig_Doc_Amou, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, Apply_From_Description, Apply_From_IS_MC_Trx, PPSAMDED, GSTDSAMT, TAXDTLID, UPDTKNAM, UPGSTDAM, UNPPPSAD, UPWROFAM, PMDSTMSG, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, XCHGRATE, DECPLCUR, RATECALC, Payment_To_Print_On_Stub, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, VADCDTRO, Credit1099Amount, DEFTEN99TYPE, DEFTEN99BOXNUMBER, DEX_ROW_ID FROM .PM20100 WHERE ( KEYSOURC = @KEYSOURC AND VENDORID = @VENDORID AND DEX_ROW_ID > @DEX_ROW_ID OR KEYSOURC = @KEYSOURC AND VENDORID > @VENDORID OR KEYSOURC > @KEYSOURC ) ORDER BY KEYSOURC ASC, VENDORID ASC, DEX_ROW_ID ASC END ELSE IF @KEYSOURC_RS = @KEYSOURC_RE BEGIN SELECT TOP 25  KEYSOURC, DOCDATE, TIME1, VENDORID, POSTED, BCHSOURC, USERID, APTVCHNM, APTODCTY, APTODCDT, APTODCNM, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, CURNCYID, CURRNIDX, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, Apply_To_Document_Amount, Apply_To_Orig_Doc_Amount, Apply_To_Discount_Date, Apply_To_Due_Date, Apply_To_Description, Apply_To_IS_MC_Trx, ApplyToGLPostDate, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, ISMCTRX, VCHRNMBR, DOCTYPE, APFRDCNM, FROMCURR, Apply_From_Document_Amou, Apply_From_Orig_Doc_Amou, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, Apply_From_Description, Apply_From_IS_MC_Trx, PPSAMDED, GSTDSAMT, TAXDTLID, UPDTKNAM, UPGSTDAM, UNPPPSAD, UPWROFAM, PMDSTMSG, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, XCHGRATE, DECPLCUR, RATECALC, Payment_To_Print_On_Stub, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, VADCDTRO, Credit1099Amount, DEFTEN99TYPE, DEFTEN99BOXNUMBER, DEX_ROW_ID FROM .PM20100 WHERE KEYSOURC = @KEYSOURC_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( KEYSOURC = @KEYSOURC AND VENDORID = @VENDORID AND DEX_ROW_ID > @DEX_ROW_ID OR KEYSOURC = @KEYSOURC AND VENDORID > @VENDORID OR KEYSOURC > @KEYSOURC ) ORDER BY KEYSOURC ASC, VENDORID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  KEYSOURC, DOCDATE, TIME1, VENDORID, POSTED, BCHSOURC, USERID, APTVCHNM, APTODCTY, APTODCDT, APTODCNM, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, CURNCYID, CURRNIDX, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, Apply_To_Document_Amount, Apply_To_Orig_Doc_Amount, Apply_To_Discount_Date, Apply_To_Due_Date, Apply_To_Description, Apply_To_IS_MC_Trx, ApplyToGLPostDate, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, ISMCTRX, VCHRNMBR, DOCTYPE, APFRDCNM, FROMCURR, Apply_From_Document_Amou, Apply_From_Orig_Doc_Amou, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, Apply_From_Description, Apply_From_IS_MC_Trx, PPSAMDED, GSTDSAMT, TAXDTLID, UPDTKNAM, UPGSTDAM, UNPPPSAD, UPWROFAM, PMDSTMSG, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, XCHGRATE, DECPLCUR, RATECALC, Payment_To_Print_On_Stub, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, VADCDTRO, Credit1099Amount, DEFTEN99TYPE, DEFTEN99BOXNUMBER, DEX_ROW_ID FROM .PM20100 WHERE KEYSOURC BETWEEN @KEYSOURC_RS AND @KEYSOURC_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( KEYSOURC = @KEYSOURC AND VENDORID = @VENDORID AND DEX_ROW_ID > @DEX_ROW_ID OR KEYSOURC = @KEYSOURC AND VENDORID > @VENDORID OR KEYSOURC > @KEYSOURC ) ORDER BY KEYSOURC ASC, VENDORID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM20100N_4] TO [DYNGRP]
GO
