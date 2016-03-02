SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20010SS_1] (@TemplateID int, @TemplatePartID smallint) AS  set nocount on SELECT TOP 1  TemplateID, TemplatePartID, DEX_ROW_ID, TemplatePartXML FROM .SY20010 WHERE TemplateID = @TemplateID AND TemplatePartID = @TemplatePartID ORDER BY TemplateID ASC, TemplatePartID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20010SS_1] TO [DYNGRP]
GO
