SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCentersPendingSS_5] (@DEX_ROW_ID int) AS  set nocount on SELECT TOP 1  Identity_Column, BPReport_Center, MKTOPROC, RPTGRIND, PRODID, Business_Desk_Report_Nam, Report_Option, UserIDTime, DEX_ROW_ID FROM .ReportCentersPending WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCentersPendingSS_5] TO [DYNGRP]
GO
