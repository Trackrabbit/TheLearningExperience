SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00400L_3] (@aaDataType_RS smallint, @aaTrxDim_RS char(31), @aaDataType_RE smallint, @aaTrxDim_RE char(31)) AS  set nocount on IF @aaDataType_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 ORDER BY aaDataType DESC, aaTrxDim DESC, DEX_ROW_ID DESC END ELSE IF @aaDataType_RS = @aaDataType_RE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaDataType = @aaDataType_RS AND aaTrxDim BETWEEN @aaTrxDim_RS AND @aaTrxDim_RE ORDER BY aaDataType DESC, aaTrxDim DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaDataType BETWEEN @aaDataType_RS AND @aaDataType_RE AND aaTrxDim BETWEEN @aaTrxDim_RS AND @aaTrxDim_RE ORDER BY aaDataType DESC, aaTrxDim DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00400L_3] TO [DYNGRP]
GO
