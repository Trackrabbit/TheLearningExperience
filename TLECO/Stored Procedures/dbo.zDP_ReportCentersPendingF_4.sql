SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCentersPendingF_4] (@RPTGRIND_RS smallint, @PRODID_RS smallint, @Business_Desk_Report_Nam_RS char(51), @Report_Option_RS char(51), @RPTGRIND_RE smallint, @PRODID_RE smallint, @Business_Desk_Report_Nam_RE char(51), @Report_Option_RE char(51)) AS  set nocount on IF @RPTGRIND_RS IS NULL BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending ORDER BY RPTGRIND ASC, PRODID ASC, Business_Desk_Report_Nam ASC, Report_Option ASC, DEX_ROW_ID ASC END ELSE IF @RPTGRIND_RS = @RPTGRIND_RE BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE RPTGRIND = @RPTGRIND_RS AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Business_Desk_Report_Nam BETWEEN @Business_Desk_Report_Nam_RS AND @Business_Desk_Report_Nam_RE AND Report_Option BETWEEN @Report_Option_RS AND @Report_Option_RE ORDER BY RPTGRIND ASC, PRODID ASC, Business_Desk_Report_Nam ASC, Report_Option ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Business_Desk_Report_Nam BETWEEN @Business_Desk_Report_Nam_RS AND @Business_Desk_Report_Nam_RE AND Report_Option BETWEEN @Report_Option_RS AND @Report_Option_RE ORDER BY RPTGRIND ASC, PRODID ASC, Business_Desk_Report_Nam ASC, Report_Option ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCentersPendingF_4] TO [DYNGRP]
GO