SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRAPP003UN_4] (@BS int, @COMPANYCODE_I char(7), @DIVISIONCODE_I char(7), @DEPARTMENTCODE_I char(7), @POSITIONCODE_I char(7), @EFFECTIVEDATE_I datetime, @COMPANYCODE_I_RS char(7), @DIVISIONCODE_I_RS char(7), @DEPARTMENTCODE_I_RS char(7), @POSITIONCODE_I_RS char(7), @EFFECTIVEDATE_I_RS datetime, @COMPANYCODE_I_RE char(7), @DIVISIONCODE_I_RE char(7), @DEPARTMENTCODE_I_RE char(7), @POSITIONCODE_I_RE char(7), @EFFECTIVEDATE_I_RE datetime) AS  set nocount on IF @COMPANYCODE_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPINTTYPESTR_I, APPLYDATE_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, EFFECTIVEDATE_I, REVIEWRATINGDECIMA_I, REVIEWRANGE_I, WEIGHTSUM_I, TOTALWEIGHT_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP003 WHERE ( COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND POSITIONCODE_I = @POSITIONCODE_I AND EFFECTIVEDATE_I < @EFFECTIVEDATE_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND POSITIONCODE_I > @POSITIONCODE_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND DEPARTMENTCODE_I > @DEPARTMENTCODE_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I > @DIVISIONCODE_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DIVISIONCODE_I ASC, DEPARTMENTCODE_I ASC, POSITIONCODE_I ASC, EFFECTIVEDATE_I DESC, DEX_ROW_ID ASC END ELSE IF @COMPANYCODE_I_RS = @COMPANYCODE_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPINTTYPESTR_I, APPLYDATE_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, EFFECTIVEDATE_I, REVIEWRATINGDECIMA_I, REVIEWRANGE_I, WEIGHTSUM_I, TOTALWEIGHT_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP003 WHERE COMPANYCODE_I = @COMPANYCODE_I_RS AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND DEPARTMENTCODE_I BETWEEN @DEPARTMENTCODE_I_RS AND @DEPARTMENTCODE_I_RE AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND EFFECTIVEDATE_I BETWEEN @EFFECTIVEDATE_I_RE AND @EFFECTIVEDATE_I_RS AND ( COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND POSITIONCODE_I = @POSITIONCODE_I AND EFFECTIVEDATE_I < @EFFECTIVEDATE_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND POSITIONCODE_I > @POSITIONCODE_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND DEPARTMENTCODE_I > @DEPARTMENTCODE_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I > @DIVISIONCODE_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DIVISIONCODE_I ASC, DEPARTMENTCODE_I ASC, POSITIONCODE_I ASC, EFFECTIVEDATE_I DESC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, APPINTTYPECODE_I, APPINTTYPESTR_I, APPLYDATE_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, EFFECTIVEDATE_I, REVIEWRATINGDECIMA_I, REVIEWRANGE_I, WEIGHTSUM_I, TOTALWEIGHT_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP003 WHERE COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND DEPARTMENTCODE_I BETWEEN @DEPARTMENTCODE_I_RS AND @DEPARTMENTCODE_I_RE AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND EFFECTIVEDATE_I BETWEEN @EFFECTIVEDATE_I_RE AND @EFFECTIVEDATE_I_RS AND ( COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND POSITIONCODE_I = @POSITIONCODE_I AND EFFECTIVEDATE_I < @EFFECTIVEDATE_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND POSITIONCODE_I > @POSITIONCODE_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND DEPARTMENTCODE_I > @DEPARTMENTCODE_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I > @DIVISIONCODE_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DIVISIONCODE_I ASC, DEPARTMENTCODE_I ASC, POSITIONCODE_I ASC, EFFECTIVEDATE_I DESC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRAPP003UN_4] TO [DYNGRP]
GO
