SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00614SS_2] (@USERID char(15), @TRXSORCE char(13), @YEAR1 smallint, @PERIODID smallint, @CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @LNITMSEQ int) AS  set nocount on SELECT TOP 1  USERID, TRXSORCE, CONSTS, CONTNBR, LNSEQNBR, YEAR1, PERIODID, LNITMSEQ, Status, POSTEDDT, Transaction_Date, PSTDAMNT, Source_Trx_Document_Type, SourceTrxDocumentNumber, Transaction_Amount, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, DSCDLRAM, Net_Transaction_Amount, ERMSGNUM, ERRDESCR, DEX_ROW_ID FROM .SVC00614 WHERE USERID = @USERID AND TRXSORCE = @TRXSORCE AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND LNITMSEQ = @LNITMSEQ ORDER BY USERID ASC, TRXSORCE ASC, YEAR1 ASC, PERIODID ASC, CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00614SS_2] TO [DYNGRP]
GO
