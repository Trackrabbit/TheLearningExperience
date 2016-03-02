SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30604SS_6] (@CONSTS smallint, @CONTNBR char(11), @SVC_Contract_Version smallint, @YEAR1 smallint, @PERIODID smallint) AS  set nocount on SELECT TOP 1  CONSTS, CONTNBR, LNSEQNBR, YEAR1, PERIODID, LNITMSEQ, Status, POSTEDDT, Transaction_Date, USERID, PSTDAMNT, Originating_PostedAmount, Source_Trx_Document_Type, SourceTrxDocumentNumber, Transaction_Amount, OrigTransactionAmount, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, SVC_Invoice_Credit_Amoun, OrigInvCreditAmt, DSCDLRAM, ORDDLRAT, Net_Transaction_Amount, OrigNetTransactionAmount, SVC_Contract_Version, DEX_ROW_ID FROM .SVC30604 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, YEAR1 ASC, PERIODID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30604SS_6] TO [DYNGRP]
GO
