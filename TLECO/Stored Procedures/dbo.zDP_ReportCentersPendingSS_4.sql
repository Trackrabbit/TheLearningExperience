SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCentersPendingSS_4] (@RPTGRIND smallint, @PRODID smallint, @Business_Desk_Report_Nam char(51), @Report_Option char(51)) AS  set nocount on SELECT TOP 1  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE RPTGRIND = @RPTGRIND AND PRODID = @PRODID AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option = @Report_Option ORDER BY RPTGRIND ASC, PRODID ASC, Business_Desk_Report_Nam ASC, Report_Option ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCentersPendingSS_4] TO [DYNGRP]
GO
