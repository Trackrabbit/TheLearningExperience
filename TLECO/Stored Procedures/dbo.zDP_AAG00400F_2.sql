SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00400F_2] (@aaTrxDim_RS char(31), @aaTrxDim_RE char(31)) AS  set nocount on IF @aaTrxDim_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 ORDER BY aaTrxDim ASC END ELSE IF @aaTrxDim_RS = @aaTrxDim_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaTrxDim = @aaTrxDim_RS ORDER BY aaTrxDim ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaTrxDim BETWEEN @aaTrxDim_RS AND @aaTrxDim_RE ORDER BY aaTrxDim ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00400F_2] TO [DYNGRP]
GO
