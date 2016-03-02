SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401VSI] (@aaTrxDimID int, @aaTrxDimCodeID int, @aaNode char(51), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00401V (aaTrxDimID, aaTrxDimCodeID, aaNode) VALUES ( @aaTrxDimID, @aaTrxDimCodeID, @aaNode) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401VSI] TO [DYNGRP]
GO
