SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00603F_1] (@CONSTS_RS smallint, @CONTNBR_RS char(11), @LNSEQNBR_RS numeric(19,5), @SVC_Invoice_SEQ_Number_RS int, @CONSTS_RE smallint, @CONTNBR_RE char(11), @LNSEQNBR_RE numeric(19,5), @SVC_Invoice_SEQ_Number_RE int) AS  set nocount on IF @CONSTS_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, INVODATE, DOCAMNT, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, POSTED, POSTEDDT, PSTDAMNT, SVC_Invoice_Credit_Amoun, SVC_Daily_Rate, DSCDLRAM, ORDOCAMT, ORIGPSTDAMNT, OrigInvCreditAmt, ORDDLRAT, SOPTYPE, SOPNUMBE, svcReverseType, DEX_ROW_ID FROM .SVC00603 ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, SVC_Invoice_SEQ_Number ASC END ELSE IF @CONSTS_RS = @CONSTS_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, INVODATE, DOCAMNT, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, POSTED, POSTEDDT, PSTDAMNT, SVC_Invoice_Credit_Amoun, SVC_Daily_Rate, DSCDLRAM, ORDOCAMT, ORIGPSTDAMNT, OrigInvCreditAmt, ORDDLRAT, SOPTYPE, SOPNUMBE, svcReverseType, DEX_ROW_ID FROM .SVC00603 WHERE CONSTS = @CONSTS_RS AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SVC_Invoice_SEQ_Number BETWEEN @SVC_Invoice_SEQ_Number_RS AND @SVC_Invoice_SEQ_Number_RE ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, SVC_Invoice_SEQ_Number ASC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, INVODATE, DOCAMNT, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, POSTED, POSTEDDT, PSTDAMNT, SVC_Invoice_Credit_Amoun, SVC_Daily_Rate, DSCDLRAM, ORDOCAMT, ORIGPSTDAMNT, OrigInvCreditAmt, ORDDLRAT, SOPTYPE, SOPNUMBE, svcReverseType, DEX_ROW_ID FROM .SVC00603 WHERE CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SVC_Invoice_SEQ_Number BETWEEN @SVC_Invoice_SEQ_Number_RS AND @SVC_Invoice_SEQ_Number_RE ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, SVC_Invoice_SEQ_Number ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00603F_1] TO [DYNGRP]
GO
