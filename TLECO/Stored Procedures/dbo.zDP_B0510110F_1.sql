SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510110F_1] (@MJW_Property_ID_RS char(21), @MJW_Property_ID_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Property_ID_RS IS NULL BEGIN SELECT TOP 25  MJW_Property_ID, MJW_Property_Name, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0510110 ORDER BY MJW_Property_ID ASC END ELSE IF @MJW_Property_ID_RS = @MJW_Property_ID_RE BEGIN SELECT TOP 25  MJW_Property_ID, MJW_Property_Name, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0510110 WHERE MJW_Property_ID = @MJW_Property_ID_RS ORDER BY MJW_Property_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Property_ID, MJW_Property_Name, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0510110 WHERE MJW_Property_ID BETWEEN @MJW_Property_ID_RS AND @MJW_Property_ID_RE ORDER BY MJW_Property_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510110F_1] TO [DYNGRP]
GO
