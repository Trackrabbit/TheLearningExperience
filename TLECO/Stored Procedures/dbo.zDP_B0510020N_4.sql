SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510020N_4] (@BS int, @MJW_Series_Legal_Name char(65), @DEX_ROW_ID int, @MJW_Series_Legal_Name_RS char(65), @MJW_Series_Legal_Name_RE char(65)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Series_Legal_Name_RS IS NULL BEGIN SELECT TOP 25  MJW_Series_ID, SHRTNAME, MJW_Series_Description, MJW_Series_Legal_Name, NOTEINDX, DEX_ROW_ID FROM .B0510020 WHERE ( MJW_Series_Legal_Name = @MJW_Series_Legal_Name AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Series_Legal_Name > @MJW_Series_Legal_Name ) ORDER BY MJW_Series_Legal_Name ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Series_Legal_Name_RS = @MJW_Series_Legal_Name_RE BEGIN SELECT TOP 25  MJW_Series_ID, SHRTNAME, MJW_Series_Description, MJW_Series_Legal_Name, NOTEINDX, DEX_ROW_ID FROM .B0510020 WHERE MJW_Series_Legal_Name = @MJW_Series_Legal_Name_RS AND ( MJW_Series_Legal_Name = @MJW_Series_Legal_Name AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Series_Legal_Name > @MJW_Series_Legal_Name ) ORDER BY MJW_Series_Legal_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Series_ID, SHRTNAME, MJW_Series_Description, MJW_Series_Legal_Name, NOTEINDX, DEX_ROW_ID FROM .B0510020 WHERE MJW_Series_Legal_Name BETWEEN @MJW_Series_Legal_Name_RS AND @MJW_Series_Legal_Name_RE AND ( MJW_Series_Legal_Name = @MJW_Series_Legal_Name AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Series_Legal_Name > @MJW_Series_Legal_Name ) ORDER BY MJW_Series_Legal_Name ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510020N_4] TO [DYNGRP]
GO
