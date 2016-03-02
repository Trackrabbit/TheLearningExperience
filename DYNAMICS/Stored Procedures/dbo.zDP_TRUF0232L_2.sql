SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_TRUF0232L_2] (@REPORTINDEX_I_RS numeric(19,5), @REPORTINDEX_I_RE numeric(19,5)) AS  set nocount on IF @REPORTINDEX_I_RS IS NULL BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, FROMDATE_I, TODATE_I, DIVISIONCODE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMFIRSTNAME_I, TOFIRSTNAME_I, FROMISSN_I, TOISSN_I, FROMLASTNAME_I, TOLASTNAME_I, TERMSETUPCODE_I, RESID, DEX_ROW_ID FROM .TRUF0232 ORDER BY REPORTINDEX_I DESC END ELSE IF @REPORTINDEX_I_RS = @REPORTINDEX_I_RE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, FROMDATE_I, TODATE_I, DIVISIONCODE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMFIRSTNAME_I, TOFIRSTNAME_I, FROMISSN_I, TOISSN_I, FROMLASTNAME_I, TOLASTNAME_I, TERMSETUPCODE_I, RESID, DEX_ROW_ID FROM .TRUF0232 WHERE REPORTINDEX_I = @REPORTINDEX_I_RS ORDER BY REPORTINDEX_I DESC END ELSE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, FROMDATE_I, TODATE_I, DIVISIONCODE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMFIRSTNAME_I, TOFIRSTNAME_I, FROMISSN_I, TOISSN_I, FROMLASTNAME_I, TOLASTNAME_I, TERMSETUPCODE_I, RESID, DEX_ROW_ID FROM .TRUF0232 WHERE REPORTINDEX_I BETWEEN @REPORTINDEX_I_RS AND @REPORTINDEX_I_RE ORDER BY REPORTINDEX_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TRUF0232L_2] TO [DYNGRP]
GO