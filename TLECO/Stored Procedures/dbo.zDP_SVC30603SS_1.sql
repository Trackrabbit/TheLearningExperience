SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30603SS_1] (@CONSTS smallint, @CONTNBR char(11), @SVC_Contract_Version smallint, @LNSEQNBR numeric(19,5), @SVC_Invoice_SEQ_Number int) AS  set nocount on SELECT TOP 1  CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, INVODATE, DOCAMNT, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, POSTED, POSTEDDT, PSTDAMNT, SVC_Invoice_Credit_Amoun, SVC_Daily_Rate, DSCDLRAM, ORDOCAMT, ORIGPSTDAMNT, OrigInvCreditAmt, ORDDLRAT, SVC_Contract_Version, SOPTYPE, SOPNUMBE, svcReverseType, DEX_ROW_ID FROM .SVC30603 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND LNSEQNBR = @LNSEQNBR AND SVC_Invoice_SEQ_Number = @SVC_Invoice_SEQ_Number ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, LNSEQNBR ASC, SVC_Invoice_SEQ_Number ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30603SS_1] TO [DYNGRP]
GO
