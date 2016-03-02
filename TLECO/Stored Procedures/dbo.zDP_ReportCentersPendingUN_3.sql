SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCentersPendingUN_3] (@BS int, @Identity_Column int, @Identity_Column_RS int, @Identity_Column_RE int) AS  set nocount on IF @Identity_Column_RS IS NULL BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE ( Identity_Column > @Identity_Column ) ORDER BY Identity_Column ASC, DEX_ROW_ID ASC END ELSE IF @Identity_Column_RS = @Identity_Column_RE BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE Identity_Column = @Identity_Column_RS AND ( Identity_Column > @Identity_Column ) ORDER BY Identity_Column ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE Identity_Column BETWEEN @Identity_Column_RS AND @Identity_Column_RE AND ( Identity_Column > @Identity_Column ) ORDER BY Identity_Column ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCentersPendingUN_3] TO [DYNGRP]
GO
