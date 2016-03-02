SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20010L_1] (@TemplateID_RS int, @TemplatePartID_RS smallint, @TemplateID_RE int, @TemplatePartID_RE smallint) AS  set nocount on IF @TemplateID_RS IS NULL BEGIN SELECT TOP 25  TemplateID, TemplatePartID, DEX_ROW_ID, TemplatePartXML FROM .SY20010 ORDER BY TemplateID DESC, TemplatePartID DESC END ELSE IF @TemplateID_RS = @TemplateID_RE BEGIN SELECT TOP 25  TemplateID, TemplatePartID, DEX_ROW_ID, TemplatePartXML FROM .SY20010 WHERE TemplateID = @TemplateID_RS AND TemplatePartID BETWEEN @TemplatePartID_RS AND @TemplatePartID_RE ORDER BY TemplateID DESC, TemplatePartID DESC END ELSE BEGIN SELECT TOP 25  TemplateID, TemplatePartID, DEX_ROW_ID, TemplatePartXML FROM .SY20010 WHERE TemplateID BETWEEN @TemplateID_RS AND @TemplateID_RE AND TemplatePartID BETWEEN @TemplatePartID_RS AND @TemplatePartID_RE ORDER BY TemplateID DESC, TemplatePartID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20010L_1] TO [DYNGRP]
GO
