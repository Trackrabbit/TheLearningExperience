SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30609SS_1] (@CONSTS smallint, @CONTNBR char(11), @SVC_Contract_Version smallint, @LNSEQNBR numeric(19,5), @SEQNUMBR int, @SVC_Distribution_Type smallint) AS  set nocount on SELECT TOP 1  CONSTS, CONTNBR, LNSEQNBR, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, SVC_Contract_Version, DEX_ROW_ID FROM .SVC30609 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, LNSEQNBR ASC, SEQNUMBR ASC, SVC_Distribution_Type ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30609SS_1] TO [DYNGRP]
GO
