SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00906SS_1] (@USERID char(15), @WINTYPE smallint, @CMPANYID smallint) AS  set nocount on SELECT TOP 1  USERID, WINTYPE, CMPANYID, aaBudgetID, aaCodeSequence, ACTINDX, aaActualPriliminary, NETCHNG, YEAR1, aaRange, aaAmtQty, STR30, aaFromValue, aaToValue, aaRangeType, aaNodeCode, ReportingLedgerNames, DEX_ROW_ID FROM .AAG00906 WHERE USERID = @USERID AND WINTYPE = @WINTYPE AND CMPANYID = @CMPANYID ORDER BY USERID ASC, WINTYPE ASC, CMPANYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00906SS_1] TO [DYNGRP]
GO
