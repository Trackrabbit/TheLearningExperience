SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200F_2] (@aaAcctClassID_RS int, @aaAcctClassID_RE int) AS  set nocount on IF @aaAcctClassID_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, aaAcctClassID, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG00200 ORDER BY aaAcctClassID ASC, DEX_ROW_ID ASC END ELSE IF @aaAcctClassID_RS = @aaAcctClassID_RE BEGIN SELECT TOP 25  ACTINDX, aaAcctClassID, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG00200 WHERE aaAcctClassID = @aaAcctClassID_RS ORDER BY aaAcctClassID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, aaAcctClassID, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG00200 WHERE aaAcctClassID BETWEEN @aaAcctClassID_RS AND @aaAcctClassID_RE ORDER BY aaAcctClassID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200F_2] TO [DYNGRP]
GO
