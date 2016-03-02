SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_TNUF0130F_1] (@REPORTOPTION_I_RS char(21), @REPORTOPTION_I_RE char(21)) AS  set nocount on IF @REPORTOPTION_I_RS IS NULL BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTBY_I, SORTOPTION_I, FROMDATE_I, TODATE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMFIRSTNAME_I, TOFIRSTNAME_I, FROMISSN_I, TOISSN_I, FROMLASTNAME_I, TOLASTNAME_I, ICLASSID_I, COURSEID_I, DEPARTMENTCODE_I, DIVISIONCODE_I, POSITIONCODE_I, SKILLSET_I, INCINEMP, RESID, DEX_ROW_ID FROM .TNUF0130 ORDER BY REPORTOPTION_I ASC END ELSE IF @REPORTOPTION_I_RS = @REPORTOPTION_I_RE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTBY_I, SORTOPTION_I, FROMDATE_I, TODATE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMFIRSTNAME_I, TOFIRSTNAME_I, FROMISSN_I, TOISSN_I, FROMLASTNAME_I, TOLASTNAME_I, ICLASSID_I, COURSEID_I, DEPARTMENTCODE_I, DIVISIONCODE_I, POSITIONCODE_I, SKILLSET_I, INCINEMP, RESID, DEX_ROW_ID FROM .TNUF0130 WHERE REPORTOPTION_I = @REPORTOPTION_I_RS ORDER BY REPORTOPTION_I ASC END ELSE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTBY_I, SORTOPTION_I, FROMDATE_I, TODATE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMFIRSTNAME_I, TOFIRSTNAME_I, FROMISSN_I, TOISSN_I, FROMLASTNAME_I, TOLASTNAME_I, ICLASSID_I, COURSEID_I, DEPARTMENTCODE_I, DIVISIONCODE_I, POSITIONCODE_I, SKILLSET_I, INCINEMP, RESID, DEX_ROW_ID FROM .TNUF0130 WHERE REPORTOPTION_I BETWEEN @REPORTOPTION_I_RS AND @REPORTOPTION_I_RE ORDER BY REPORTOPTION_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TNUF0130F_1] TO [DYNGRP]
GO
