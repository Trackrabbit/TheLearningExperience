SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00400F_4] (@aaTrxDimDescr_RS char(51), @aaTrxDim_RS char(31), @aaTrxDimDescr_RE char(51), @aaTrxDim_RE char(31)) AS  set nocount on IF @aaTrxDimDescr_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 ORDER BY aaTrxDimDescr ASC, aaTrxDim ASC, DEX_ROW_ID ASC END ELSE IF @aaTrxDimDescr_RS = @aaTrxDimDescr_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaTrxDimDescr = @aaTrxDimDescr_RS AND aaTrxDim BETWEEN @aaTrxDim_RS AND @aaTrxDim_RE ORDER BY aaTrxDimDescr ASC, aaTrxDim ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaTrxDimDescr BETWEEN @aaTrxDimDescr_RS AND @aaTrxDimDescr_RE AND aaTrxDim BETWEEN @aaTrxDim_RS AND @aaTrxDim_RE ORDER BY aaTrxDimDescr ASC, aaTrxDim ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00400F_4] TO [DYNGRP]
GO
