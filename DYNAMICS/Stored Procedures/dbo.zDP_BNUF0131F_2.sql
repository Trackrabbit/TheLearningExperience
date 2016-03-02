SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_BNUF0131F_2] (@REPORTINDEX_I_RS numeric(19,5), @REPORTINDEX_I_RE numeric(19,5)) AS  set nocount on IF @REPORTINDEX_I_RS IS NULL BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, STARTBENEFIT_I, STARTEFFECTIVEDATE_I, STTEMPID, STARTCOPAYCODE_I, ENDBENEFIT_I, ENDEFFECTIVEDATE_I, ENDEMPL, ENDCOPAYCODE_I, INCLGNDS, FROMFIRSTNAME_I, TOFIRSTNAME_I, FROMLASTNAME_I, TOLASTNAME_I, FROMISSN_I, TOISSN_I, SORTBYNUMBER_I, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, DEPARTMENTCODE_I, DIVISIONCODE_I, POSITIONCODE_I, HRSTATUS, STARTINDEX_I, SORTOPTION_I, INCINEMP, RESID, DEX_ROW_ID FROM .BNUF0131 ORDER BY REPORTINDEX_I ASC END ELSE IF @REPORTINDEX_I_RS = @REPORTINDEX_I_RE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, STARTBENEFIT_I, STARTEFFECTIVEDATE_I, STTEMPID, STARTCOPAYCODE_I, ENDBENEFIT_I, ENDEFFECTIVEDATE_I, ENDEMPL, ENDCOPAYCODE_I, INCLGNDS, FROMFIRSTNAME_I, TOFIRSTNAME_I, FROMLASTNAME_I, TOLASTNAME_I, FROMISSN_I, TOISSN_I, SORTBYNUMBER_I, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, DEPARTMENTCODE_I, DIVISIONCODE_I, POSITIONCODE_I, HRSTATUS, STARTINDEX_I, SORTOPTION_I, INCINEMP, RESID, DEX_ROW_ID FROM .BNUF0131 WHERE REPORTINDEX_I = @REPORTINDEX_I_RS ORDER BY REPORTINDEX_I ASC END ELSE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, STARTBENEFIT_I, STARTEFFECTIVEDATE_I, STTEMPID, STARTCOPAYCODE_I, ENDBENEFIT_I, ENDEFFECTIVEDATE_I, ENDEMPL, ENDCOPAYCODE_I, INCLGNDS, FROMFIRSTNAME_I, TOFIRSTNAME_I, FROMLASTNAME_I, TOLASTNAME_I, FROMISSN_I, TOISSN_I, SORTBYNUMBER_I, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, DEPARTMENTCODE_I, DIVISIONCODE_I, POSITIONCODE_I, HRSTATUS, STARTINDEX_I, SORTOPTION_I, INCINEMP, RESID, DEX_ROW_ID FROM .BNUF0131 WHERE REPORTINDEX_I BETWEEN @REPORTINDEX_I_RS AND @REPORTINDEX_I_RE ORDER BY REPORTINDEX_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BNUF0131F_2] TO [DYNGRP]
GO
