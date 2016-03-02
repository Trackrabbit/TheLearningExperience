SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30603L_3] (@SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21)) AS  set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, INVODATE, DOCAMNT, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, POSTED, POSTEDDT, PSTDAMNT, SVC_Invoice_Credit_Amoun, SVC_Daily_Rate, DSCDLRAM, ORDOCAMT, ORIGPSTDAMNT, OrigInvCreditAmt, ORDDLRAT, SVC_Contract_Version, SOPTYPE, SOPNUMBE, svcReverseType, DEX_ROW_ID FROM .SVC30603 ORDER BY SOPTYPE DESC, SOPNUMBE DESC, DEX_ROW_ID DESC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, INVODATE, DOCAMNT, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, POSTED, POSTEDDT, PSTDAMNT, SVC_Invoice_Credit_Amoun, SVC_Daily_Rate, DSCDLRAM, ORDOCAMT, ORIGPSTDAMNT, OrigInvCreditAmt, ORDDLRAT, SVC_Contract_Version, SOPTYPE, SOPNUMBE, svcReverseType, DEX_ROW_ID FROM .SVC30603 WHERE SOPTYPE = @SOPTYPE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE ORDER BY SOPTYPE DESC, SOPNUMBE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, INVODATE, DOCAMNT, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, POSTED, POSTEDDT, PSTDAMNT, SVC_Invoice_Credit_Amoun, SVC_Daily_Rate, DSCDLRAM, ORDOCAMT, ORIGPSTDAMNT, OrigInvCreditAmt, ORDDLRAT, SVC_Contract_Version, SOPTYPE, SOPNUMBE, svcReverseType, DEX_ROW_ID FROM .SVC30603 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE ORDER BY SOPTYPE DESC, SOPNUMBE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30603L_3] TO [DYNGRP]
GO
