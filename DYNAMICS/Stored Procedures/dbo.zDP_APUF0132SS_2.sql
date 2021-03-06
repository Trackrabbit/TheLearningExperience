SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_APUF0132SS_2] (@REPORTINDEX_I numeric(19,5)) AS  set nocount on SELECT TOP 1  REPORTOPTION_I, REPORTINDEX_I, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RNGE, SORTOPTION_I, SORTBYNUMBER_I, FROMAPPLYDATE_I, TOAPPLYDATE_I, FROMISSN_I, TOISSN_I, FROMFIRSTNAME_I, FROMLASTNAME_I, TOFIRSTNAME_I, TOLASTNAME_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, REQUISITIONNUMBER_I, COLORSTRING_I, STATUS0_I, FROMINTERVIEWNAME_I, TOINTERVIEWNAME_I, REFSOURCEDDL_I, TEST_I, RESID, DEX_ROW_ID FROM .APUF0132 WHERE REPORTINDEX_I = @REPORTINDEX_I ORDER BY REPORTINDEX_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_APUF0132SS_2] TO [DYNGRP]
GO
