SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_PRUF0131N_1] (@BS int, @REPORTOPTION_I char(21), @REPORTOPTION_I_RS char(21), @REPORTOPTION_I_RE char(21)) AS  set nocount on IF @REPORTOPTION_I_RS IS NULL BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTBY_I, SORTOPTION_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMITEMNUM_I, TOITEMNUM_I, RESID, DEX_ROW_ID FROM .PRUF0131 WHERE ( REPORTOPTION_I > @REPORTOPTION_I ) ORDER BY REPORTOPTION_I ASC END ELSE IF @REPORTOPTION_I_RS = @REPORTOPTION_I_RE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTBY_I, SORTOPTION_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMITEMNUM_I, TOITEMNUM_I, RESID, DEX_ROW_ID FROM .PRUF0131 WHERE REPORTOPTION_I = @REPORTOPTION_I_RS AND ( REPORTOPTION_I > @REPORTOPTION_I ) ORDER BY REPORTOPTION_I ASC END ELSE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTBY_I, SORTOPTION_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMITEMNUM_I, TOITEMNUM_I, RESID, DEX_ROW_ID FROM .PRUF0131 WHERE REPORTOPTION_I BETWEEN @REPORTOPTION_I_RS AND @REPORTOPTION_I_RE AND ( REPORTOPTION_I > @REPORTOPTION_I ) ORDER BY REPORTOPTION_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PRUF0131N_1] TO [DYNGRP]
GO