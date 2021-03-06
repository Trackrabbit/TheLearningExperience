SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_TRUF0232SS_2] (@REPORTINDEX_I numeric(19,5)) AS  set nocount on SELECT TOP 1  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, FROMDATE_I, TODATE_I, DIVISIONCODE_I, FROMEMPLOYEEID_I, TOEMPLOYEEID_I, FROMFIRSTNAME_I, TOFIRSTNAME_I, FROMISSN_I, TOISSN_I, FROMLASTNAME_I, TOLASTNAME_I, TERMSETUPCODE_I, RESID, DEX_ROW_ID FROM .TRUF0232 WHERE REPORTINDEX_I = @REPORTINDEX_I ORDER BY REPORTINDEX_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TRUF0232SS_2] TO [DYNGRP]
GO
