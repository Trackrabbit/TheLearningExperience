SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401SI] (@aaTrxDimID int, @aaTrxDimCodeID int, @aaTrxDimCode char(31), @aaTrxDimCodeDescr char(51), @aaTrxDimCodeDescr2 char(51), @NOTEINDX numeric(19,5), @INACTIVE tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00401 (aaTrxDimID, aaTrxDimCodeID, aaTrxDimCode, aaTrxDimCodeDescr, aaTrxDimCodeDescr2, NOTEINDX, INACTIVE) VALUES ( @aaTrxDimID, @aaTrxDimCodeID, @aaTrxDimCode, @aaTrxDimCodeDescr, @aaTrxDimCodeDescr2, @NOTEINDX, @INACTIVE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401SI] TO [DYNGRP]
GO
