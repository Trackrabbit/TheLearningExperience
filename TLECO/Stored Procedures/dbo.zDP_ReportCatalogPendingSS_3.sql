SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCatalogPendingSS_3] (@PRODNAME char(31), @RPTGRIND smallint, @Business_Desk_Report_Nam char(51), @Report_Option char(51)) AS  set nocount on SELECT TOP 1  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE PRODNAME = @PRODNAME AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option = @Report_Option ORDER BY PRODNAME ASC, RPTGRIND ASC, Business_Desk_Report_Nam ASC, Report_Option ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCatalogPendingSS_3] TO [DYNGRP]
GO
