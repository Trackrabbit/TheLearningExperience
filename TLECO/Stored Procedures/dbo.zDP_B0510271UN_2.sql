SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510271UN_2] (@BS int, @MJW_Keys_Lock tinyint, @MJW_Keys_Lock_RS tinyint, @MJW_Keys_Lock_RE tinyint) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Keys_Lock_RS IS NULL BEGIN SELECT TOP 25  MJW_Key, MJW_Keys_Lock, DEX_ROW_ID FROM .B0510271 WHERE ( MJW_Keys_Lock > @MJW_Keys_Lock ) ORDER BY MJW_Keys_Lock ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Keys_Lock_RS = @MJW_Keys_Lock_RE BEGIN SELECT TOP 25  MJW_Key, MJW_Keys_Lock, DEX_ROW_ID FROM .B0510271 WHERE MJW_Keys_Lock = @MJW_Keys_Lock_RS AND ( MJW_Keys_Lock > @MJW_Keys_Lock ) ORDER BY MJW_Keys_Lock ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Key, MJW_Keys_Lock, DEX_ROW_ID FROM .B0510271 WHERE MJW_Keys_Lock BETWEEN @MJW_Keys_Lock_RS AND @MJW_Keys_Lock_RE AND ( MJW_Keys_Lock > @MJW_Keys_Lock ) ORDER BY MJW_Keys_Lock ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510271UN_2] TO [DYNGRP]
GO
