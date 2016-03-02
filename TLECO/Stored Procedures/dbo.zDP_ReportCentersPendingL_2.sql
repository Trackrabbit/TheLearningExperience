SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCentersPendingL_2] (@BPReport_Center_RS char(31), @BPReport_Center_RE char(31)) AS  set nocount on IF @BPReport_Center_RS IS NULL BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending ORDER BY BPReport_Center DESC, DEX_ROW_ID DESC END ELSE IF @BPReport_Center_RS = @BPReport_Center_RE BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE BPReport_Center = @BPReport_Center_RS ORDER BY BPReport_Center DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE BPReport_Center BETWEEN @BPReport_Center_RS AND @BPReport_Center_RE ORDER BY BPReport_Center DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCentersPendingL_2] TO [DYNGRP]
GO
