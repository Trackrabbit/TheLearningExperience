SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_PRUF0131N_2] (@BS int, @REPORTINDEX_I numeric(19,5), @REPORTINDEX_I_RS numeric(19,5), @REPORTINDEX_I_RE numeric(19,5)) AS  set nocount on IF @REPORTINDEX_I_RS IS NULL BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTBY_I, SORTOPTION_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMITEMNUM_I, TOITEMNUM_I, RESID, DEX_ROW_ID FROM .PRUF0131 WHERE ( REPORTINDEX_I > @REPORTINDEX_I ) ORDER BY REPORTINDEX_I ASC END ELSE IF @REPORTINDEX_I_RS = @REPORTINDEX_I_RE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTBY_I, SORTOPTION_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMITEMNUM_I, TOITEMNUM_I, RESID, DEX_ROW_ID FROM .PRUF0131 WHERE REPORTINDEX_I = @REPORTINDEX_I_RS AND ( REPORTINDEX_I > @REPORTINDEX_I ) ORDER BY REPORTINDEX_I ASC END ELSE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTBY_I, SORTOPTION_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMITEMNUM_I, TOITEMNUM_I, RESID, DEX_ROW_ID FROM .PRUF0131 WHERE REPORTINDEX_I BETWEEN @REPORTINDEX_I_RS AND @REPORTINDEX_I_RE AND ( REPORTINDEX_I > @REPORTINDEX_I ) ORDER BY REPORTINDEX_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PRUF0131N_2] TO [DYNGRP]
GO
