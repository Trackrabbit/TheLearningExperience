SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00902N_2] (@BS int, @aaBudgetTreeID int, @aaCodeSequence int, @aaBudgetTreeID_RS int, @aaCodeSequence_RS int, @aaBudgetTreeID_RE int, @aaCodeSequence_RE int) AS  set nocount on IF @aaBudgetTreeID_RS IS NULL BEGIN SELECT TOP 25  aaBudgetTreeID, aaTrxDimCodeID, aaTrxDimParCodeID, aaCodeSequence, aaLevel, aaLvlCodeString, DEX_ROW_ID FROM .AAG00902 WHERE ( aaBudgetTreeID = @aaBudgetTreeID AND aaCodeSequence > @aaCodeSequence OR aaBudgetTreeID > @aaBudgetTreeID ) ORDER BY aaBudgetTreeID ASC, aaCodeSequence ASC END ELSE IF @aaBudgetTreeID_RS = @aaBudgetTreeID_RE BEGIN SELECT TOP 25  aaBudgetTreeID, aaTrxDimCodeID, aaTrxDimParCodeID, aaCodeSequence, aaLevel, aaLvlCodeString, DEX_ROW_ID FROM .AAG00902 WHERE aaBudgetTreeID = @aaBudgetTreeID_RS AND aaCodeSequence BETWEEN @aaCodeSequence_RS AND @aaCodeSequence_RE AND ( aaBudgetTreeID = @aaBudgetTreeID AND aaCodeSequence > @aaCodeSequence OR aaBudgetTreeID > @aaBudgetTreeID ) ORDER BY aaBudgetTreeID ASC, aaCodeSequence ASC END ELSE BEGIN SELECT TOP 25  aaBudgetTreeID, aaTrxDimCodeID, aaTrxDimParCodeID, aaCodeSequence, aaLevel, aaLvlCodeString, DEX_ROW_ID FROM .AAG00902 WHERE aaBudgetTreeID BETWEEN @aaBudgetTreeID_RS AND @aaBudgetTreeID_RE AND aaCodeSequence BETWEEN @aaCodeSequence_RS AND @aaCodeSequence_RE AND ( aaBudgetTreeID = @aaBudgetTreeID AND aaCodeSequence > @aaCodeSequence OR aaBudgetTreeID > @aaBudgetTreeID ) ORDER BY aaBudgetTreeID ASC, aaCodeSequence ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00902N_2] TO [DYNGRP]
GO
