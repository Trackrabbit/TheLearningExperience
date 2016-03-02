SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCatalogPendingSS_2] (@MKDTOPST tinyint) AS  set nocount on SELECT TOP 1  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE MKDTOPST = @MKDTOPST ORDER BY MKDTOPST ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCatalogPendingSS_2] TO [DYNGRP]
GO
