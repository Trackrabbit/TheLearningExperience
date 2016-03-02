SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200VUN_4] (@BS int, @ACCTTYPE smallint, @ACCTTYPE_RS smallint, @ACCTTYPE_RE smallint) AS  set nocount on IF @ACCTTYPE_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, ACTNUMST, ACTDESCR, ACCTTYPE, DEX_ROW_ID FROM .AAG00200V WHERE ( ACCTTYPE > @ACCTTYPE ) ORDER BY ACCTTYPE ASC, DEX_ROW_ID ASC END ELSE IF @ACCTTYPE_RS = @ACCTTYPE_RE BEGIN SELECT TOP 25  ACTINDX, ACTNUMST, ACTDESCR, ACCTTYPE, DEX_ROW_ID FROM .AAG00200V WHERE ACCTTYPE = @ACCTTYPE_RS AND ( ACCTTYPE > @ACCTTYPE ) ORDER BY ACCTTYPE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, ACTNUMST, ACTDESCR, ACCTTYPE, DEX_ROW_ID FROM .AAG00200V WHERE ACCTTYPE BETWEEN @ACCTTYPE_RS AND @ACCTTYPE_RE AND ( ACCTTYPE > @ACCTTYPE ) ORDER BY ACCTTYPE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200VUN_4] TO [DYNGRP]
GO