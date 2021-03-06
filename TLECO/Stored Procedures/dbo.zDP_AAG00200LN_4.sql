SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200LN_4] (@BS int, @aaAcctClassID int, @DEX_ROW_ID int, @aaAcctClassID_RS int, @aaAcctClassID_RE int) AS  set nocount on IF @aaAcctClassID_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, ACTDESCR, aaAccountClass, aaAcctClassID, ACCTTYPE, PSTNGTYP, Status, DEX_ROW_ID FROM .AAG00200L WHERE ( aaAcctClassID = @aaAcctClassID AND DEX_ROW_ID > @DEX_ROW_ID OR aaAcctClassID > @aaAcctClassID ) ORDER BY aaAcctClassID ASC, DEX_ROW_ID ASC END ELSE IF @aaAcctClassID_RS = @aaAcctClassID_RE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, ACTDESCR, aaAccountClass, aaAcctClassID, ACCTTYPE, PSTNGTYP, Status, DEX_ROW_ID FROM .AAG00200L WHERE aaAcctClassID = @aaAcctClassID_RS AND ( aaAcctClassID = @aaAcctClassID AND DEX_ROW_ID > @DEX_ROW_ID OR aaAcctClassID > @aaAcctClassID ) ORDER BY aaAcctClassID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, ACTDESCR, aaAccountClass, aaAcctClassID, ACCTTYPE, PSTNGTYP, Status, DEX_ROW_ID FROM .AAG00200L WHERE aaAcctClassID BETWEEN @aaAcctClassID_RS AND @aaAcctClassID_RE AND ( aaAcctClassID = @aaAcctClassID AND DEX_ROW_ID > @DEX_ROW_ID OR aaAcctClassID > @aaAcctClassID ) ORDER BY aaAcctClassID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200LN_4] TO [DYNGRP]
GO
