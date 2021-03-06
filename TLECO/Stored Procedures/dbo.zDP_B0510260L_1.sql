SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510260L_1] (@MJW_Key_RS char(21), @MJW_Key_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Key_RS IS NULL BEGIN SELECT TOP 25  MJW_Key, MJW_Keys_Lock, DEX_ROW_ID FROM .B0510260 ORDER BY MJW_Key DESC END ELSE IF @MJW_Key_RS = @MJW_Key_RE BEGIN SELECT TOP 25  MJW_Key, MJW_Keys_Lock, DEX_ROW_ID FROM .B0510260 WHERE MJW_Key = @MJW_Key_RS ORDER BY MJW_Key DESC END ELSE BEGIN SELECT TOP 25  MJW_Key, MJW_Keys_Lock, DEX_ROW_ID FROM .B0510260 WHERE MJW_Key BETWEEN @MJW_Key_RS AND @MJW_Key_RE ORDER BY MJW_Key DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510260L_1] TO [DYNGRP]
GO
