SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00315SS_1] (@USERID char(15)) AS  set nocount on SELECT TOP 1  USERID, YEAR1, aaYearFld, From_Period, To_Period, aaPerFld, aaPerStr, aaEmptyCodeStr, aaTimeSpreadUsed, aaCodeSpreadUsed, aaCodeSpreadCol, THSSPRTR, DECSPRTR, aaNegSignLeft, aaNegSignRight, aaTruncateTo, aaClearEmptyCells, DEX_ROW_ID, aaSQLCreate, aaSQLInsert, aaSQLSelect, aaSQLFrom, aaSQLWhere, aaSQLGroupBy, aaSQLCols FROM .AAG00315 WHERE USERID = @USERID ORDER BY USERID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00315SS_1] TO [DYNGRP]
GO
