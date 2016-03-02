SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00400SS_2] (@aaTrxDim char(31)) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00400 WHERE aaTrxDim = @aaTrxDim ORDER BY aaTrxDim ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00400SS_2] TO [DYNGRP]
GO
