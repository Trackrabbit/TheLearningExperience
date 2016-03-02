SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900VSS_1] (@aaFiscalPeriod smallint) AS  set nocount on SELECT TOP 1  aaFiscalPeriod, RootBalance, RootQty, FirstBalance, FirstQty, DiffAmount, DiffQty, DEX_ROW_ID FROM .AAG00900V WHERE aaFiscalPeriod = @aaFiscalPeriod ORDER BY aaFiscalPeriod ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900VSS_1] TO [DYNGRP]
GO
