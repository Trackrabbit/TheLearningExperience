SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCatalogPendingN_4] (@BS int, @ListviewIndex int, @DEX_ROW_ID int, @ListviewIndex_RS int, @ListviewIndex_RE int) AS  set nocount on IF @ListviewIndex_RS IS NULL BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE ( ListviewIndex = @ListviewIndex AND DEX_ROW_ID > @DEX_ROW_ID OR ListviewIndex > @ListviewIndex ) ORDER BY ListviewIndex ASC, DEX_ROW_ID ASC END ELSE IF @ListviewIndex_RS = @ListviewIndex_RE BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE ListviewIndex = @ListviewIndex_RS AND ( ListviewIndex = @ListviewIndex AND DEX_ROW_ID > @DEX_ROW_ID OR ListviewIndex > @ListviewIndex ) ORDER BY ListviewIndex ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE ListviewIndex BETWEEN @ListviewIndex_RS AND @ListviewIndex_RE AND ( ListviewIndex = @ListviewIndex AND DEX_ROW_ID > @DEX_ROW_ID OR ListviewIndex > @ListviewIndex ) ORDER BY ListviewIndex ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCatalogPendingN_4] TO [DYNGRP]
GO
