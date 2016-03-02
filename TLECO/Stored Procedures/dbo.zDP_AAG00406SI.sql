SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00406SI] (@aaTrxDimID int, @aaTrxDimCodeID int, @aaRelTrxDimID int, @aaRelTrxDimCodeID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00406 (aaTrxDimID, aaTrxDimCodeID, aaRelTrxDimID, aaRelTrxDimCodeID) VALUES ( @aaTrxDimID, @aaTrxDimCodeID, @aaRelTrxDimID, @aaRelTrxDimCodeID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00406SI] TO [DYNGRP]
GO
