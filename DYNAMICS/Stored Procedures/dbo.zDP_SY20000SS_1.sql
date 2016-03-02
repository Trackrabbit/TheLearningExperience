SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20000SS_1] (@TemplateID int) AS  set nocount on SELECT TOP 1  TemplateID, DSPLNAME, fileName, PredefinedTemplateID, EntityDriven, PRODID, RESID, ReportStatus, Report_Series_DictID, ReportSeries_ID, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .SY20000 WHERE TemplateID = @TemplateID ORDER BY TemplateID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20000SS_1] TO [DYNGRP]
GO
