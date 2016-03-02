SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00202N_1] (@BS int, @aaAcctClassID int, @aaTrxDimID int, @aaAcctClassID_RS int, @aaTrxDimID_RS int, @aaAcctClassID_RE int, @aaTrxDimID_RE int) AS  set nocount on IF @aaAcctClassID_RS IS NULL BEGIN SELECT TOP 25  aaAcctClassID, aaTrxDimID, aaTrxDimCodeIDDflt, aaDataEntry, aaShow, DEX_ROW_ID FROM .AAG00202 WHERE ( aaAcctClassID = @aaAcctClassID AND aaTrxDimID > @aaTrxDimID OR aaAcctClassID > @aaAcctClassID ) ORDER BY aaAcctClassID ASC, aaTrxDimID ASC END ELSE IF @aaAcctClassID_RS = @aaAcctClassID_RE BEGIN SELECT TOP 25  aaAcctClassID, aaTrxDimID, aaTrxDimCodeIDDflt, aaDataEntry, aaShow, DEX_ROW_ID FROM .AAG00202 WHERE aaAcctClassID = @aaAcctClassID_RS AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND ( aaAcctClassID = @aaAcctClassID AND aaTrxDimID > @aaTrxDimID OR aaAcctClassID > @aaAcctClassID ) ORDER BY aaAcctClassID ASC, aaTrxDimID ASC END ELSE BEGIN SELECT TOP 25  aaAcctClassID, aaTrxDimID, aaTrxDimCodeIDDflt, aaDataEntry, aaShow, DEX_ROW_ID FROM .AAG00202 WHERE aaAcctClassID BETWEEN @aaAcctClassID_RS AND @aaAcctClassID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND ( aaAcctClassID = @aaAcctClassID AND aaTrxDimID > @aaTrxDimID OR aaAcctClassID > @aaAcctClassID ) ORDER BY aaAcctClassID ASC, aaTrxDimID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00202N_1] TO [DYNGRP]
GO
