SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00400F_1] (@aaTrxDimID_RS int, @aaTrxDimID_RE int) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 ORDER BY aaTrxDimID ASC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaTrxDimID = @aaTrxDimID_RS ORDER BY aaTrxDimID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaTrxDimID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00400F_1] TO [DYNGRP]
GO
