SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20000SI] (@TemplateID int, @DSPLNAME char(81), @fileName char(255), @PredefinedTemplateID int, @EntityDriven tinyint, @PRODID smallint, @RESID smallint, @ReportStatus smallint, @Report_Series_DictID smallint, @ReportSeries_ID smallint, @MODIFDT datetime, @MDFUSRID char(15), @CREATDDT datetime, @CRUSRID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY20000 (TemplateID, DSPLNAME, fileName, PredefinedTemplateID, EntityDriven, PRODID, RESID, ReportStatus, Report_Series_DictID, ReportSeries_ID, MODIFDT, MDFUSRID, CREATDDT, CRUSRID) VALUES ( @TemplateID, @DSPLNAME, @fileName, @PredefinedTemplateID, @EntityDriven, @PRODID, @RESID, @ReportStatus, @Report_Series_DictID, @ReportSeries_ID, @MODIFDT, @MDFUSRID, @CREATDDT, @CRUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20000SI] TO [DYNGRP]
GO
