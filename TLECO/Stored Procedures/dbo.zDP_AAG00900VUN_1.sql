SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900VUN_1] (@BS int, @aaFiscalPeriod smallint, @aaFiscalPeriod_RS smallint, @aaFiscalPeriod_RE smallint) AS  set nocount on IF @aaFiscalPeriod_RS IS NULL BEGIN SELECT TOP 25  aaFiscalPeriod, RootBalance, RootQty, FirstBalance, FirstQty, DiffAmount, DiffQty, DEX_ROW_ID FROM .AAG00900V WHERE ( aaFiscalPeriod > @aaFiscalPeriod ) ORDER BY aaFiscalPeriod ASC, DEX_ROW_ID ASC END ELSE IF @aaFiscalPeriod_RS = @aaFiscalPeriod_RE BEGIN SELECT TOP 25  aaFiscalPeriod, RootBalance, RootQty, FirstBalance, FirstQty, DiffAmount, DiffQty, DEX_ROW_ID FROM .AAG00900V WHERE aaFiscalPeriod = @aaFiscalPeriod_RS AND ( aaFiscalPeriod > @aaFiscalPeriod ) ORDER BY aaFiscalPeriod ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaFiscalPeriod, RootBalance, RootQty, FirstBalance, FirstQty, DiffAmount, DiffQty, DEX_ROW_ID FROM .AAG00900V WHERE aaFiscalPeriod BETWEEN @aaFiscalPeriod_RS AND @aaFiscalPeriod_RE AND ( aaFiscalPeriod > @aaFiscalPeriod ) ORDER BY aaFiscalPeriod ASC, DEX_ROW_ID ASC END set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900VUN_1] TO [DYNGRP]
GO
