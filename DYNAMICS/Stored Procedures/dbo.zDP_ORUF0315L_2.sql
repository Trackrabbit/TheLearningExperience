SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ORUF0315L_2] (@REPORTINDEX_I_RS numeric(19,5), @REPORTINDEX_I_RE numeric(19,5)) AS  set nocount on IF @REPORTINDEX_I_RS IS NULL BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, FROMISSN_I, TOISSN_I, FROMFIRSTNAME_I, FROMLASTNAME_I, TOFIRSTNAME_I, TOLASTNAME_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FORSETUPCODE_I, TOORSETUPCODE_I, INCINEMP, RESID, DEX_ROW_ID FROM .ORUF0315 ORDER BY REPORTINDEX_I DESC END ELSE IF @REPORTINDEX_I_RS = @REPORTINDEX_I_RE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, FROMISSN_I, TOISSN_I, FROMFIRSTNAME_I, FROMLASTNAME_I, TOFIRSTNAME_I, TOLASTNAME_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FORSETUPCODE_I, TOORSETUPCODE_I, INCINEMP, RESID, DEX_ROW_ID FROM .ORUF0315 WHERE REPORTINDEX_I = @REPORTINDEX_I_RS ORDER BY REPORTINDEX_I DESC END ELSE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, FROMISSN_I, TOISSN_I, FROMFIRSTNAME_I, FROMLASTNAME_I, TOFIRSTNAME_I, TOLASTNAME_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FORSETUPCODE_I, TOORSETUPCODE_I, INCINEMP, RESID, DEX_ROW_ID FROM .ORUF0315 WHERE REPORTINDEX_I BETWEEN @REPORTINDEX_I_RS AND @REPORTINDEX_I_RE ORDER BY REPORTINDEX_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ORUF0315L_2] TO [DYNGRP]
GO