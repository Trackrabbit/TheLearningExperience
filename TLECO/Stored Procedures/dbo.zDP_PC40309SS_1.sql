SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40309SS_1] (@PLANCODE char(15), @JOBTITLE char(7), @TEMPSEAT tinyint, @SEAT int, @SEQNUMBR int, @LNITMSEQ int) AS  set nocount on SELECT TOP 1  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, SEQNUMBR, LNITMSEQ, ACTINDX, FUNDSOURCE, PRCNTAGE, DEX_ROW_ID FROM .PC40309 WHERE PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND TEMPSEAT = @TEMPSEAT AND SEAT = @SEAT AND SEQNUMBR = @SEQNUMBR AND LNITMSEQ = @LNITMSEQ ORDER BY PLANCODE ASC, JOBTITLE ASC, TEMPSEAT ASC, SEAT ASC, SEQNUMBR ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40309SS_1] TO [DYNGRP]
GO
