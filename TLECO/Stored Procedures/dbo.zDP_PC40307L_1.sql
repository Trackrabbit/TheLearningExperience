SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40307L_1] (@PLANCODE_RS char(15), @JOBTITLE_RS char(7), @SEQNUMBR_RS int, @LNITMSEQ_RS int, @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @SEQNUMBR_RE int, @LNITMSEQ_RE int) AS  set nocount on IF @PLANCODE_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEQNUMBR, LNITMSEQ, ACTINDX, FUNDSOURCE, PRCNTAGE, DEX_ROW_ID FROM .PC40307 ORDER BY PLANCODE DESC, JOBTITLE DESC, SEQNUMBR DESC, LNITMSEQ DESC END ELSE IF @PLANCODE_RS = @PLANCODE_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEQNUMBR, LNITMSEQ, ACTINDX, FUNDSOURCE, PRCNTAGE, DEX_ROW_ID FROM .PC40307 WHERE PLANCODE = @PLANCODE_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, SEQNUMBR DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEQNUMBR, LNITMSEQ, ACTINDX, FUNDSOURCE, PRCNTAGE, DEX_ROW_ID FROM .PC40307 WHERE PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, SEQNUMBR DESC, LNITMSEQ DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40307L_1] TO [DYNGRP]
GO
