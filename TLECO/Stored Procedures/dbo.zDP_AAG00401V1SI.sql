SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401V1SI] (@aaTrxDimCodeID int, @aaCodeSequence int, @aaTrxDimCodeDescr char(51), @PRCNTAGE numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00401V1 (aaTrxDimCodeID, aaCodeSequence, aaTrxDimCodeDescr, PRCNTAGE) VALUES ( @aaTrxDimCodeID, @aaCodeSequence, @aaTrxDimCodeDescr, @PRCNTAGE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401V1SI] TO [DYNGRP]
GO
