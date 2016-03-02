SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCatalogPendingSS_5] (@DEX_ROW_ID int) AS  set nocount on SELECT TOP 1  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCatalogPendingSS_5] TO [DYNGRP]
GO
