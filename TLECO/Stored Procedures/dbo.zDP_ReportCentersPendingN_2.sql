SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCentersPendingN_2] (@BS int, @BPReport_Center char(31), @DEX_ROW_ID int, @BPReport_Center_RS char(31), @BPReport_Center_RE char(31)) AS  set nocount on IF @BPReport_Center_RS IS NULL BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE ( BPReport_Center = @BPReport_Center AND DEX_ROW_ID > @DEX_ROW_ID OR BPReport_Center > @BPReport_Center ) ORDER BY BPReport_Center ASC, DEX_ROW_ID ASC END ELSE IF @BPReport_Center_RS = @BPReport_Center_RE BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE BPReport_Center = @BPReport_Center_RS AND ( BPReport_Center = @BPReport_Center AND DEX_ROW_ID > @DEX_ROW_ID OR BPReport_Center > @BPReport_Center ) ORDER BY BPReport_Center ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE BPReport_Center BETWEEN @BPReport_Center_RS AND @BPReport_Center_RE AND ( BPReport_Center = @BPReport_Center AND DEX_ROW_ID > @DEX_ROW_ID OR BPReport_Center > @BPReport_Center ) ORDER BY BPReport_Center ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCentersPendingN_2] TO [DYNGRP]
GO
