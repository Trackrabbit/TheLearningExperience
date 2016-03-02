SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2530100UN_2] (@BS int, @BCHSOURC char(15), @USERID char(15), @VCHRNMBR char(21), @DOCTYPE smallint, @APTVCHNM char(21), @APTODCTY smallint, @BCHSOURC_RS char(15), @USERID_RS char(15), @VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @APTVCHNM_RS char(21), @APTODCTY_RS smallint, @BCHSOURC_RE char(15), @USERID_RE char(15), @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint, @APTVCHNM_RE char(21), @APTODCTY_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  KEYSOURC, DOCDATE, TIME1, VENDORID, POSTED, BCHSOURC, USERID, APTVCHNM, APTODCTY, APTODCDT, APTODCNM, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, CURNCYID, CURRNIDX, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, Apply_To_Document_Amount, Apply_To_Orig_Doc_Amount, Apply_To_Discount_Date, Apply_To_Due_Date, Apply_To_Description, Apply_To_IS_MC_Trx, ApplyToGLPostDate, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, ISMCTRX, VCHRNMBR, DOCTYPE, APFRDCNM, FROMCURR, Apply_From_Document_Amou, Apply_From_Orig_Doc_Amou, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, Apply_From_Description, Apply_From_IS_MC_Trx, PPSAMDED, GSTDSAMT, TAXDTLID, UPDTKNAM, UPGSTDAM, UNPPPSAD, UPWROFAM, PMDSTMSG, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, XCHGRATE, DECPLCUR, RATECALC, Payment_To_Print_On_Stub, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, DEX_ROW_ID FROM .B2530100 WHERE ( BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND APTVCHNM = @APTVCHNM AND APTODCTY > @APTODCTY OR BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND APTVCHNM > @APTVCHNM OR BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR > @VCHRNMBR OR BCHSOURC = @BCHSOURC AND USERID > @USERID OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, USERID ASC, VCHRNMBR ASC, DOCTYPE ASC, APTVCHNM ASC, APTODCTY ASC, DEX_ROW_ID ASC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  KEYSOURC, DOCDATE, TIME1, VENDORID, POSTED, BCHSOURC, USERID, APTVCHNM, APTODCTY, APTODCDT, APTODCNM, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, CURNCYID, CURRNIDX, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, Apply_To_Document_Amount, Apply_To_Orig_Doc_Amount, Apply_To_Discount_Date, Apply_To_Due_Date, Apply_To_Description, Apply_To_IS_MC_Trx, ApplyToGLPostDate, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, ISMCTRX, VCHRNMBR, DOCTYPE, APFRDCNM, FROMCURR, Apply_From_Document_Amou, Apply_From_Orig_Doc_Amou, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, Apply_From_Description, Apply_From_IS_MC_Trx, PPSAMDED, GSTDSAMT, TAXDTLID, UPDTKNAM, UPGSTDAM, UNPPPSAD, UPWROFAM, PMDSTMSG, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, XCHGRATE, DECPLCUR, RATECALC, Payment_To_Print_On_Stub, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, DEX_ROW_ID FROM .B2530100 WHERE BCHSOURC = @BCHSOURC_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND ( BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND APTVCHNM = @APTVCHNM AND APTODCTY > @APTODCTY OR BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND APTVCHNM > @APTVCHNM OR BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR > @VCHRNMBR OR BCHSOURC = @BCHSOURC AND USERID > @USERID OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, USERID ASC, VCHRNMBR ASC, DOCTYPE ASC, APTVCHNM ASC, APTODCTY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  KEYSOURC, DOCDATE, TIME1, VENDORID, POSTED, BCHSOURC, USERID, APTVCHNM, APTODCTY, APTODCDT, APTODCNM, APPLDAMT, DISTKNAM, DISAVTKN, WROFAMNT, CURNCYID, CURRNIDX, ORAPPAMT, ORDISTKN, ORDATKN, ORWROFAM, Apply_To_Document_Amount, Apply_To_Orig_Doc_Amount, Apply_To_Discount_Date, Apply_To_Due_Date, Apply_To_Description, Apply_To_IS_MC_Trx, ApplyToGLPostDate, APTOEXRATE, APTODENRATE, APTORTCLCMETH, APTOMCTRXSTT, ISMCTRX, VCHRNMBR, DOCTYPE, APFRDCNM, FROMCURR, Apply_From_Document_Amou, Apply_From_Orig_Doc_Amou, APFRMAPLYAMT, APFRMDISCTAKEN, APFRMDISCAVAIL, APFRMWROFAMT, ActualApplyToAmount, ActualDiscTakenAmount, ActualDiscAvailTaken, ActualWriteOffAmount, APFRMEXRATE, APFRMDENRATE, APFRMRTCLCMETH, APFRMMCTRXSTT, Apply_From_Description, Apply_From_IS_MC_Trx, PPSAMDED, GSTDSAMT, TAXDTLID, UPDTKNAM, UPGSTDAM, UNPPPSAD, UPWROFAM, PMDSTMSG, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, TEN99AMNT, RLGANLOS, APYFRMRNDAMT, APYTORNDAMT, APYTORNDDISC, XCHGRATE, DECPLCUR, RATECALC, Payment_To_Print_On_Stub, OAPYFRMRNDAMT, OAPYTORNDAMT, OAPYTORNDDISC, Settled_Gain_CreditCurrT, Settled_Loss_CreditCurrT, Settled_Gain_DebitCurrTr, Settled_Loss_DebitCurrTr, Settled_Gain_DebitDiscAv, Settled_Loss_DebitDiscAv, DEX_ROW_ID FROM .B2530100 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND ( BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND APTVCHNM = @APTVCHNM AND APTODCTY > @APTODCTY OR BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND APTVCHNM > @APTVCHNM OR BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR BCHSOURC = @BCHSOURC AND USERID = @USERID AND VCHRNMBR > @VCHRNMBR OR BCHSOURC = @BCHSOURC AND USERID > @USERID OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, USERID ASC, VCHRNMBR ASC, DOCTYPE ASC, APTVCHNM ASC, APTODCTY ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2530100UN_2] TO [DYNGRP]
GO
