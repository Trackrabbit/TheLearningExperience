SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510110N_2] (@BS int, @MJW_Property_Name char(63), @DEX_ROW_ID int, @MJW_Property_Name_RS char(63), @MJW_Property_Name_RE char(63)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Property_Name_RS IS NULL BEGIN SELECT TOP 25  MJW_Property_ID, MJW_Property_Name, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0510110 WHERE ( MJW_Property_Name = @MJW_Property_Name AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Property_Name > @MJW_Property_Name ) ORDER BY MJW_Property_Name ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Property_Name_RS = @MJW_Property_Name_RE BEGIN SELECT TOP 25  MJW_Property_ID, MJW_Property_Name, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0510110 WHERE MJW_Property_Name = @MJW_Property_Name_RS AND ( MJW_Property_Name = @MJW_Property_Name AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Property_Name > @MJW_Property_Name ) ORDER BY MJW_Property_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Property_ID, MJW_Property_Name, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0510110 WHERE MJW_Property_Name BETWEEN @MJW_Property_Name_RS AND @MJW_Property_Name_RE AND ( MJW_Property_Name = @MJW_Property_Name AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Property_Name > @MJW_Property_Name ) ORDER BY MJW_Property_Name ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510110N_2] TO [DYNGRP]
GO
