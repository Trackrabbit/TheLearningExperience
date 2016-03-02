SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCatalogPendingL_2] (@MKDTOPST_RS tinyint, @MKDTOPST_RE tinyint) AS  set nocount on IF @MKDTOPST_RS IS NULL BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending ORDER BY MKDTOPST DESC, DEX_ROW_ID DESC END ELSE IF @MKDTOPST_RS = @MKDTOPST_RE BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE MKDTOPST = @MKDTOPST_RS ORDER BY MKDTOPST DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE ORDER BY MKDTOPST DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCatalogPendingL_2] TO [DYNGRP]
GO
