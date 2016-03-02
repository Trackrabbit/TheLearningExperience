SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00902L_2] (@aaBudgetTreeID_RS int, @aaCodeSequence_RS int, @aaBudgetTreeID_RE int, @aaCodeSequence_RE int) AS  set nocount on IF @aaBudgetTreeID_RS IS NULL BEGIN SELECT TOP 25  aaBudgetTreeID, aaTrxDimCodeID, aaTrxDimParCodeID, aaCodeSequence, aaLevel, aaLvlCodeString, DEX_ROW_ID FROM .AAG00902 ORDER BY aaBudgetTreeID DESC, aaCodeSequence DESC END ELSE IF @aaBudgetTreeID_RS = @aaBudgetTreeID_RE BEGIN SELECT TOP 25  aaBudgetTreeID, aaTrxDimCodeID, aaTrxDimParCodeID, aaCodeSequence, aaLevel, aaLvlCodeString, DEX_ROW_ID FROM .AAG00902 WHERE aaBudgetTreeID = @aaBudgetTreeID_RS AND aaCodeSequence BETWEEN @aaCodeSequence_RS AND @aaCodeSequence_RE ORDER BY aaBudgetTreeID DESC, aaCodeSequence DESC END ELSE BEGIN SELECT TOP 25  aaBudgetTreeID, aaTrxDimCodeID, aaTrxDimParCodeID, aaCodeSequence, aaLevel, aaLvlCodeString, DEX_ROW_ID FROM .AAG00902 WHERE aaBudgetTreeID BETWEEN @aaBudgetTreeID_RS AND @aaBudgetTreeID_RE AND aaCodeSequence BETWEEN @aaCodeSequence_RS AND @aaCodeSequence_RE ORDER BY aaBudgetTreeID DESC, aaCodeSequence DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00902L_2] TO [DYNGRP]
GO
