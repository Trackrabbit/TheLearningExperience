SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00902SI] (@aaBudgetTreeID int, @aaTrxDimCodeID int, @aaTrxDimParCodeID int, @aaCodeSequence int, @aaLevel int, @aaLvlCodeString char(51), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00902 (aaBudgetTreeID, aaTrxDimCodeID, aaTrxDimParCodeID, aaCodeSequence, aaLevel, aaLvlCodeString) VALUES ( @aaBudgetTreeID, @aaTrxDimCodeID, @aaTrxDimParCodeID, @aaCodeSequence, @aaLevel, @aaLvlCodeString) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00902SI] TO [DYNGRP]
GO
