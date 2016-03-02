SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40307SS_1] (@PLANCODE char(15), @JOBTITLE char(7), @SEQNUMBR int, @LNITMSEQ int) AS  set nocount on SELECT TOP 1  PLANCODE, JOBTITLE, SEQNUMBR, LNITMSEQ, ACTINDX, FUNDSOURCE, PRCNTAGE, DEX_ROW_ID FROM .PC40307 WHERE PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND SEQNUMBR = @SEQNUMBR AND LNITMSEQ = @LNITMSEQ ORDER BY PLANCODE ASC, JOBTITLE ASC, SEQNUMBR ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40307SS_1] TO [DYNGRP]
GO