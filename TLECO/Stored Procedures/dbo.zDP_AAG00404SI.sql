SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00404SI] (@aaTrxDimID int, @aaTrxDimCodeDateID int, @aaTrxDimCodeDate datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00404 (aaTrxDimID, aaTrxDimCodeDateID, aaTrxDimCodeDate) VALUES ( @aaTrxDimID, @aaTrxDimCodeDateID, @aaTrxDimCodeDate) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00404SI] TO [DYNGRP]
GO
