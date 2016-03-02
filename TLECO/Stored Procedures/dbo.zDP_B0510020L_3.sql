SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510020L_3] (@MJW_Series_Description_RS char(51), @MJW_Series_Description_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Series_Description_RS IS NULL BEGIN SELECT TOP 25  MJW_Series_ID, SHRTNAME, MJW_Series_Description, MJW_Series_Legal_Name, NOTEINDX, DEX_ROW_ID FROM .B0510020 ORDER BY MJW_Series_Description DESC, DEX_ROW_ID DESC END ELSE IF @MJW_Series_Description_RS = @MJW_Series_Description_RE BEGIN SELECT TOP 25  MJW_Series_ID, SHRTNAME, MJW_Series_Description, MJW_Series_Legal_Name, NOTEINDX, DEX_ROW_ID FROM .B0510020 WHERE MJW_Series_Description = @MJW_Series_Description_RS ORDER BY MJW_Series_Description DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  MJW_Series_ID, SHRTNAME, MJW_Series_Description, MJW_Series_Legal_Name, NOTEINDX, DEX_ROW_ID FROM .B0510020 WHERE MJW_Series_Description BETWEEN @MJW_Series_Description_RS AND @MJW_Series_Description_RE ORDER BY MJW_Series_Description DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510020L_3] TO [DYNGRP]
GO
