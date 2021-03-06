SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00604SS_4] (@CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @YEAR1 smallint, @PERIODID smallint) AS  set nocount on SELECT TOP 1  CONSTS, CONTNBR, LNSEQNBR, YEAR1, PERIODID, LNITMSEQ, Status, POSTEDDT, Transaction_Date, USERID, PSTDAMNT, Originating_PostedAmount, Source_Trx_Document_Type, SourceTrxDocumentNumber, Transaction_Amount, OrigTransactionAmount, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, SVC_Invoice_Credit_Amoun, OrigInvCreditAmt, DSCDLRAM, ORDDLRAT, Net_Transaction_Amount, OrigNetTransactionAmount, DEX_ROW_ID FROM .SVC00604 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, YEAR1 ASC, PERIODID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00604SS_4] TO [DYNGRP]
GO
