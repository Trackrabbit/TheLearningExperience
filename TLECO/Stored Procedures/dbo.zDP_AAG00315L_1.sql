SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00315L_1] (@USERID_RS char(15), @USERID_RE char(15)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, YEAR1, aaYearFld, From_Period, To_Period, aaPerFld, aaPerStr, aaEmptyCodeStr, aaTimeSpreadUsed, aaCodeSpreadUsed, aaCodeSpreadCol, THSSPRTR, DECSPRTR, aaNegSignLeft, aaNegSignRight, aaTruncateTo, aaClearEmptyCells, DEX_ROW_ID, aaSQLCreate, aaSQLInsert, aaSQLSelect, aaSQLFrom, aaSQLWhere, aaSQLGroupBy, aaSQLCols FROM .AAG00315 ORDER BY USERID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, YEAR1, aaYearFld, From_Period, To_Period, aaPerFld, aaPerStr, aaEmptyCodeStr, aaTimeSpreadUsed, aaCodeSpreadUsed, aaCodeSpreadCol, THSSPRTR, DECSPRTR, aaNegSignLeft, aaNegSignRight, aaTruncateTo, aaClearEmptyCells, DEX_ROW_ID, aaSQLCreate, aaSQLInsert, aaSQLSelect, aaSQLFrom, aaSQLWhere, aaSQLGroupBy, aaSQLCols FROM .AAG00315 WHERE USERID = @USERID_RS ORDER BY USERID DESC END ELSE BEGIN SELECT TOP 25  USERID, YEAR1, aaYearFld, From_Period, To_Period, aaPerFld, aaPerStr, aaEmptyCodeStr, aaTimeSpreadUsed, aaCodeSpreadUsed, aaCodeSpreadCol, THSSPRTR, DECSPRTR, aaNegSignLeft, aaNegSignRight, aaTruncateTo, aaClearEmptyCells, DEX_ROW_ID, aaSQLCreate, aaSQLInsert, aaSQLSelect, aaSQLFrom, aaSQLWhere, aaSQLGroupBy, aaSQLCols FROM .AAG00315 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY USERID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00315L_1] TO [DYNGRP]
GO
