SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510020L_1] (@MJW_Series_ID_RS char(21), @MJW_Series_ID_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Series_ID_RS IS NULL BEGIN SELECT TOP 25  MJW_Series_ID, SHRTNAME, MJW_Series_Description, MJW_Series_Legal_Name, NOTEINDX, DEX_ROW_ID FROM .B0510020 ORDER BY MJW_Series_ID DESC END ELSE IF @MJW_Series_ID_RS = @MJW_Series_ID_RE BEGIN SELECT TOP 25  MJW_Series_ID, SHRTNAME, MJW_Series_Description, MJW_Series_Legal_Name, NOTEINDX, DEX_ROW_ID FROM .B0510020 WHERE MJW_Series_ID = @MJW_Series_ID_RS ORDER BY MJW_Series_ID DESC END ELSE BEGIN SELECT TOP 25  MJW_Series_ID, SHRTNAME, MJW_Series_Description, MJW_Series_Legal_Name, NOTEINDX, DEX_ROW_ID FROM .B0510020 WHERE MJW_Series_ID BETWEEN @MJW_Series_ID_RS AND @MJW_Series_ID_RE ORDER BY MJW_Series_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510020L_1] TO [DYNGRP]
GO
