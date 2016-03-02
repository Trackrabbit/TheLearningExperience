SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRAPP003F_2] (@APPLICANTNUMBER_I_RS numeric(19,5), @APPINTTYPECODE_I_RS smallint, @APPLYDATE_I_RS datetime, @APPLICANTNUMBER_I_RE numeric(19,5), @APPINTTYPECODE_I_RE smallint, @APPLYDATE_I_RE datetime) AS  set nocount on IF @APPLICANTNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPINTTYPESTR_I, APPLYDATE_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, EFFECTIVEDATE_I, REVIEWRATINGDECIMA_I, REVIEWRANGE_I, WEIGHTSUM_I, TOTALWEIGHT_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP003 ORDER BY APPLICANTNUMBER_I ASC, APPINTTYPECODE_I ASC, APPLYDATE_I DESC END ELSE IF @APPLICANTNUMBER_I_RS = @APPLICANTNUMBER_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPINTTYPESTR_I, APPLYDATE_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, EFFECTIVEDATE_I, REVIEWRATINGDECIMA_I, REVIEWRANGE_I, WEIGHTSUM_I, TOTALWEIGHT_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP003 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I_RS AND APPINTTYPECODE_I BETWEEN @APPINTTYPECODE_I_RS AND @APPINTTYPECODE_I_RE AND APPLYDATE_I BETWEEN @APPLYDATE_I_RE AND @APPLYDATE_I_RS ORDER BY APPLICANTNUMBER_I ASC, APPINTTYPECODE_I ASC, APPLYDATE_I DESC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPINTTYPESTR_I, APPLYDATE_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, EFFECTIVEDATE_I, REVIEWRATINGDECIMA_I, REVIEWRANGE_I, WEIGHTSUM_I, TOTALWEIGHT_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP003 WHERE APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE AND APPINTTYPECODE_I BETWEEN @APPINTTYPECODE_I_RS AND @APPINTTYPECODE_I_RE AND APPLYDATE_I BETWEEN @APPLYDATE_I_RE AND @APPLYDATE_I_RS ORDER BY APPLICANTNUMBER_I ASC, APPINTTYPECODE_I ASC, APPLYDATE_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRAPP003F_2] TO [DYNGRP]
GO
