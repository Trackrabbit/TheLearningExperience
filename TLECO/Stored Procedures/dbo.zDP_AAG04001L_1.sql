SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG04001L_1] (@aaFASetupID_RS int, @ListID_RS smallint, @aaTrxDimID_RS int, @aaFASetupID_RE int, @ListID_RE smallint, @aaTrxDimID_RE int) AS  set nocount on IF @aaFASetupID_RS IS NULL BEGIN SELECT TOP 25  aaFASetupID, ListID, aaTrxDimID, aaTrxDimCodeID, DEX_ROW_ID FROM .AAG04001 ORDER BY aaFASetupID DESC, ListID DESC, aaTrxDimID DESC END ELSE IF @aaFASetupID_RS = @aaFASetupID_RE BEGIN SELECT TOP 25  aaFASetupID, ListID, aaTrxDimID, aaTrxDimCodeID, DEX_ROW_ID FROM .AAG04001 WHERE aaFASetupID = @aaFASetupID_RS AND ListID BETWEEN @ListID_RS AND @ListID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaFASetupID DESC, ListID DESC, aaTrxDimID DESC END ELSE BEGIN SELECT TOP 25  aaFASetupID, ListID, aaTrxDimID, aaTrxDimCodeID, DEX_ROW_ID FROM .AAG04001 WHERE aaFASetupID BETWEEN @aaFASetupID_RS AND @aaFASetupID_RE AND ListID BETWEEN @ListID_RS AND @ListID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaFASetupID DESC, ListID DESC, aaTrxDimID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG04001L_1] TO [DYNGRP]
GO
