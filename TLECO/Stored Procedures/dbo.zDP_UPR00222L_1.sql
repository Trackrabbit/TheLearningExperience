SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00222L_1] (@EMPLOYID_RS char(15), @SEQNUMBR_RS int, @DayOfWeek_RS smallint, @LNSEQNBR_RS numeric(19,5), @EMPLOYID_RE char(15), @SEQNUMBR_RE int, @DayOfWeek_RE smallint, @LNSEQNBR_RE numeric(19,5)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, DayOfWeek, LNSEQNBR, STRTTIME, ENDTIME, UNTSTOPY, DEX_ROW_ID FROM .UPR00222 ORDER BY EMPLOYID DESC, SEQNUMBR DESC, DayOfWeek DESC, LNSEQNBR DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, DayOfWeek, LNSEQNBR, STRTTIME, ENDTIME, UNTSTOPY, DEX_ROW_ID FROM .UPR00222 WHERE EMPLOYID = @EMPLOYID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND DayOfWeek BETWEEN @DayOfWeek_RS AND @DayOfWeek_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY EMPLOYID DESC, SEQNUMBR DESC, DayOfWeek DESC, LNSEQNBR DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, DayOfWeek, LNSEQNBR, STRTTIME, ENDTIME, UNTSTOPY, DEX_ROW_ID FROM .UPR00222 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND DayOfWeek BETWEEN @DayOfWeek_RS AND @DayOfWeek_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY EMPLOYID DESC, SEQNUMBR DESC, DayOfWeek DESC, LNSEQNBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00222L_1] TO [DYNGRP]
GO
