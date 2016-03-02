SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_EMUF0130SS_2] (@REPORTINDEX_I numeric(19,5)) AS  set nocount on SELECT TOP 1  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBY_I, SORTBYNUMBER_I, SORTOPTION_I, FROMISSN_I, TOISSN_I, FROMFIRSTNAME_I, FROMLASTNAME_I, TOFIRSTNAME_I, TOLASTNAME_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCATNID, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMDATE_I, TODATE_I, HRSTATUS, EMPLOYMENTTYPE, INCINEMP, DATEENDING, RESID, DEX_ROW_ID FROM .EMUF0130 WHERE REPORTINDEX_I = @REPORTINDEX_I ORDER BY REPORTINDEX_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_EMUF0130SS_2] TO [DYNGRP]
GO
