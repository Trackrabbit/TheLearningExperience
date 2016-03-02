SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00202L_1] (@aaAcctClassID_RS int, @aaTrxDimID_RS int, @aaAcctClassID_RE int, @aaTrxDimID_RE int) AS  set nocount on IF @aaAcctClassID_RS IS NULL BEGIN SELECT TOP 25  aaAcctClassID, aaTrxDimID, aaTrxDimCodeIDDflt, aaDataEntry, aaShow, DEX_ROW_ID FROM .AAG00202 ORDER BY aaAcctClassID DESC, aaTrxDimID DESC END ELSE IF @aaAcctClassID_RS = @aaAcctClassID_RE BEGIN SELECT TOP 25  aaAcctClassID, aaTrxDimID, aaTrxDimCodeIDDflt, aaDataEntry, aaShow, DEX_ROW_ID FROM .AAG00202 WHERE aaAcctClassID = @aaAcctClassID_RS AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaAcctClassID DESC, aaTrxDimID DESC END ELSE BEGIN SELECT TOP 25  aaAcctClassID, aaTrxDimID, aaTrxDimCodeIDDflt, aaDataEntry, aaShow, DEX_ROW_ID FROM .AAG00202 WHERE aaAcctClassID BETWEEN @aaAcctClassID_RS AND @aaAcctClassID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaAcctClassID DESC, aaTrxDimID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00202L_1] TO [DYNGRP]
GO
