SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200VN_2] (@BS int, @ACTNUMST char(129), @DEX_ROW_ID int, @ACTNUMST_RS char(129), @ACTNUMST_RE char(129)) AS  set nocount on IF @ACTNUMST_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, ACTNUMST, ACTDESCR, ACCTTYPE, DEX_ROW_ID FROM .AAG00200V WHERE ( ACTNUMST = @ACTNUMST AND DEX_ROW_ID > @DEX_ROW_ID OR ACTNUMST > @ACTNUMST ) ORDER BY ACTNUMST ASC, DEX_ROW_ID ASC END ELSE IF @ACTNUMST_RS = @ACTNUMST_RE BEGIN SELECT TOP 25  ACTINDX, ACTNUMST, ACTDESCR, ACCTTYPE, DEX_ROW_ID FROM .AAG00200V WHERE ACTNUMST = @ACTNUMST_RS AND ( ACTNUMST = @ACTNUMST AND DEX_ROW_ID > @DEX_ROW_ID OR ACTNUMST > @ACTNUMST ) ORDER BY ACTNUMST ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, ACTNUMST, ACTDESCR, ACCTTYPE, DEX_ROW_ID FROM .AAG00200V WHERE ACTNUMST BETWEEN @ACTNUMST_RS AND @ACTNUMST_RE AND ( ACTNUMST = @ACTNUMST AND DEX_ROW_ID > @DEX_ROW_ID OR ACTNUMST > @ACTNUMST ) ORDER BY ACTNUMST ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200VN_2] TO [DYNGRP]
GO
