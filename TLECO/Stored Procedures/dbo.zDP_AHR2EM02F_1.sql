SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2EM02F_1] (@EMPID_I_RS char(15), @EFFECTIVEDATE_I_RS datetime, @SEQNUMBR_RS int, @EMPID_I_RE char(15), @EFFECTIVEDATE_I_RE datetime, @SEQNUMBR_RE int) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, EFFECTIVEDATE_I, COMPANY_I, DIVISION_I, DEPARTMENTNAME_I, POSITION_I, EMPLOYMENTTYPE, HRSTATUS, SEPARATIONREASON_I, SHFTCODE, RSNEMPIN, SUPERVISOR, LOCATION_I, CHANGEREASON_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, SEQNUMBR, DEX_ROW_ID FROM .AHR2EM02 ORDER BY EMPID_I ASC, EFFECTIVEDATE_I DESC, SEQNUMBR DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, EFFECTIVEDATE_I, COMPANY_I, DIVISION_I, DEPARTMENTNAME_I, POSITION_I, EMPLOYMENTTYPE, HRSTATUS, SEPARATIONREASON_I, SHFTCODE, RSNEMPIN, SUPERVISOR, LOCATION_I, CHANGEREASON_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, SEQNUMBR, DEX_ROW_ID FROM .AHR2EM02 WHERE EMPID_I = @EMPID_I_RS AND EFFECTIVEDATE_I BETWEEN @EFFECTIVEDATE_I_RE AND @EFFECTIVEDATE_I_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RE AND @SEQNUMBR_RS ORDER BY EMPID_I ASC, EFFECTIVEDATE_I DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, EFFECTIVEDATE_I, COMPANY_I, DIVISION_I, DEPARTMENTNAME_I, POSITION_I, EMPLOYMENTTYPE, HRSTATUS, SEPARATIONREASON_I, SHFTCODE, RSNEMPIN, SUPERVISOR, LOCATION_I, CHANGEREASON_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, SEQNUMBR, DEX_ROW_ID FROM .AHR2EM02 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND EFFECTIVEDATE_I BETWEEN @EFFECTIVEDATE_I_RE AND @EFFECTIVEDATE_I_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RE AND @SEQNUMBR_RS ORDER BY EMPID_I ASC, EFFECTIVEDATE_I DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2EM02F_1] TO [DYNGRP]
GO
