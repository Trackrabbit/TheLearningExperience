SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_RVUF0130SS_1] (@REPORTOPTION_I char(21)) AS  set nocount on SELECT TOP 1  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTBY_I, SORTOPTION_I, FROMDATE_I, TODATE_I, DEPARTMENTCODE_I, DIVISIONCODE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMFIRSTNAME_I, TOFIRSTNAME_I, FROMISSN_I, TOISSN_I, FROMLASTNAME_I, TOLASTNAME_I, EMPLOYMENTTYPE, FREVSETUPCODE_I, TOREVIEWSETUPCODE_I, SUPERVISORCODE_I, INCINEMP, RESID, DEX_ROW_ID FROM .RVUF0130 WHERE REPORTOPTION_I = @REPORTOPTION_I ORDER BY REPORTOPTION_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RVUF0130SS_1] TO [DYNGRP]
GO