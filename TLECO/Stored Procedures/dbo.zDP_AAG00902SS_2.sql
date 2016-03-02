SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00902SS_2] (@aaBudgetTreeID int, @aaCodeSequence int) AS  set nocount on SELECT TOP 1  aaBudgetTreeID, aaTrxDimCodeID, aaTrxDimParCodeID, aaCodeSequence, aaLevel, aaLvlCodeString, DEX_ROW_ID FROM .AAG00902 WHERE aaBudgetTreeID = @aaBudgetTreeID AND aaCodeSequence = @aaCodeSequence ORDER BY aaBudgetTreeID ASC, aaCodeSequence ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00902SS_2] TO [DYNGRP]
GO
