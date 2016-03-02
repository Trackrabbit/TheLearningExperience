SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00402SI] (@aaTrxDimID int, @aaTrxDimCodeNumID int, @aaTrxDimCodeNum numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00402 (aaTrxDimID, aaTrxDimCodeNumID, aaTrxDimCodeNum) VALUES ( @aaTrxDimID, @aaTrxDimCodeNumID, @aaTrxDimCodeNum) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00402SI] TO [DYNGRP]
GO
