SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401V1F_2] (@aaCodeSequence_RS int, @aaCodeSequence_RE int) AS  set nocount on IF @aaCodeSequence_RS IS NULL BEGIN SELECT TOP 25  aaTrxDimCodeID, aaCodeSequence, aaTrxDimCodeDescr, PRCNTAGE, DEX_ROW_ID FROM .AAG00401V1 ORDER BY aaCodeSequence ASC, DEX_ROW_ID ASC END ELSE IF @aaCodeSequence_RS = @aaCodeSequence_RE BEGIN SELECT TOP 25  aaTrxDimCodeID, aaCodeSequence, aaTrxDimCodeDescr, PRCNTAGE, DEX_ROW_ID FROM .AAG00401V1 WHERE aaCodeSequence = @aaCodeSequence_RS ORDER BY aaCodeSequence ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaTrxDimCodeID, aaCodeSequence, aaTrxDimCodeDescr, PRCNTAGE, DEX_ROW_ID FROM .AAG00401V1 WHERE aaCodeSequence BETWEEN @aaCodeSequence_RS AND @aaCodeSequence_RE ORDER BY aaCodeSequence ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401V1F_2] TO [DYNGRP]
GO
