SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCentersSS_1] (@PRODNAME char(31), @Business_Desk_Report_Nam char(51), @Report_Option char(51), @BPReport_Center char(31)) AS  set nocount on SELECT TOP 1  Business_Desk_Report_Nam, Report_Option, PRODNAME, BPReport_Center, MKTOPROC, DEX_ROW_ID FROM .ReportCenters WHERE PRODNAME = @PRODNAME AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option = @Report_Option AND BPReport_Center = @BPReport_Center ORDER BY PRODNAME ASC, Business_Desk_Report_Nam ASC, Report_Option ASC, BPReport_Center ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCentersSS_1] TO [DYNGRP]
GO
