SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00400SI] (@aaTrxDimID int, @aaTrxDim char(31), @aaDataType smallint, @aaTrxDimDescr char(51), @aaTrxDimDescr2 char(51), @aaOrder int, @DECPLQTY smallint, @UOMSCHDL char(11), @aaAddrTrue tinyint, @aaAddCodesOnFly tinyint, @aaDontAskForNewCodes tinyint, @NOTEINDX numeric(19,5), @INACTIVE tinyint, @aaIncYEC tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00400 (aaTrxDimID, aaTrxDim, aaDataType, aaTrxDimDescr, aaTrxDimDescr2, aaOrder, DECPLQTY, UOMSCHDL, aaAddrTrue, aaAddCodesOnFly, aaDontAskForNewCodes, NOTEINDX, INACTIVE, aaIncYEC) VALUES ( @aaTrxDimID, @aaTrxDim, @aaDataType, @aaTrxDimDescr, @aaTrxDimDescr2, @aaOrder, @DECPLQTY, @UOMSCHDL, @aaAddrTrue, @aaAddCodesOnFly, @aaDontAskForNewCodes, @NOTEINDX, @INACTIVE, @aaIncYEC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00400SI] TO [DYNGRP]
GO
