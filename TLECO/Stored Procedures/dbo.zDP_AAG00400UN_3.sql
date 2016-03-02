SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00400UN_3] (@BS int, @aaDataType smallint, @aaTrxDim char(31), @aaDataType_RS smallint, @aaTrxDim_RS char(31), @aaDataType_RE smallint, @aaTrxDim_RE char(31)) AS  set nocount on IF @aaDataType_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE ( aaDataType = @aaDataType AND aaTrxDim > @aaTrxDim OR aaDataType > @aaDataType ) ORDER BY aaDataType ASC, aaTrxDim ASC, DEX_ROW_ID ASC END ELSE IF @aaDataType_RS = @aaDataType_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaDataType = @aaDataType_RS AND aaTrxDim BETWEEN @aaTrxDim_RS AND @aaTrxDim_RE AND ( aaDataType = @aaDataType AND aaTrxDim > @aaTrxDim OR aaDataType > @aaDataType ) ORDER BY aaDataType ASC, aaTrxDim ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaDataType BETWEEN @aaDataType_RS AND @aaDataType_RE AND aaTrxDim BETWEEN @aaTrxDim_RS AND @aaTrxDim_RE AND ( aaDataType = @aaDataType AND aaTrxDim > @aaTrxDim OR aaDataType > @aaDataType ) ORDER BY aaDataType ASC, aaTrxDim ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00400UN_3] TO [DYNGRP]
GO
