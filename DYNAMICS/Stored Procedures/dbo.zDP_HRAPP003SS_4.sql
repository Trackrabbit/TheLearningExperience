SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRAPP003SS_4] (@COMPANYCODE_I char(7), @DIVISIONCODE_I char(7), @DEPARTMENTCODE_I char(7), @POSITIONCODE_I char(7), @EFFECTIVEDATE_I datetime) AS  set nocount on SELECT TOP 1  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPINTTYPESTR_I, APPLYDATE_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, EFFECTIVEDATE_I, REVIEWRATINGDECIMA_I, REVIEWRANGE_I, WEIGHTSUM_I, TOTALWEIGHT_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP003 WHERE COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND POSITIONCODE_I = @POSITIONCODE_I AND EFFECTIVEDATE_I = @EFFECTIVEDATE_I ORDER BY COMPANYCODE_I ASC, DIVISIONCODE_I ASC, DEPARTMENTCODE_I ASC, POSITIONCODE_I ASC, EFFECTIVEDATE_I DESC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRAPP003SS_4] TO [DYNGRP]
GO
