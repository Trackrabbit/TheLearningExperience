SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_EOUF0315F_1] (@REPORTOPTION_I_RS char(21), @REPORTOPTION_I_RE char(21)) AS  set nocount on IF @REPORTOPTION_I_RS IS NULL BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, REQUISITIONNUMBER_I, ETHNICORIGIN_I, EEOCLASS_I, RESID, DEX_ROW_ID FROM .EOUF0315 ORDER BY REPORTOPTION_I ASC END ELSE IF @REPORTOPTION_I_RS = @REPORTOPTION_I_RE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, REQUISITIONNUMBER_I, ETHNICORIGIN_I, EEOCLASS_I, RESID, DEX_ROW_ID FROM .EOUF0315 WHERE REPORTOPTION_I = @REPORTOPTION_I_RS ORDER BY REPORTOPTION_I ASC END ELSE BEGIN SELECT TOP 25  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, REQUISITIONNUMBER_I, ETHNICORIGIN_I, EEOCLASS_I, RESID, DEX_ROW_ID FROM .EOUF0315 WHERE REPORTOPTION_I BETWEEN @REPORTOPTION_I_RS AND @REPORTOPTION_I_RE ORDER BY REPORTOPTION_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_EOUF0315F_1] TO [DYNGRP]
GO