SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510105F_1] (@MJW_Investor_Group_ID_RS char(41), @MJW_Investor_Group_ID_RE char(41)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Investor_Group_ID_RS IS NULL BEGIN SELECT TOP 25  MJW_Investor_Group_ID, MJW_Investor_Group_Name, MJW_Investor_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B0510105 ORDER BY MJW_Investor_Group_ID ASC END ELSE IF @MJW_Investor_Group_ID_RS = @MJW_Investor_Group_ID_RE BEGIN SELECT TOP 25  MJW_Investor_Group_ID, MJW_Investor_Group_Name, MJW_Investor_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B0510105 WHERE MJW_Investor_Group_ID = @MJW_Investor_Group_ID_RS ORDER BY MJW_Investor_Group_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Investor_Group_ID, MJW_Investor_Group_Name, MJW_Investor_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B0510105 WHERE MJW_Investor_Group_ID BETWEEN @MJW_Investor_Group_ID_RS AND @MJW_Investor_Group_ID_RE ORDER BY MJW_Investor_Group_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510105F_1] TO [DYNGRP]
GO
