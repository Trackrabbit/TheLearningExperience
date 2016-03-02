SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00305N_1] (@BS int, @HISTTYPE smallint, @SALSTERR char(15), @YEAR1 smallint, @PERIODID smallint, @HISTTYPE_RS smallint, @SALSTERR_RS char(15), @YEAR1_RS smallint, @PERIODID_RS smallint, @HISTTYPE_RE smallint, @SALSTERR_RE char(15), @YEAR1_RE smallint, @PERIODID_RE smallint) AS  set nocount on IF @HISTTYPE_RS IS NULL BEGIN SELECT TOP 25  SALSTERR, HISTTYPE, PERIODID, YEAR1, SMRYDATE, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT, DEX_ROW_ID FROM .RM00305 WHERE ( HISTTYPE = @HISTTYPE AND SALSTERR = @SALSTERR AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR HISTTYPE = @HISTTYPE AND SALSTERR = @SALSTERR AND YEAR1 > @YEAR1 OR HISTTYPE = @HISTTYPE AND SALSTERR > @SALSTERR OR HISTTYPE > @HISTTYPE ) ORDER BY HISTTYPE ASC, SALSTERR ASC, YEAR1 ASC, PERIODID ASC END ELSE IF @HISTTYPE_RS = @HISTTYPE_RE BEGIN SELECT TOP 25  SALSTERR, HISTTYPE, PERIODID, YEAR1, SMRYDATE, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT, DEX_ROW_ID FROM .RM00305 WHERE HISTTYPE = @HISTTYPE_RS AND SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( HISTTYPE = @HISTTYPE AND SALSTERR = @SALSTERR AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR HISTTYPE = @HISTTYPE AND SALSTERR = @SALSTERR AND YEAR1 > @YEAR1 OR HISTTYPE = @HISTTYPE AND SALSTERR > @SALSTERR OR HISTTYPE > @HISTTYPE ) ORDER BY HISTTYPE ASC, SALSTERR ASC, YEAR1 ASC, PERIODID ASC END ELSE BEGIN SELECT TOP 25  SALSTERR, HISTTYPE, PERIODID, YEAR1, SMRYDATE, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT, DEX_ROW_ID FROM .RM00305 WHERE HISTTYPE BETWEEN @HISTTYPE_RS AND @HISTTYPE_RE AND SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( HISTTYPE = @HISTTYPE AND SALSTERR = @SALSTERR AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR HISTTYPE = @HISTTYPE AND SALSTERR = @SALSTERR AND YEAR1 > @YEAR1 OR HISTTYPE = @HISTTYPE AND SALSTERR > @SALSTERR OR HISTTYPE > @HISTTYPE ) ORDER BY HISTTYPE ASC, SALSTERR ASC, YEAR1 ASC, PERIODID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00305N_1] TO [DYNGRP]
GO
