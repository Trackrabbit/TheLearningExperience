SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00305N_2] (@BS int, @SALSTERR char(15), @HISTTYPE smallint, @YEAR1 smallint, @PERIODID smallint, @SALSTERR_RS char(15), @HISTTYPE_RS smallint, @YEAR1_RS smallint, @PERIODID_RS smallint, @SALSTERR_RE char(15), @HISTTYPE_RE smallint, @YEAR1_RE smallint, @PERIODID_RE smallint) AS  set nocount on IF @SALSTERR_RS IS NULL BEGIN SELECT TOP 25  SALSTERR, HISTTYPE, PERIODID, YEAR1, SMRYDATE, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT, DEX_ROW_ID FROM .RM00305 WHERE ( SALSTERR = @SALSTERR AND HISTTYPE = @HISTTYPE AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR SALSTERR = @SALSTERR AND HISTTYPE = @HISTTYPE AND YEAR1 > @YEAR1 OR SALSTERR = @SALSTERR AND HISTTYPE > @HISTTYPE OR SALSTERR > @SALSTERR ) ORDER BY SALSTERR ASC, HISTTYPE ASC, YEAR1 ASC, PERIODID ASC END ELSE IF @SALSTERR_RS = @SALSTERR_RE BEGIN SELECT TOP 25  SALSTERR, HISTTYPE, PERIODID, YEAR1, SMRYDATE, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT, DEX_ROW_ID FROM .RM00305 WHERE SALSTERR = @SALSTERR_RS AND HISTTYPE BETWEEN @HISTTYPE_RS AND @HISTTYPE_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( SALSTERR = @SALSTERR AND HISTTYPE = @HISTTYPE AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR SALSTERR = @SALSTERR AND HISTTYPE = @HISTTYPE AND YEAR1 > @YEAR1 OR SALSTERR = @SALSTERR AND HISTTYPE > @HISTTYPE OR SALSTERR > @SALSTERR ) ORDER BY SALSTERR ASC, HISTTYPE ASC, YEAR1 ASC, PERIODID ASC END ELSE BEGIN SELECT TOP 25  SALSTERR, HISTTYPE, PERIODID, YEAR1, SMRYDATE, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT, DEX_ROW_ID FROM .RM00305 WHERE SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE AND HISTTYPE BETWEEN @HISTTYPE_RS AND @HISTTYPE_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( SALSTERR = @SALSTERR AND HISTTYPE = @HISTTYPE AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR SALSTERR = @SALSTERR AND HISTTYPE = @HISTTYPE AND YEAR1 > @YEAR1 OR SALSTERR = @SALSTERR AND HISTTYPE > @HISTTYPE OR SALSTERR > @SALSTERR ) ORDER BY SALSTERR ASC, HISTTYPE ASC, YEAR1 ASC, PERIODID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00305N_2] TO [DYNGRP]
GO
