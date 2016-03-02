SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200LN_3] (@BS int, @aaAccountClass char(15), @DEX_ROW_ID int, @aaAccountClass_RS char(15), @aaAccountClass_RE char(15)) AS  set nocount on IF @aaAccountClass_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, ACTDESCR, aaAccountClass, aaAcctClassID, ACCTTYPE, PSTNGTYP, Status, DEX_ROW_ID FROM .AAG00200L WHERE ( aaAccountClass = @aaAccountClass AND DEX_ROW_ID > @DEX_ROW_ID OR aaAccountClass > @aaAccountClass ) ORDER BY aaAccountClass ASC, DEX_ROW_ID ASC END ELSE IF @aaAccountClass_RS = @aaAccountClass_RE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, ACTDESCR, aaAccountClass, aaAcctClassID, ACCTTYPE, PSTNGTYP, Status, DEX_ROW_ID FROM .AAG00200L WHERE aaAccountClass = @aaAccountClass_RS AND ( aaAccountClass = @aaAccountClass AND DEX_ROW_ID > @DEX_ROW_ID OR aaAccountClass > @aaAccountClass ) ORDER BY aaAccountClass ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, ACTDESCR, aaAccountClass, aaAcctClassID, ACCTTYPE, PSTNGTYP, Status, DEX_ROW_ID FROM .AAG00200L WHERE aaAccountClass BETWEEN @aaAccountClass_RS AND @aaAccountClass_RE AND ( aaAccountClass = @aaAccountClass AND DEX_ROW_ID > @DEX_ROW_ID OR aaAccountClass > @aaAccountClass ) ORDER BY aaAccountClass ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200LN_3] TO [DYNGRP]
GO
