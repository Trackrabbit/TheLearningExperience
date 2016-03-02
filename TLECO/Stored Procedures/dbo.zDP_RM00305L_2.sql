SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00305L_2] (@SALSTERR_RS char(15), @HISTTYPE_RS smallint, @YEAR1_RS smallint, @PERIODID_RS smallint, @SALSTERR_RE char(15), @HISTTYPE_RE smallint, @YEAR1_RE smallint, @PERIODID_RE smallint) AS  set nocount on IF @SALSTERR_RS IS NULL BEGIN SELECT TOP 25  SALSTERR, HISTTYPE, PERIODID, YEAR1, SMRYDATE, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT, DEX_ROW_ID FROM .RM00305 ORDER BY SALSTERR DESC, HISTTYPE DESC, YEAR1 DESC, PERIODID DESC END ELSE IF @SALSTERR_RS = @SALSTERR_RE BEGIN SELECT TOP 25  SALSTERR, HISTTYPE, PERIODID, YEAR1, SMRYDATE, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT, DEX_ROW_ID FROM .RM00305 WHERE SALSTERR = @SALSTERR_RS AND HISTTYPE BETWEEN @HISTTYPE_RS AND @HISTTYPE_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY SALSTERR DESC, HISTTYPE DESC, YEAR1 DESC, PERIODID DESC END ELSE BEGIN SELECT TOP 25  SALSTERR, HISTTYPE, PERIODID, YEAR1, SMRYDATE, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT, DEX_ROW_ID FROM .RM00305 WHERE SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE AND HISTTYPE BETWEEN @HISTTYPE_RS AND @HISTTYPE_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY SALSTERR DESC, HISTTYPE DESC, YEAR1 DESC, PERIODID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00305L_2] TO [DYNGRP]
GO
