SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30603SI] (@CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @SVC_Invoice_SEQ_Number int, @INVODATE datetime, @DOCAMNT numeric(19,5), @SVC_Coverage_Start_Date datetime, @SVC_Coverage_End_Date datetime, @POSTED tinyint, @POSTEDDT datetime, @PSTDAMNT numeric(19,5), @SVC_Invoice_Credit_Amoun numeric(19,5), @SVC_Daily_Rate numeric(19,5), @DSCDLRAM numeric(19,5), @ORDOCAMT numeric(19,5), @ORIGPSTDAMNT numeric(19,5), @OrigInvCreditAmt numeric(19,5), @ORDDLRAT numeric(19,5), @SVC_Contract_Version smallint, @SOPTYPE smallint, @SOPNUMBE char(21), @svcReverseType smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC30603 (CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, INVODATE, DOCAMNT, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, POSTED, POSTEDDT, PSTDAMNT, SVC_Invoice_Credit_Amoun, SVC_Daily_Rate, DSCDLRAM, ORDOCAMT, ORIGPSTDAMNT, OrigInvCreditAmt, ORDDLRAT, SVC_Contract_Version, SOPTYPE, SOPNUMBE, svcReverseType) VALUES ( @CONSTS, @CONTNBR, @LNSEQNBR, @SVC_Invoice_SEQ_Number, @INVODATE, @DOCAMNT, @SVC_Coverage_Start_Date, @SVC_Coverage_End_Date, @POSTED, @POSTEDDT, @PSTDAMNT, @SVC_Invoice_Credit_Amoun, @SVC_Daily_Rate, @DSCDLRAM, @ORDOCAMT, @ORIGPSTDAMNT, @OrigInvCreditAmt, @ORDDLRAT, @SVC_Contract_Version, @SOPTYPE, @SOPNUMBE, @svcReverseType) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30603SI] TO [DYNGRP]
GO
