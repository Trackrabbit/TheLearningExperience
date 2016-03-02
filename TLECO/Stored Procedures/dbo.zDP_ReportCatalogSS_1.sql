SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCatalogSS_1] (@PRODNAME char(31), @Business_Desk_Report_Nam char(51), @Report_Option char(51), @Last_Date_Published datetime, @Last_Time_Published datetime) AS  set nocount on SELECT TOP 1  PRODNAME, Business_Desk_Report_Nam, Report_Option, Business_Desk_Report_Typ, Report_URL, Last_Date_Published, Last_Time_Published, Report_Series, Reviewed, DEX_ROW_ID FROM .ReportCatalog WHERE PRODNAME = @PRODNAME AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option = @Report_Option AND Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published ORDER BY PRODNAME ASC, Business_Desk_Report_Nam ASC, Report_Option ASC, Last_Date_Published ASC, Last_Time_Published ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCatalogSS_1] TO [DYNGRP]
GO
