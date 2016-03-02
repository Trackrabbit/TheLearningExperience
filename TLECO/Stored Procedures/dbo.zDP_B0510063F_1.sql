SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510063F_1] (@MJW_Transfer_Number_RS char(21), @MJW_Investment_Number_RS char(21), @MJW_Transfer_Number_RE char(21), @MJW_Investment_Number_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Transfer_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Transfer_Number, MJW_Investment_Number, MJW_Units_Transfered, MJW_Investment_Transfer, MJW_Transfer_Price, DEX_ROW_ID FROM .B0510063 ORDER BY MJW_Transfer_Number ASC, MJW_Investment_Number ASC END ELSE IF @MJW_Transfer_Number_RS = @MJW_Transfer_Number_RE BEGIN SELECT TOP 25  MJW_Transfer_Number, MJW_Investment_Number, MJW_Units_Transfered, MJW_Investment_Transfer, MJW_Transfer_Price, DEX_ROW_ID FROM .B0510063 WHERE MJW_Transfer_Number = @MJW_Transfer_Number_RS AND MJW_Investment_Number BETWEEN @MJW_Investment_Number_RS AND @MJW_Investment_Number_RE ORDER BY MJW_Transfer_Number ASC, MJW_Investment_Number ASC END ELSE BEGIN SELECT TOP 25  MJW_Transfer_Number, MJW_Investment_Number, MJW_Units_Transfered, MJW_Investment_Transfer, MJW_Transfer_Price, DEX_ROW_ID FROM .B0510063 WHERE MJW_Transfer_Number BETWEEN @MJW_Transfer_Number_RS AND @MJW_Transfer_Number_RE AND MJW_Investment_Number BETWEEN @MJW_Investment_Number_RS AND @MJW_Investment_Number_RE ORDER BY MJW_Transfer_Number ASC, MJW_Investment_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510063F_1] TO [DYNGRP]
GO
