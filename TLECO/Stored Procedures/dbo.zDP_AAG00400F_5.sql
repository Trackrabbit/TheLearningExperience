SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00400F_5] (@aaOrder_RS int, @aaOrder_RE int) AS  set nocount on IF @aaOrder_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 ORDER BY aaOrder ASC, DEX_ROW_ID ASC END ELSE IF @aaOrder_RS = @aaOrder_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaOrder = @aaOrder_RS ORDER BY aaOrder ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaOrder BETWEEN @aaOrder_RS AND @aaOrder_RE ORDER BY aaOrder ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00400F_5] TO [DYNGRP]
GO
