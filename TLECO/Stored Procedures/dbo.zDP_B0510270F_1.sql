SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510270F_1] (@MJW_Key_RS char(21), @MJW_Key_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Key_RS IS NULL BEGIN SELECT TOP 25  MJW_Key, MJW_Keys_Lock, DEX_ROW_ID FROM .B0510270 ORDER BY MJW_Key ASC END ELSE IF @MJW_Key_RS = @MJW_Key_RE BEGIN SELECT TOP 25  MJW_Key, MJW_Keys_Lock, DEX_ROW_ID FROM .B0510270 WHERE MJW_Key = @MJW_Key_RS ORDER BY MJW_Key ASC END ELSE BEGIN SELECT TOP 25  MJW_Key, MJW_Keys_Lock, DEX_ROW_ID FROM .B0510270 WHERE MJW_Key BETWEEN @MJW_Key_RS AND @MJW_Key_RE ORDER BY MJW_Key ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510270F_1] TO [DYNGRP]
GO
