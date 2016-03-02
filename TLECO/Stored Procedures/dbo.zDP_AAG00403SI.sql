SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00403SI] (@aaTrxDimID int, @aaTrxDimCodeBoolID int, @aaTrxDimCodeBool tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00403 (aaTrxDimID, aaTrxDimCodeBoolID, aaTrxDimCodeBool) VALUES ( @aaTrxDimID, @aaTrxDimCodeBoolID, @aaTrxDimCodeBool) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00403SI] TO [DYNGRP]
GO
