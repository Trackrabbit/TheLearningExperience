SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP00300L_3] (@SUBITEMNMBR_RS char(31), @CUSTNMBR_RS char(15), @ITEMNMBR_RS char(31), @SEQNUMBR_RS int, @SUBITEMNMBR_RE char(31), @CUSTNMBR_RE char(15), @ITEMNMBR_RE char(31), @SEQNUMBR_RE int) AS  set nocount on IF @SUBITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, ITEMNMBR, SEQNUMBR, SUBITEMNMBR, SUBITEMDESC, STRTDATE, ENDDATE, DEX_ROW_ID FROM .SOP00300 ORDER BY SUBITEMNMBR DESC, CUSTNMBR DESC, ITEMNMBR DESC, SEQNUMBR DESC END ELSE IF @SUBITEMNMBR_RS = @SUBITEMNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, ITEMNMBR, SEQNUMBR, SUBITEMNMBR, SUBITEMDESC, STRTDATE, ENDDATE, DEX_ROW_ID FROM .SOP00300 WHERE SUBITEMNMBR = @SUBITEMNMBR_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY SUBITEMNMBR DESC, CUSTNMBR DESC, ITEMNMBR DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, ITEMNMBR, SEQNUMBR, SUBITEMNMBR, SUBITEMDESC, STRTDATE, ENDDATE, DEX_ROW_ID FROM .SOP00300 WHERE SUBITEMNMBR BETWEEN @SUBITEMNMBR_RS AND @SUBITEMNMBR_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY SUBITEMNMBR DESC, CUSTNMBR DESC, ITEMNMBR DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP00300L_3] TO [DYNGRP]
GO
