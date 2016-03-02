SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB50100L_1] (@Excel_Report_Role_RS char(51), @Excel_Report_Role_RE char(51)) AS set nocount on IF @Excel_Report_Role_RS IS NULL BEGIN SELECT TOP 25  Excel_Report_Role, Excel_Report_Permission, DEX_ROW_ID FROM .ERB50100 ORDER BY Excel_Report_Role DESC END ELSE IF @Excel_Report_Role_RS = @Excel_Report_Role_RE BEGIN SELECT TOP 25  Excel_Report_Role, Excel_Report_Permission, DEX_ROW_ID FROM .ERB50100 WHERE Excel_Report_Role = @Excel_Report_Role_RS ORDER BY Excel_Report_Role DESC END ELSE BEGIN SELECT TOP 25  Excel_Report_Role, Excel_Report_Permission, DEX_ROW_ID FROM .ERB50100 WHERE Excel_Report_Role BETWEEN @Excel_Report_Role_RS AND @Excel_Report_Role_RE ORDER BY Excel_Report_Role DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB50100L_1] TO [DYNGRP]
GO
