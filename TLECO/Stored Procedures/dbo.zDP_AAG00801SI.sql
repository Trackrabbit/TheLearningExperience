SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00801SI] (@aaAliasID int, @aaTrxDimID int, @aaTrxDimCodeID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00801 (aaAliasID, aaTrxDimID, aaTrxDimCodeID) VALUES ( @aaAliasID, @aaTrxDimID, @aaTrxDimCodeID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00801SI] TO [DYNGRP]
GO
