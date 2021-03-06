SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2EM02SS_2] (@COMPANY_I char(65), @DIVISION_I char(31), @DEPARTMENTNAME_I char(31), @POSITION_I char(31), @EMPID_I char(15), @EFFECTIVEDATE_I datetime) AS  set nocount on SELECT TOP 1  EMPID_I, EFFECTIVEDATE_I, COMPANY_I, DIVISION_I, DEPARTMENTNAME_I, POSITION_I, EMPLOYMENTTYPE, HRSTATUS, SEPARATIONREASON_I, SHFTCODE, RSNEMPIN, SUPERVISOR, LOCATION_I, CHANGEREASON_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, SEQNUMBR, DEX_ROW_ID FROM .AHR2EM02 WHERE COMPANY_I = @COMPANY_I AND DIVISION_I = @DIVISION_I AND DEPARTMENTNAME_I = @DEPARTMENTNAME_I AND POSITION_I = @POSITION_I AND EMPID_I = @EMPID_I AND EFFECTIVEDATE_I = @EFFECTIVEDATE_I ORDER BY COMPANY_I ASC, DIVISION_I ASC, DEPARTMENTNAME_I ASC, POSITION_I ASC, EMPID_I ASC, EFFECTIVEDATE_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2EM02SS_2] TO [DYNGRP]
GO
