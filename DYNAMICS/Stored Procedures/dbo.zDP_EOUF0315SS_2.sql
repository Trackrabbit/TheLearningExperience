SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_EOUF0315SS_2] (@REPORTINDEX_I numeric(19,5)) AS  set nocount on SELECT TOP 1  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTBYNUMBER_I, SORTOPTION_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, REQUISITIONNUMBER_I, ETHNICORIGIN_I, EEOCLASS_I, RESID, DEX_ROW_ID FROM .EOUF0315 WHERE REPORTINDEX_I = @REPORTINDEX_I ORDER BY REPORTINDEX_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_EOUF0315SS_2] TO [DYNGRP]
GO
