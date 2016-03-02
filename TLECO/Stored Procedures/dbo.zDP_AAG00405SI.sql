SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00405SI] (@aaTrxDimID int, @aaRelTrxDimID int, @aaTrxDimRelType smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00405 (aaTrxDimID, aaRelTrxDimID, aaTrxDimRelType) VALUES ( @aaTrxDimID, @aaRelTrxDimID, @aaTrxDimRelType) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00405SI] TO [DYNGRP]
GO
