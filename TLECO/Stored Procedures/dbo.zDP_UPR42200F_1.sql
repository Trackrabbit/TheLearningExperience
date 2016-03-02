SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42200F_1] (@Time_on_Behalf_Code_RS char(15), @Time_on_Behalf_Code_RE char(15)) AS  set nocount on IF @Time_on_Behalf_Code_RS IS NULL BEGIN SELECT TOP 25  Time_on_Behalf_Code, DSCRIPTN, INACTIVE, Admin_Code, DEX_ROW_ID FROM .UPR42200 ORDER BY Time_on_Behalf_Code ASC END ELSE IF @Time_on_Behalf_Code_RS = @Time_on_Behalf_Code_RE BEGIN SELECT TOP 25  Time_on_Behalf_Code, DSCRIPTN, INACTIVE, Admin_Code, DEX_ROW_ID FROM .UPR42200 WHERE Time_on_Behalf_Code = @Time_on_Behalf_Code_RS ORDER BY Time_on_Behalf_Code ASC END ELSE BEGIN SELECT TOP 25  Time_on_Behalf_Code, DSCRIPTN, INACTIVE, Admin_Code, DEX_ROW_ID FROM .UPR42200 WHERE Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE ORDER BY Time_on_Behalf_Code ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42200F_1] TO [DYNGRP]
GO
