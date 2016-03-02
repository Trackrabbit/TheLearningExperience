SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHRAP003L_1] (@APPLICANTNUMBER_I_RS numeric(19,5), @APPLICANTNUMBER_I_RE numeric(19,5)) AS  set nocount on IF @APPLICANTNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPINTTYPESTR_I, APPLYDATE_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, EFFECTIVEDATE_I, REVIEWRATINGDECIMA_I, REVIEWRANGE_I, WEIGHTSUM_I, TOTALWEIGHT_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRAP003 ORDER BY APPLICANTNUMBER_I DESC, DEX_ROW_ID DESC END ELSE IF @APPLICANTNUMBER_I_RS = @APPLICANTNUMBER_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPINTTYPESTR_I, APPLYDATE_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, EFFECTIVEDATE_I, REVIEWRATINGDECIMA_I, REVIEWRANGE_I, WEIGHTSUM_I, TOTALWEIGHT_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRAP003 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I_RS ORDER BY APPLICANTNUMBER_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPINTTYPESTR_I, APPLYDATE_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, EFFECTIVEDATE_I, REVIEWRATINGDECIMA_I, REVIEWRANGE_I, WEIGHTSUM_I, TOTALWEIGHT_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRAP003 WHERE APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE ORDER BY APPLICANTNUMBER_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHRAP003L_1] TO [DYNGRP]
GO
