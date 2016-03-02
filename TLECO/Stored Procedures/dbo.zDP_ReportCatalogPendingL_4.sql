SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCatalogPendingL_4] (@ListviewIndex_RS int, @ListviewIndex_RE int) AS  set nocount on IF @ListviewIndex_RS IS NULL BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending ORDER BY ListviewIndex DESC, DEX_ROW_ID DESC END ELSE IF @ListviewIndex_RS = @ListviewIndex_RE BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE ListviewIndex = @ListviewIndex_RS ORDER BY ListviewIndex DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE ListviewIndex BETWEEN @ListviewIndex_RS AND @ListviewIndex_RE ORDER BY ListviewIndex DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCatalogPendingL_4] TO [DYNGRP]
GO
