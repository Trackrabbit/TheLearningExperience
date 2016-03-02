SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900VL_1] (@aaFiscalPeriod_RS smallint, @aaFiscalPeriod_RE smallint) AS  set nocount on IF @aaFiscalPeriod_RS IS NULL BEGIN SELECT TOP 25  aaFiscalPeriod, RootBalance, RootQty, FirstBalance, FirstQty, DiffAmount, DiffQty, DEX_ROW_ID FROM .AAG00900V ORDER BY aaFiscalPeriod DESC, DEX_ROW_ID DESC END ELSE IF @aaFiscalPeriod_RS = @aaFiscalPeriod_RE BEGIN SELECT TOP 25  aaFiscalPeriod, RootBalance, RootQty, FirstBalance, FirstQty, DiffAmount, DiffQty, DEX_ROW_ID FROM .AAG00900V WHERE aaFiscalPeriod = @aaFiscalPeriod_RS ORDER BY aaFiscalPeriod DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaFiscalPeriod, RootBalance, RootQty, FirstBalance, FirstQty, DiffAmount, DiffQty, DEX_ROW_ID FROM .AAG00900V WHERE aaFiscalPeriod BETWEEN @aaFiscalPeriod_RS AND @aaFiscalPeriod_RE ORDER BY aaFiscalPeriod DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900VL_1] TO [DYNGRP]
GO
