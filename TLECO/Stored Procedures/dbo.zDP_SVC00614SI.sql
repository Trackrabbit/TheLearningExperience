SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00614SI] (@USERID char(15), @TRXSORCE char(13), @CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @YEAR1 smallint, @PERIODID smallint, @LNITMSEQ int, @Status smallint, @POSTEDDT datetime, @Transaction_Date datetime, @PSTDAMNT numeric(19,5), @Source_Trx_Document_Type char(3), @SourceTrxDocumentNumber char(255), @Transaction_Amount numeric(19,5), @SVC_Coverage_Start_Date datetime, @SVC_Coverage_End_Date datetime, @DSCDLRAM numeric(19,5), @Net_Transaction_Amount numeric(19,5), @ERMSGNUM int, @ERRDESCR char(131), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00614 (USERID, TRXSORCE, CONSTS, CONTNBR, LNSEQNBR, YEAR1, PERIODID, LNITMSEQ, Status, POSTEDDT, Transaction_Date, PSTDAMNT, Source_Trx_Document_Type, SourceTrxDocumentNumber, Transaction_Amount, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, DSCDLRAM, Net_Transaction_Amount, ERMSGNUM, ERRDESCR) VALUES ( @USERID, @TRXSORCE, @CONSTS, @CONTNBR, @LNSEQNBR, @YEAR1, @PERIODID, @LNITMSEQ, @Status, @POSTEDDT, @Transaction_Date, @PSTDAMNT, @Source_Trx_Document_Type, @SourceTrxDocumentNumber, @Transaction_Amount, @SVC_Coverage_Start_Date, @SVC_Coverage_End_Date, @DSCDLRAM, @Net_Transaction_Amount, @ERMSGNUM, @ERRDESCR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00614SI] TO [DYNGRP]
GO
