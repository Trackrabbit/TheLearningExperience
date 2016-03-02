SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportNamesF_1] (@Business_Desk_Report_Nam_RS char(51), @RPTGRIND_RS smallint, @PRODID_RS smallint, @Business_Desk_Report_Nam_RE char(51), @RPTGRIND_RE smallint, @PRODID_RE smallint) AS  set nocount on IF @Business_Desk_Report_Nam_RS IS NULL BEGIN SELECT TOP 25  PRODID, Business_Desk_Report_Nam, RPTGRIND, RTPACHIN, RTGRSBIN, DEX_ROW_ID FROM .ReportNames ORDER BY Business_Desk_Report_Nam ASC, RPTGRIND ASC, PRODID ASC, DEX_ROW_ID ASC END ELSE IF @Business_Desk_Report_Nam_RS = @Business_Desk_Report_Nam_RE BEGIN SELECT TOP 25  PRODID, Business_Desk_Report_Nam, RPTGRIND, RTPACHIN, RTGRSBIN, DEX_ROW_ID FROM .ReportNames WHERE Business_Desk_Report_Nam = @Business_Desk_Report_Nam_RS AND RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE ORDER BY Business_Desk_Report_Nam ASC, RPTGRIND ASC, PRODID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRODID, Business_Desk_Report_Nam, RPTGRIND, RTPACHIN, RTGRSBIN, DEX_ROW_ID FROM .ReportNames WHERE Business_Desk_Report_Nam BETWEEN @Business_Desk_Report_Nam_RS AND @Business_Desk_Report_Nam_RE AND RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE ORDER BY Business_Desk_Report_Nam ASC, RPTGRIND ASC, PRODID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportNamesF_1] TO [DYNGRP]
GO
