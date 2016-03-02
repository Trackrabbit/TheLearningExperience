SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20000L_1] (@TemplateID_RS int, @TemplateID_RE int) AS  set nocount on IF @TemplateID_RS IS NULL BEGIN SELECT TOP 25  TemplateID, DSPLNAME, fileName, PredefinedTemplateID, EntityDriven, PRODID, RESID, ReportStatus, Report_Series_DictID, ReportSeries_ID, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .SY20000 ORDER BY TemplateID DESC END ELSE IF @TemplateID_RS = @TemplateID_RE BEGIN SELECT TOP 25  TemplateID, DSPLNAME, fileName, PredefinedTemplateID, EntityDriven, PRODID, RESID, ReportStatus, Report_Series_DictID, ReportSeries_ID, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .SY20000 WHERE TemplateID = @TemplateID_RS ORDER BY TemplateID DESC END ELSE BEGIN SELECT TOP 25  TemplateID, DSPLNAME, fileName, PredefinedTemplateID, EntityDriven, PRODID, RESID, ReportStatus, Report_Series_DictID, ReportSeries_ID, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .SY20000 WHERE TemplateID BETWEEN @TemplateID_RS AND @TemplateID_RE ORDER BY TemplateID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20000L_1] TO [DYNGRP]
GO
