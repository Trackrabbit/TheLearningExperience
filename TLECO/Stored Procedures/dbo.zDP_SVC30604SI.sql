SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30604SI] (@CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @YEAR1 smallint, @PERIODID smallint, @LNITMSEQ int, @Status smallint, @POSTEDDT datetime, @Transaction_Date datetime, @USERID char(15), @PSTDAMNT numeric(19,5), @Originating_PostedAmount numeric(19,5), @Source_Trx_Document_Type char(3), @SourceTrxDocumentNumber char(255), @Transaction_Amount numeric(19,5), @OrigTransactionAmount numeric(19,5), @SVC_Coverage_Start_Date datetime, @SVC_Coverage_End_Date datetime, @SVC_Invoice_Credit_Amoun numeric(19,5), @OrigInvCreditAmt numeric(19,5), @DSCDLRAM numeric(19,5), @ORDDLRAT numeric(19,5), @Net_Transaction_Amount numeric(19,5), @OrigNetTransactionAmount numeric(19,5), @SVC_Contract_Version smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC30604 (CONSTS, CONTNBR, LNSEQNBR, YEAR1, PERIODID, LNITMSEQ, Status, POSTEDDT, Transaction_Date, USERID, PSTDAMNT, Originating_PostedAmount, Source_Trx_Document_Type, SourceTrxDocumentNumber, Transaction_Amount, OrigTransactionAmount, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, SVC_Invoice_Credit_Amoun, OrigInvCreditAmt, DSCDLRAM, ORDDLRAT, Net_Transaction_Amount, OrigNetTransactionAmount, SVC_Contract_Version) VALUES ( @CONSTS, @CONTNBR, @LNSEQNBR, @YEAR1, @PERIODID, @LNITMSEQ, @Status, @POSTEDDT, @Transaction_Date, @USERID, @PSTDAMNT, @Originating_PostedAmount, @Source_Trx_Document_Type, @SourceTrxDocumentNumber, @Transaction_Amount, @OrigTransactionAmount, @SVC_Coverage_Start_Date, @SVC_Coverage_End_Date, @SVC_Invoice_Credit_Amoun, @OrigInvCreditAmt, @DSCDLRAM, @ORDDLRAT, @Net_Transaction_Amount, @OrigNetTransactionAmount, @SVC_Contract_Version) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30604SI] TO [DYNGRP]
GO
