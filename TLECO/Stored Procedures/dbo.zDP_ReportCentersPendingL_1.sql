SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCentersPendingL_1] (@Identity_Column_RS int, @BPReport_Center_RS char(31), @Identity_Column_RE int, @BPReport_Center_RE char(31)) AS  set nocount on IF @Identity_Column_RS IS NULL BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending ORDER BY Identity_Column DESC, BPReport_Center DESC, DEX_ROW_ID DESC END ELSE IF @Identity_Column_RS = @Identity_Column_RE BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE Identity_Column = @Identity_Column_RS AND BPReport_Center BETWEEN @BPReport_Center_RS AND @BPReport_Center_RE ORDER BY Identity_Column DESC, BPReport_Center DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE Identity_Column BETWEEN @Identity_Column_RS AND @Identity_Column_RE AND BPReport_Center BETWEEN @BPReport_Center_RS AND @BPReport_Center_RE ORDER BY Identity_Column DESC, BPReport_Center DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCentersPendingL_1] TO [DYNGRP]
GO
