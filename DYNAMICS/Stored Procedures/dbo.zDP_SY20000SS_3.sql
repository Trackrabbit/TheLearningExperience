SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20000SS_3] (@Report_Series_DictID smallint, @ReportSeries_ID smallint, @DSPLNAME char(81), @TemplateID int) AS  set nocount on SELECT TOP 1  TemplateID, DSPLNAME, fileName, PredefinedTemplateID, EntityDriven, PRODID, RESID, ReportStatus, Report_Series_DictID, ReportSeries_ID, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .SY20000 WHERE Report_Series_DictID = @Report_Series_DictID AND ReportSeries_ID = @ReportSeries_ID AND DSPLNAME = @DSPLNAME AND TemplateID = @TemplateID ORDER BY Report_Series_DictID ASC, ReportSeries_ID ASC, DSPLNAME ASC, TemplateID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20000SS_3] TO [DYNGRP]
GO
