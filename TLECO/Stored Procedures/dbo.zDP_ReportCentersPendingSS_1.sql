SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCentersPendingSS_1] (@Identity_Column int, @BPReport_Center char(31)) AS  set nocount on SELECT TOP 1  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE Identity_Column = @Identity_Column AND BPReport_Center = @BPReport_Center ORDER BY Identity_Column ASC, BPReport_Center ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCentersPendingSS_1] TO [DYNGRP]
GO
