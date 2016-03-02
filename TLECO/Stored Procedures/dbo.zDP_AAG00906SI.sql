SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00906SI] (@USERID char(15), @WINTYPE smallint, @CMPANYID smallint, @aaBudgetID int, @aaCodeSequence int, @ACTINDX int, @aaActualPriliminary int, @NETCHNG tinyint, @YEAR1 smallint, @aaRange smallint, @aaAmtQty tinyint, @STR30 char(31), @aaFromValue int, @aaToValue int, @aaRangeType int, @aaNodeCode tinyint, @ReportingLedgerNames char(51), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00906 (USERID, WINTYPE, CMPANYID, aaBudgetID, aaCodeSequence, ACTINDX, aaActualPriliminary, NETCHNG, YEAR1, aaRange, aaAmtQty, STR30, aaFromValue, aaToValue, aaRangeType, aaNodeCode, ReportingLedgerNames) VALUES ( @USERID, @WINTYPE, @CMPANYID, @aaBudgetID, @aaCodeSequence, @ACTINDX, @aaActualPriliminary, @NETCHNG, @YEAR1, @aaRange, @aaAmtQty, @STR30, @aaFromValue, @aaToValue, @aaRangeType, @aaNodeCode, @ReportingLedgerNames) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00906SI] TO [DYNGRP]
GO
