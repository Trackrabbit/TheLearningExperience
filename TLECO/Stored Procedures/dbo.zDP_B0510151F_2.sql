SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510151F_2] (@MJW_Distribution_Type_De_RS char(51), @MJW_Distribution_Type_RS char(21), @MJW_Distribution_Type_De_RE char(51), @MJW_Distribution_Type_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Distribution_Type_De_RS IS NULL BEGIN SELECT TOP 25  IMS_Type_of_Distribution, MJW_Distribution_Type, MJW_Distribution_Type_De, BSSI_AP_Account_Index, NOTEINDX, DEX_ROW_ID FROM .B0510151 ORDER BY MJW_Distribution_Type_De ASC, MJW_Distribution_Type ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Distribution_Type_De_RS = @MJW_Distribution_Type_De_RE BEGIN SELECT TOP 25  IMS_Type_of_Distribution, MJW_Distribution_Type, MJW_Distribution_Type_De, BSSI_AP_Account_Index, NOTEINDX, DEX_ROW_ID FROM .B0510151 WHERE MJW_Distribution_Type_De = @MJW_Distribution_Type_De_RS AND MJW_Distribution_Type BETWEEN @MJW_Distribution_Type_RS AND @MJW_Distribution_Type_RE ORDER BY MJW_Distribution_Type_De ASC, MJW_Distribution_Type ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  IMS_Type_of_Distribution, MJW_Distribution_Type, MJW_Distribution_Type_De, BSSI_AP_Account_Index, NOTEINDX, DEX_ROW_ID FROM .B0510151 WHERE MJW_Distribution_Type_De BETWEEN @MJW_Distribution_Type_De_RS AND @MJW_Distribution_Type_De_RE AND MJW_Distribution_Type BETWEEN @MJW_Distribution_Type_RS AND @MJW_Distribution_Type_RE ORDER BY MJW_Distribution_Type_De ASC, MJW_Distribution_Type ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510151F_2] TO [DYNGRP]
GO
