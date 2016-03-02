SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20000SS_2] (@PRODID smallint, @RESID smallint, @ReportStatus smallint, @DSPLNAME char(81)) AS  set nocount on SELECT TOP 1  TemplateID, DSPLNAME, fileName, PredefinedTemplateID, EntityDriven, PRODID, RESID, ReportStatus, Report_Series_DictID, ReportSeries_ID, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .SY20000 WHERE PRODID = @PRODID AND RESID = @RESID AND ReportStatus = @ReportStatus AND DSPLNAME = @DSPLNAME ORDER BY PRODID ASC, RESID ASC, ReportStatus ASC, DSPLNAME ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20000SS_2] TO [DYNGRP]
GO
